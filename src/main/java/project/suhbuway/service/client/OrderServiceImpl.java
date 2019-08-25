package project.suhbuway.service.client;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import project.suhbuway.dao.client.OrderDAO;
import project.suhbuway.dao.client.ProductDAO;
import project.suhbuway.dao.client.StoreDAO;
import project.suhbuway.dto.OrderSetWrapper;
import project.suhbuway.dto.OrderItem;
import project.suhbuway.dto.OrderList;
import project.suhbuway.dto.OrderRetrieveWrapper;
import project.suhbuway.dto.Product;
import project.suhbuway.dto.Store;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	StoreDAO storeDAO;

	/**
	 * 매장 리스트 출력하기
	 */
	@Override
	public List<Store> selectStoreList() {
		List<Store> list = storeDAO.selectAllStore();
		return list;
	}
	
	/**
	 * 아이디를 통해 지난 주문리스트를 만들어 불러온다.
	 */
	@Override
	@Transactional
	public List<OrderList> selectOrderListByUser(String userId) {
		List<OrderList> list = orderDAO.selectOrderListsByUser("test1");		
		List<OrderRetrieveWrapper> orderLists = new ArrayList<OrderRetrieveWrapper>();
		for(OrderList item : list) {
			OrderRetrieveWrapper wrapper = new OrderRetrieveWrapper();
			List<Product> subMenu = new ArrayList<Product>();
			wrapper.setOrderId(item.getOrderId());
			wrapper.setStore(storeDAO.selectStoreByStoreId(item.getStoreId()));
			wrapper.setTotal(item.getTotal());
			wrapper.setOrderState(item.getOrderState());
			wrapper.setRegdate(item.getRegdate());
			
		}
		return list;
	}
	
	/**
	 * 주문을 DB로 넣는 작업
	 */
	@Override
	@Transactional
	public String insertOrder(OrderSetWrapper[] newOrders, Store store) {
		
		/* 주문 아이디를 만들기*/
		String orderId = new SimpleDateFormat("yyMMddhhmmssSSS").format(new Date());
		int lastItem = orderDAO.getLastItemId();
		
		List<OrderItem> list = new ArrayList<OrderItem>();
		
		/* orderList 생성 및 기본 데이터 입력 */
		OrderList orderList = new OrderList();
		orderList.setOrderId(orderId);
		orderList.setUserId("test1");
		orderList.setStoreId(store.getStoreId());

		int total = 0; // 주문 총계 계산용
		
		/* wrapper 에서 orderItem으로 전환하여 list에 저장 */
		for (OrderSetWrapper orders : newOrders) {
			System.out.println(orders);
			OrderItem main = new OrderItem();
			main.setItemId(++lastItem);
			main.setOrderId(orderId);
			main.setProductId(orders.getProduct().getProductId());
			main.setBreadType(orders.getBreadType());
			main.setVeggies(String.join(",", orders.getVeggies()));
			main.setSource(String.join(",", orders.getSource()));
			total += orders.getPrice();

			list.add(main);
			for (Product subItem : orders.getSubMenu()) {
				OrderItem sub = new OrderItem();
				sub.setItemId(++lastItem);
				sub.setOrderId(orderId);
				sub.setProductId(subItem.getProductId());
				sub.setAttach(main.getItemId());

				list.add(sub);
			}
		}
		orderList.setTotal(total);
		
		/* db에 저장하는 작업 */
		int result = orderDAO.insertOrder(orderList);
		
		for (OrderItem item : list) {
			result = orderDAO.insertItem(item);
		}
		
		/* 주문번호 반환 */
		return orderList.getOrderId();
	}
}
