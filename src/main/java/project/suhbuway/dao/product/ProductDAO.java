package project.suhbuway.dao.product;

import java.util.List;

import project.suhbuway.dto.Product;

public interface ProductDAO {

    /**
     * 해당되는 카테고리에 있는 메뉴 리스트와 정보를 반환한다.
     * 
     * @param category
     * @return
     */
    public List<Product> selectProductsByCategory(String category);

    /**
     * 해당되는 id의 메뉴 정보를 반환한다.
     * 
     * @param id
     * @return
     */
    public Product selectProductById(int id);
    
    /**
     * 해당되는 menu의 메뉴리스트를 반환한다.
     * 
     * @param id
     * @return
     */
    public List<String> selectMenuListByMenu(String menu);
}
