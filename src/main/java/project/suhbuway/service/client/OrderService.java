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
     * 상품 리스트 검색
     * 
     * @param type
     * @return
     */
    public List<String> selectMenuListByMenu(String menu);
    
}
