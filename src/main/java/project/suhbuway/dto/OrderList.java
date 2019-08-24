package project.suhbuway.dto;

import java.util.List;

import lombok.Data;

@Data
public class OrderList {

	int orderId;
	String userId;
	String storeId;
	int total;
	char orderState;
	String regdate;

	List<OrderItem> orderItems;
}