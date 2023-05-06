package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.Delivery} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class DeliveryDto implements Serializable {
    private Long id;
    private String deliveryName;
    private String deliveryStatus;
}