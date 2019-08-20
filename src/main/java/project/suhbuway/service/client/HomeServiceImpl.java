package project.suhbuway.service.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.suhbuway.dao.client.ProductDAO;
import project.suhbuway.dto.Product;

@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
    ProductDAO productDAO;
    
    @Override
    public List<Product> selectProductsByCategory(String category) {
	List<Product> list = productDAO.selectProductsByCategory(category);
	
	return list;
    }

    @Override
    public Product selectProductById(int id) {
	Product product = productDAO.selectProductById(id);
	return product;
    }
}
