package project.suhbuway.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
     * 고객이 받은 주문을 저장합니다.
     * 
     * @return
     */
    @RequestMapping("/createOrder")
    public String createOrder() {
	orderService.selectOrderList();
	return null;
    }
}
