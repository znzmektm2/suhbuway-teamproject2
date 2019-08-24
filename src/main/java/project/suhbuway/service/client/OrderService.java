package project.suhbuway.service.client;

import java.util.List;

import project.suhbuway.dto.OrderList;

/**
 * 사이트 주문하기 과정에서 필요한 서비스
 * 
 * @author hkarling
 */
public interface OrderService {

	/**
	 * 주문내역을 불러온다.
	 * 
	 * @return
	 */
	public List<OrderList> selectOrderList();

}
