package project.suhbuway.dao.product;

import java.util.List;

import project.suhbuway.dto.Product;

public interface ProductDAO {

    public List<Product> selectProductsByCategory(String category);
    public Product selectProductById(int id);
}
