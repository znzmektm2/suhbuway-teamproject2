package project.suhbuway.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
     * 마이페이지 주문내역
     * 
     * @param request
     * @return
     */
    @RequestMapping("/myPage/orders")
    public String orders(HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "myPage/orders";
    }

    /**
     * 마이페이지 장바구니
     * 
     * @param request
     * @return
     */
    @RequestMapping("/myPage/cart")
    public String cart(HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "myPage/cart";
    }

    /**
     * 마이페이지 문의사항
     * 
     * @param request
     * @return
     */
    @RequestMapping("/myPage/qna")
    public String qna(HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "myPage/qna";
    }

    /**
     * 마이페이지 포인트
     * 
     * @param request
     * @return
     */
    @RequestMapping("/myPage/point")
    public String point(HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "myPage/point";
    }

    /**
     * 마이페이지 내정보
     * 
     * @param request
     * @return
     */
    @RequestMapping("/myPage/info")
    public String myPage(HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "myPage/info";
    }

    /**
     * 마이페이지 내정보 상세페이지
     * 
     * @param category
     * @param request
     * @return
     */
    @RequestMapping("/myPage/{category}/infoView")
    public String infoView(@PathVariable String category, HttpServletRequest request) {
//	List<Product> list = service.selectProductsByCategory(category);
//	request.setAttribute("list", list);
	return "myPage/infoView";
    }

    /**
     * 샌드위치 or 샐러드 셀렉트박스 리스트 뿌리기
     * 
     * @param menu
     * @return
     */
    @ResponseBody
    @RequestMapping("/menuList")
    public List<String> menuList(String menu) {
	return service.selectMenuListByMenu(menu);
    }

    /**
     * 메인 메뉴 및 가격 뿌리기
     * 
     * @param name
     * @param category
     * @return
     */
    @ResponseBody
    @RequestMapping("/selectMenuPrice")
    public String selectMenuPrice(String name, String category) {
	return service.selectMenuPrice(name, category);
    }

}
