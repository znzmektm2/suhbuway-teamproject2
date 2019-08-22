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
    
    /**
     * 샌드위치 or 샐러드 셀렉트박스 리스트 뿌리기
     * 
     * @param menu
     * @return
     */
    public List<String> selectMenuListByMenu(String menu);

    /** 
     * 메인 메뉴 및 가격 뿌리기
     * 
     * @param name
     * @param category
     * @return
     */
	public String selectMenuPrice(String name, String category);
	
	/** 
     * 전체검색(메뉴, 가격 ,카테고리)
     * 
     * @param name
     * @param category
     * @return
     */
	public List<Product> selectAll();
}
