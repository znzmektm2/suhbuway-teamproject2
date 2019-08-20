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

    /**
     * 샌드위치 or 샐러드 셀렉트박스 리스트 뿌리기
     * 
     * @param menu
     * @return
     */
    @ResponseBody
    @RequestMapping("/menuList")
    public List<String> menuList(String menu) {
	return orderService.selectMenuListByMenu(menu);
    }

    /**
     * 메인 메뉴 및 가격 뿌리기
     * 
     * @param name
     * @param category
     * @return
     */
    @ResponseBody
    @RequestMapping("/selectMenuPrice")
    public String selectMenuPrice(String name, String category) {
	return orderService.selectMenuPrice(name, category);
    }

    /**
     * 기타 메뉴 및 가격 뿌리기
     * 
     * @param name
     * @return
     */
    @ResponseBody
    @RequestMapping("/selectEtcPrice")
    public String selectEtcPrice(String name) {
	return orderService.selectEtcPrice(name);
    }
}
