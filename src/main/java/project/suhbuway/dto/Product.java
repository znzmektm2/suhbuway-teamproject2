package project.suhbuway.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Product {
    private int productId;
    private String name;
    private String type;
    private int price;
    private String description;
    private boolean isAvailable;
}


/*
 * PRODUCT_ID	PRODUCT_NAME	PRODUCT_PRICE	DESCRIPTION	PRODUCT_IMG	PRODUCT_STATE
 * */