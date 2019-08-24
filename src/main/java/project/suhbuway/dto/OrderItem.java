package project.suhbuway.dto;

import lombok.Data;

@Data
public class OrderItem {
	int itemId;
	int orderId;
	int productId;
	String breadType;
	String veggies;
	String source;
	int quantity;
	int attach;
}