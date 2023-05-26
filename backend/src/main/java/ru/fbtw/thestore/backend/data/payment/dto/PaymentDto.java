package ru.fbtw.thestore.backend.data.payment.dto;

import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domains.payment.Payment} entity
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PaymentDto implements Serializable {
	private Long id;
	private String paymentType;
	private String picture;
}