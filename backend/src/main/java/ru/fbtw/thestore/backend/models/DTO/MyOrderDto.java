package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.MyOrder} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class MyOrderDto {
    private Long id;
    private BigDecimal orderTotal;
    private String orderStatus;
}