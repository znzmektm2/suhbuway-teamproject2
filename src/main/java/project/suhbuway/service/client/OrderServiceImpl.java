package project.suhbuway.service.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.suhbuway.dao.client.OrderDAO;
import project.suhbuway.dao.client.ProductDAO;
import project.suhbuway.dto.OrderList;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	ProductDAO productDAO;

	@Autowired
	OrderDAO orderDAO;

	@Override
	public List<OrderList> selectOrderList() {
		List<OrderList> list = orderDAO.selectOrderLists();
		return list;
	}
}
