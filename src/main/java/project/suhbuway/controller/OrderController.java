package project.suhbuway.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import project.suhbuway.dto.Store;
import project.suhbuway.service.client.OrderService;

/**
 * 유저관리 맵핑은 이곳으로..
 * 
 * @author hkarling
 */
@Controller
public class OrderController {
	@Autowired
	OrderService orderService;

	/**
	 * 주문하기
	 */
	@RequestMapping("/order/confirm")
	public String completeOrder(HttpServletRequest request) {
		return "order/completeOrder";
	}

	/**
	 * 마이페이지 장바구니
	 */
	@RequestMapping("/myPage/cart")
	public String cart(HttpServletRequest request) {
		List<Store> list = orderService.selectStoreList();
		request.setAttribute("storeList", list);
		return "myPage/cart";
	}
}