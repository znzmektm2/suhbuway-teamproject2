package project.suhbuway.service.client;

import java.util.List;

import project.suhbuway.dto.Product;

/**
 * 사이트 네비게이션에 과정에서 필요한 서비스
 * 
 * @author hkarling
 */
public interface HomeService {

    /**
     * 카테고리로 상품 리스트 검색
     * 
     * @param type
     * @return
     */
    public List<Product> selectProductsByCategory(String category);
    
    /**
     * 아이디로 상품 검색
     * @param id
     * @return
     */
    public Product selectProductById(int id);
}
