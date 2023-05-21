package ru.fbtw.thestore.backend.data.order.dto;

import lombok.Data;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.data.payment.dto.PaymentDto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Set;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.order.MyOrder} entity
 */
@Data
public class MyOrderDto implements Serializable {
	private final Long id;
	private final BigDecimal orderTotal;
	private final String orderStatus;
	private final Long userId;
	private final DeliveryDto delivery;
	private final String deliveryStatus;
	private final PaymentDto payment;
	private final String paymentStatus;
	private final Set<CompactProductDto> products;
}