package project.suhbuway.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import project.suhbuway.dto.Store;
import project.suhbuway.dto.User;
import project.suhbuway.service.client.OrderService;
import project.suhbuway.service.user.UserService;
import project.suhbuway.wrapper.OrderInsertWrapper;
import project.suhbuway.wrapper.OrderListWrapper;

/**
 * 유저관리 맵핑은 이곳으로..
 * 
 * @author hkarling
 */
@Controller
public class OrderController {
	
    @Autowired
    OrderService orderService;
    
    @Autowired
    UserService userService;

    /**
     * 마이페이지 장바구니
     */
    @RequestMapping("/myPage/cart")
    public ModelAndView cart(HttpServletRequest request, HttpSession session, Principal principal) {
    	
    	ModelAndView mv = new ModelAndView();
    	List<Store> list = null;
    	String jsonList = null;
    	String userId = null;
    	String kakaoId = (String) session.getAttribute("userId");// 카카오 로그인
    	// 시큐리티 로그인 유저 id
    	if (principal != null) {
    	    String user = principal.getName();
    	    if (!user.equals("admin")) {
    	    	System.out.println("principaluser: " + user);
    	    	user = user.replace("User(", "");
    	    	user = user.replace(")", "");
    	    	String[] userdd = user.split(",");
    		
    	    	userId = userdd[0].replace("userId=", "");
    	    	mv.addObject("userId", userId );
    		
    	    	list = orderService.selectStoreList();
    	    	try {
    	    		jsonList = new ObjectMapper().writeValueAsString(list);
    	    	} catch (JsonProcessingException e) {
    	    		e.printStackTrace();
    	    	}
    	    } else {
    		mv.addObject("admin", "admin");
    	    }
    	}
    	// 카카오 로그인 유저
    	if (kakaoId != null) {
    	    User kakaoUser = userService.selectUserById(kakaoId);
    	    
    	    userId = kakaoUser.getUserId();
    	    mv.addObject("userId", userId );
    	    
        	list = orderService.selectStoreList();
        	try {
        	    jsonList = new ObjectMapper().writeValueAsString(list);
        	} catch (JsonProcessingException e) {
        	    e.printStackTrace();
        	}
    	}
    	mv.addObject("list", jsonList);
    	mv.setViewName("myPage/cart");
    	return mv;
    }

    /**
     * 주문하기
     */
    @RequestMapping("/order/confirm")
    public ModelAndView completeOrder(HttpServletRequest request, HttpSession session, Principal principal ) {

    	Gson gson = new Gson();
    	OrderInsertWrapper[] newOrders = gson.fromJson(request.getParameter("menuList"), OrderInsertWrapper[].class);
    	Store store = gson.fromJson(request.getParameter("store"), Store.class);
	
    	ModelAndView mv = new ModelAndView();
    	String orderId = null;
    	String userId = null;
    	String kakaoId = (String) session.getAttribute("userId");// 카카오 로그인
    	// 시큐리티 로그인 유저 id
    	if (principal != null) {
    		String user = principal.getName();
    		if (!user.equals("admin")) {
    			System.out.println("principaluser: " + user);
    			user = user.replace("User(", "");
    			user = user.replace(")", "");
    			String[] userdd = user.split(",");
		
    			userId = userdd[0].replace("userId=", "");
    			orderId = orderService.insertOrder(newOrders, store, userId); //////// 여기에 유저 아이디 넣으면 됨 ////////
    			mv.addObject("userId", userId );
	    		} else {
	    			mv.addObject("admin", "admin");
	    		}
    	}
    	// 카카오 로그인 유저
    	if (kakaoId != null) {
    		User kakaoUser = userService.selectUserById(kakaoId);
	    
    		userId = kakaoUser.getUserId();
    		orderId = orderService.insertOrder(newOrders, store, userId); //////// 여기에 유저 아이디 넣으면 됨 ////////
    		mv.addObject("userId", userId );
    	}
    	mv.addObject("orderId", orderId);
    	mv.setViewName("order/completeOrder");
    	return mv;
    }

    /**
     * 마이페이지 주문내역
     */
    @RequestMapping("/myPage/orders")
    public ModelAndView orders(HttpServletRequest request, HttpSession session, Principal principal) { 
    		
    	ModelAndView mv = new ModelAndView(); 
    	List<OrderListWrapper> list = null;
    	String userId = null;
    	String kakaoId = (String) session.getAttribute("userId");// 카카오 로그인 
		// 시큐리티 로그인 유저 id  
		if (principal != null) {  
		    String user = principal.getName();
		    if (!user.equals("admin")) {  
			user = user.replace("User(", ""); 
			user = user.replace(")", ""); 
			String[] userdd = user.split(",");  
			userId = userdd[0].replace("userId=", "");
			mv.addObject("userId", userId );  
			list = orderService.selectOrderListByUser(userId); //////// 여기에 유저 아이디 넣으면 됨 ////////
		    } else {
			mv.addObject("admin", "admin");
		    }
		}
		// 카카오 로그인 유저 
		if (kakaoId != null) { 
		    User kakaoUser = userService.selectUserById(kakaoId);
		    userId = kakaoUser.getUserId();
		    mv.addObject("userId", userId );
		    list = orderService.selectOrderListByUser(userId); //////// 여기에 유저 아이디 넣으면 됨 ////////
		} 
		
		mv.addObject("list", list);
		mv.setViewName("myPage/orders");
		return mv;
    } 
}