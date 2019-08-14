package project.suhbuway.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 유저관리 맵핑은 이곳으로..
 * @author hkarling
 */
@Controller
public class UserController {

	// 로그인폼
    @RequestMapping("/user/login")
    public void login() {}
    
    @RequestMapping("/user/myPage")
    public void myPage() {
	
    }
    
    @RequestMapping("/user/register")
    public void register() {
	
    }
    
    @RequestMapping("/test")
	public ModelAndView test(HttpServletRequest request) {
    	String errorMessage =(String)request.getAttribute("errorMessage");
		System.out.println("****************888 errorMessage : " + errorMessage);
		return new ModelAndView("user/login" , "errorMessage" ,errorMessage );
	}
    
}
