package project.suhbuway.dto;

import lombok.Data;

@Data
public class Store {
	private String storeId;
	private String storePassword;
	private String storeName;
	private String storeAddress;
	private String storePhone;
	private String storeOwner;
	private int storeSales;
}

/* store_id,store_password,store_name,store_address,store_phone,store_owner,store_sales */