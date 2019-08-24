package project.suhbuway.service.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.suhbuway.dao.client.OrderDAO;
import project.suhbuway.dao.client.ProductDAO;
import project.suhbuway.dao.client.StoreDAO;
import project.suhbuway.dto.OrderList;
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
}
