package project.suhbuway.dto;

import java.util.List;

import lombok.Data;

@Data
public class OrderList {

	String orderId;
	String userId;
	String storeId;
	int total;
	String orderState;
	String regdate;

	List<OrderItem> orderItems;
}