package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.Payment} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PaymentDto {
    private Long id;
    private String paymentName;
}