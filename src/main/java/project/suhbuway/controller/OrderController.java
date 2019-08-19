package project.suhbuway.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {

    /**
     * 고객이 받은 주문을 저장합니다.
     * @return
     */
    @RequestMapping("/createOrder")
    public String createOrder() {
	
	return null;
    }
}
