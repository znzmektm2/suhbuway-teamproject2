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
    private String sugar;
    private String protein;
    private String fat;
    private String salt;
}

/* product_id,weight,calory,sugars,protein,fat,salt */