package project.suhbuway.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import project.suhbuway.dto.Product;
import project.suhbuway.dto.User;
import project.suhbuway.service.client.HomeService;
import project.suhbuway.service.user.UserService;

/**
 * 일반적인 사이트 네비게이션 관련 매핑들은 이곳으로..
 */
@Controller
public class HomeController {

    @Autowired
    HomeService service;

    @Autowired
    UserService userService;

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
		System.out.println(list);
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
    public ModelAndView order(HttpServletRequest request, HttpSession session, Principal principal) {
    	
    	ModelAndView mv = new ModelAndView();
    	List<Product> list = null;
    	String kakaoId = (String) session.getAttribute("userId");// 카카오 로그인
		// 시큐리티 로그인 유저 id
		if (principal != null) {
		    String user = principal.getName();
		    if (!user.equals("admin")) {
			System.out.println("principaluser: " + user);
			user = user.replace("User(", "");
			user = user.replace(")", "");
			String[] userdd = user.split(",");
			mv.addObject("userId", userdd[0].replace("userId=", ""));
			list = service.selectAll();
		    } else {
			mv.addObject("admin", "admin");
		    }
		}
		// 카카오 로그인 유저
		if (kakaoId != null) {
		    User kakaoUser = userService.selectUserById(kakaoId);
		    //System.out.println("kakaoUser: " + kakaoUser);
		    mv.addObject("userId", kakaoUser.getUserId() );
		    list = service.selectAll();
		}

		// 주문할 매뉴 상품 리스트 
		String jsonList = null;
		try {
		    jsonList = new ObjectMapper().writeValueAsString(list);
		} catch (JsonProcessingException e) {
		    e.printStackTrace();
		}
		System.out.println(jsonList);
		mv.addObject("list", jsonList);
		mv.setViewName("order/order");
		return mv;
    }

    /**
     * 뉴스ㆍ공지사항
     * 
     * @param request
     * @return
     */
    @RequestMapping("/board/newsList")
    public String newList(@RequestParam(defaultValue = "1") int page, HttpServletRequest request) {
    	request.setAttribute("page", page);
    	return "board/newsList";
    }

    /**
     * 뉴스ㆍ공지사항 상세페이지
     * 
     * @param id
     * @param request
     * @return
     */
    @RequestMapping("/board/newsView")
    public String newsView(@RequestParam(defaultValue = "1") int newsId, HttpServletRequest request) {
		request.setAttribute("newsId", newsId);
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
		return "storeSearch/storeSearch";
    }

    /**
     * 마이페이지 문의사항
     * 
     * @param request
     * @return
     */
    @RequestMapping("/myPage/qna")
    public String qna(HttpServletRequest request, HttpSession session, Principal principal) {
    	return "myPage/qna";
    }

    /**
     * 마이페이지 포인트
     */
    @RequestMapping("/myPage/point")
    public ModelAndView point(HttpServletRequest request,HttpSession session, Principal principal) {

		ModelAndView mv = new ModelAndView();
	
		String kakaoId = (String) session.getAttribute("userId");// 카카오 로그인
		// 시큐리티 로그인 유저 id
		if (principal != null) {
		    String user = principal.getName();
		    if (!user.equals("admin")) {
			System.out.println("principaluser: " + user);
			user = user.replace("User(", "");
			user = user.replace(")", "");
			String[] userdd = user.split(",");
	
			mv.addObject("userId", userdd[0].replace("userId=", ""));
			mv.addObject("mileage", userdd[9].replace("mileage=", "").trim());
			mv.addObject("rating", userdd[10].replace("rating=", ""));
	
			// System.out.println("userId: "+ userdd[0].replace("userId=", "" ) );
			// System.out.println("mileage: "+userdd[9].replace("mileage=", "" ) );
			// System.out.println("rating: "+userdd[10].replace("rating=", "" ) );
		    } else {
			mv.addObject("admin", "admin");
		    }
		}
		// 카카오 로그인 유저
		if (kakaoId != null) {
		    User kakaoUser = userService.selectUserById(kakaoId);
		    System.out.println("kakaoUser: " + kakaoUser);
		    mv.addObject("user", kakaoUser);
		}
		mv.setViewName("myPage/point");
	
		return mv;
    }

    /**
     * 마이페이지 내정보
     */
    @RequestMapping("/myPage/info")
    public ModelAndView myPage(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		// 쇼셜 로그인
		String url = "myPage/info";
		String kakaoId = (String) session.getAttribute("userId");
		System.out.println("kakao 로그인중 상세페이지 접속: " + kakaoId);
		if (kakaoId != null) {
		    User user = userService.selectUserById(kakaoId);
		    String[] userEmail = user.getUserEmail().split("@");
		    String email1 = userEmail[0];
		    String email2 = userEmail[1];
	
		    mv.addObject("user", user);
		    mv.addObject("email1", email1);
		    mv.addObject("email2", email2);
	
		    url = "myPage/infoView";
		}
		mv.setViewName(url);
		return mv;
    }

    /**
     * 마이페이지 내정보 상세페이지
     */
    @RequestMapping("/myPage/{category}/infoView")
    public ModelAndView infoView(@PathVariable String category, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String userId = (String) request.getParameter("userId");
		// user이면
		if (category.equals("info")) {
	
		    User user = userService.selectUserById(userId);
		    String[] userEmail = user.getUserEmail().split("@");
		    String email1 = userEmail[0];
		    String email2 = userEmail[1];
	
		    mv.addObject("user", user);
		    mv.addObject("email1", email1);
		    mv.addObject("email2", email2);
		    mv.setViewName("myPage/infoView");
		}
	
		return mv;
    }

}
