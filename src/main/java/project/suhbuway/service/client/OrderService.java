package project.suhbuway.service.client;

import java.util.List;

import project.suhbuway.dto.Product;

/**
 * 사이트 주문하기 과정에서 필요한 서비스
 * 
 * @author hkarling
 */
public interface OrderService {

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
     * 기타 메뉴 및 가격 뿌리기
     * 
     * @param name
     * @return
     */
	public String selectEtcPrice(String name);
    
}
