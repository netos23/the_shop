package ru.fbtw.thestore.backend.data.delivery.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.delivery.Delivery} entity
 */
@Data
public class DeliveryDto implements Serializable {
	private final Long id;
	private final String deliveryName;
	private final String picture;
	private final BigDecimal price;
}