package project.suhbuway.service.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.suhbuway.dao.product.ProductDAO;
import project.suhbuway.dto.Product;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
    ProductDAO productDAO;
	
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

}
