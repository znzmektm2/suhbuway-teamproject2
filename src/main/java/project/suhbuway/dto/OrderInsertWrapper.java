package project.suhbuway.dto;

import lombok.Data;

@Data
public class OrderInsertWrapper {
	Product product;
	String length;
	int price;
	String breadType;
	String[] veggies;
	String[] source;
	Product[] subMenu;
}
