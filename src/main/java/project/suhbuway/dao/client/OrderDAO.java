package project.suhbuway.dao.client;

import java.util.List;

import project.suhbuway.dto.OrderItem;
import project.suhbuway.dto.OrderList;

public interface OrderDAO {
    
    /**
     * 주문을 불러오기 위한 메소드
     * @return
     */
    public List<OrderList> selectOrderLists();
    
    /**
     * DB에 주문을 넣기위한 메소드
     */
    public int insertOrder(OrderList orderList);
    /**
     * DB에 주문을 넣기위한 메소드
     */
    public int insertItem(OrderItem orderItem);
    /**
     * 
     */
	public int getLastItemId();
}
