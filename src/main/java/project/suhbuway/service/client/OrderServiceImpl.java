package project.suhbuway.service.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.suhbuway.dao.client.OrderDAO;
import project.suhbuway.dao.client.ProductDAO;
import project.suhbuway.dto.OrderList;
import project.suhbuway.dto.Product;

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

    @Override
    public List<String> selectMenuListByMenu(String menu) {
	List<String> list = productDAO.selectMenuListByMenu(menu);
	return list;
    }

    @Override
    public String selectMenuPrice(String name, String category) {
	String price = productDAO.selectMenuPrice(name, category);
	return price;
    }

    @Override
    public String selectEtcPrice(String name) {
	String price = productDAO.selectEtcPrice(name);
	return price;
    }
}
