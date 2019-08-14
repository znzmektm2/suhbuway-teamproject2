package project.suhbuway.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import project.suhbuway.dto.Complain;
import project.suhbuway.service.complain.ComplainService;

@RequestMapping("/board")
@Controller
public class ComplainController {
	@Autowired
	private ComplainService service;
	
	@RequestMapping("/complainList")
	private String selectAll(String userId,HttpServletRequest request) {
		/*
		 * List<Complain> dto = service.selectAll(userId); request.setAttribute("dto",
		 * dto);
		 */
		return "board/complainList";
	}
}
