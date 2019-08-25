package project.suhbuway.service.client;

import java.util.List;

import project.suhbuway.dto.OrderList;
import project.suhbuway.dto.OrderInsertWrapper;
import project.suhbuway.dto.Store;

/**
 * 사이트 주문하기 과정에서 필요한 서비스
 * 
 * @author hkarling
 */
public interface OrderService {

	/**
	 * 주문내역을 불러온다.
	 */
	public List<OrderList> selectOrderList();
	
	/**
	 * 점포 정보를 불러온다. 
	 */
	public List<Store> selectStoreList();
	
	/**
	 * 주문을 저장한다.
	 */
	public String insertOrder(OrderInsertWrapper[] newOrders, Store store);

}
