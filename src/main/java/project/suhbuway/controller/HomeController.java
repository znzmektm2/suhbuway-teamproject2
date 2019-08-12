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
     */
    @RequestMapping("/menu/{category}")
    public String menu(@PathVariable String category, HttpServletRequest request) {
	List<Product> list = service.selectProductsByCategory(category);
	request.setAttribute("list", list);
	return "menu/menuList";
    }
}
