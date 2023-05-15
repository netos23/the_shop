package ru.fbtw.thestore.backend.data.delivery.dto;

import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.delivery.Delivery} entity
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DeliveryDto implements Serializable {
    private Long id;
    private String deliveryName;
    private String picture;
    private BigDecimal price;
}