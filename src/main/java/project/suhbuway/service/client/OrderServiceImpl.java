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
import project.suhbuway.dto.OrderInsertWrapper;
import project.suhbuway.dto.OrderItem;
import project.suhbuway.dto.OrderList;
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

	@Override
	public List<OrderList> selectOrderList() {
		List<OrderList> list = orderDAO.selectOrderLists();
		return list;
	}

	@Override
	public List<Store> selectStoreList() {
		List<Store> list = storeDAO.selectAllStore();
		return list;
	}

	@Override
	@Transactional
	public String insertOrder(OrderInsertWrapper[] newOrders, Store store) {
		String orderId = new SimpleDateFormat("yyMMddhhmmssSSS").format(new Date());
		int lastItem = orderDAO.getLastItemId();
		List<OrderItem> list = new ArrayList<OrderItem>();

		OrderList orderList = new OrderList();
		orderList.setOrderId(orderId);
		orderList.setUserId("test1");
		orderList.setStoreId(store.getStoreId());

		int total = 0; // 주문 총계 계산용
		for (OrderInsertWrapper orders : newOrders) {
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
		int result = orderDAO.insertOrder(orderList);
		
		for (OrderItem item : list) {
			result = orderDAO.insertItem(item);
		}

		return orderList.getOrderId();
	}
}
