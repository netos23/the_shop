package ru.fbtw.thestore.backend.data.payment.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.payment.Payment} entity
 */
@Data
public class PaymentDto implements Serializable {
	private final Long id;
	private final String paymentName;
	private final String picture;
}