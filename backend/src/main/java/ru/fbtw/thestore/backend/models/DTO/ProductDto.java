package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.Product} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ProductDto {
    private Long id;
    private String productName;
    private BigDecimal productPrice;
    private BigDecimal productOldPrice;
    private Integer productVolume;
    private String productDescription;
    private Integer productAmount;
}