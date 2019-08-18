package project.suhbuway.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import project.suhbuway.dto.Product;
import project.suhbuway.service.client.HomeService;

/**
 * 일반적인 사이트 네비게이션 관련 매핑들은 이곳으로..
 */
@Controller
public class HomeController {

    @Autowired
    HomeService service;

    /**
     * 초기페이지로 이동합니다.
     */
    @RequestMapping("/")
    public String index() {
	return "index";
    }

    /**
     * Menu 리스트
     * 
     * @param category
     * @param request
     * @return
     */
    @RequestMapping("/menu/{category}")
    public String menu(@PathVariable String category, HttpServletRequest request) {
	List<Product> list = service.selectProductsByCategory(category);
	request.setAttribute("list", list);
	return "menu/menuList";
    }

    /**
     * 메뉴 세부 사항
     * 
     * @param id
     * @param request
     * @return
     */
    @RequestMapping("/menu/{category}/{id}")
    public String menuDetail(@PathVariable String id, HttpServletRequest request) {
	Product product = service.selectProductById(Integer.parseInt(id));
	request.setAttribute("product", product);
	return "menu/menuListView";
    }
    
    /**
     * 주문하기
     * 
     * @param request
     * @return
     */
    @RequestMapping("/order")
    public String order(HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "order/order";
    }
    
    /**
     * 뉴스ㆍ공지사항
     * 
     * @param request
     * @return
     */
    @RequestMapping("/board/newsList")
    public String newList(HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "board/newsList";
    }
    
    /**
     * 뉴스ㆍ공지사항 상세페이지
     * 
     * @param id
     * @param request
     * @return
     */
    @RequestMapping("/board/newsView/{id}")
    public String newsView(@PathVariable String id, HttpServletRequest request) {
//	Product product = service.selectProductById(Integer.parseInt(id));
//	request.setAttribute("product", product);
	return "board/newsView";
    }
    
    /**
     * 매장찾기
     * 
     * @param category
     * @param request
     * @return
     */
    @RequestMapping("/storeSearch")
    public String storeSearch(HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "storeSearch/storeSearch";
    }
    
    /**
     * 마이페이지
     * 
     * @param category
     * @param request
     * @return
     */
    @RequestMapping("/myPage/{category}")
    public String myPage(@PathVariable String category, HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "myPage/info";
    }


}
