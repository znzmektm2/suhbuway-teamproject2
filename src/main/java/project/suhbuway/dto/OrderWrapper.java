package project.suhbuway.dto;

import lombok.Data;

@Data
public class OrderWrapper {
	Product product;
	String length;
	String breadType;
	String[] veggies;
	String[] source;
	Product[] subMenu;
}
