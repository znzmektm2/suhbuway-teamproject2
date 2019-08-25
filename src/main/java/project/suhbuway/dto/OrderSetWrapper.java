package project.suhbuway.dto;

import lombok.Data;

@Data
public class OrderSetWrapper {
	
	private Product product;
	
	private String length;
	private int price;
	private String breadType;
	private String[] veggies;
	private String[] source;
	
	private Product[] subMenu;
}
