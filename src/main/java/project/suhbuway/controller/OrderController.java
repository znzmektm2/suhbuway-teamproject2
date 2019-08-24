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
	 * 결제하기
	 */
	@RequestMapping("/order/payment")
	public String payment(HttpServletRequest request) {
		return "order/payment";
	}

	/**
	 * 고객이 받은 주문을 저장합니다.
	 */
	@RequestMapping("/insertOrder")
	public String insertOrder() {

		orderService.selectOrderList();
		return "order/complete";
	}

	/**
	 * 결제완료
	 */
	@RequestMapping("/order/completeOrder")
	public String completeOrder(HttpServletRequest request) {
		return "order/completeOrder";
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////
	// 이하 좀 다른 것들.
	@RequestMapping("/store/stores")
	@ResponseBody
	public List<Store> selectAllStores() {
		List<Store> list = orderService.selectStoreList();
		return list;
	}
}