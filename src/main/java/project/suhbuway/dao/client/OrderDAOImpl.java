package project.suhbuway.dao.client;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.suhbuway.dto.OrderList;

@Repository
public class OrderDAOImpl implements OrderDAO {

    @Autowired
    SqlSession session;
    
    @Override
    public List<OrderList> selectOrderLists() {
	List<OrderList> list = session.selectList("orderMapper.selectOrderList");
	for(OrderList item: list)
	    System.out.println(item);
	return list;
    }
    
    @Override
    public int insertOrder(OrderList orderList) {

	return 0;
    }

    @Override
    public int updateOrderState(int orderId, char orderState) {
	return 0;
    }
}
