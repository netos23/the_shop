package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ProductPageDTO {
    private Long id;
    private String productName;
    private BigDecimal productPrice;
    private Integer productVolume;
    private String productDescription;
}
