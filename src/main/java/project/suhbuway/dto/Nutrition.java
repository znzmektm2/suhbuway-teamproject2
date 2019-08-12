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
public class Nutrition {
    
    private int productId;
    private String weight;
    private String calory;
    private String sugars;
    private String protein;
    private String fat;
    private String salt;
}

/* PRODUCT_ID	weight	kcal	sugars	protein	Saturated fat	salt */