package project.suhbuway.dao.client;

import java.util.List;

import project.suhbuway.dto.OrderList;

public interface OrderDAO {
    
    /**
     * 주문을 불러오기 위한 메소드
     * @return
     */
    public List<OrderList> selectOrderLists();
    
    /**
     * DB에 주문을 넣기위한 메소드
     * 
     * @param orderList
     * @return
     */
    public int insertOrder(OrderList orderList);
    
    /**
     * 주문 상태 변경을 위한 메소드
     * 
     * @param orderId
     * @param orderState
     * @return
     */
    public int updateOrderState(int orderId, char orderState);
}
