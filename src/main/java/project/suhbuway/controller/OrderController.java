package project.suhbuway.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import project.suhbuway.dto.OrderList;
import project.suhbuway.dto.OrderInsertWrapper;
import project.suhbuway.dto.Store;
import project.suhbuway.service.client.OrderService;

/**
 * 유저관리 맵핑은 이곳으로..
 * @author hkarling
 */
@Controller
public class OrderController {
	@Autowired
	OrderService orderService;

	/**
	 * 마이페이지 장바구니
	 */
	@RequestMapping("/myPage/cart")
	public String cart(HttpServletRequest request) {
		List<Store> list = orderService.selectStoreList();
		String jsonList = null;
		try {
			jsonList = new ObjectMapper().writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		request.setAttribute("list", jsonList);
		return "myPage/cart";
	}
	
	/**
	 * 주문하기
	 */
	@RequestMapping("/order/confirm")
	public String completeOrder(HttpServletRequest request) {
		
		Gson gson = new Gson();
		System.out.println(request.getParameter("menuList"));
		OrderInsertWrapper[] newOrders = gson.fromJson(request.getParameter("menuList"), OrderInsertWrapper[].class);
		Store store = gson.fromJson(request.getParameter("store"), Store.class);
		
		String orderId = orderService.insertOrder(newOrders, store);
		request.setAttribute("orderId", orderId);
		return "order/completeOrder"; 
	}
}