package ru.fbtw.thestore.backend.data.order.dto;

import lombok.*;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.data.delivery.dto.ShopDto;
import ru.fbtw.thestore.backend.data.payment.dto.PaymentDto;

import java.io.Serializable;
import java.util.Set;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domains.order.MyOrder} entity
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MyOrderDto implements Serializable {
	private Long id;
	private ShopDto shop;
	private String orderTotal;
	private boolean orderStatus;
	private DeliveryDto delivery;
	private PaymentDto payment;
	private Set<CompactProductDto> products;
}