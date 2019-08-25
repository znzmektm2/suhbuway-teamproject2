package project.suhbuway.dto;

import java.util.List;

import lombok.Data;

@Data
public class OrderRetrieveWrapper {
	
	private String orderId;
	private Store store;
	private int total;
	private String orderState;
	private String regdate;
	
	private List<Product> items;
}
