package ru.fbtw.thestore.backend.data.request;

import lombok.*;
import ru.fbtw.thestore.backend.data.payment.dto.PaymentType;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
public class OrderRequest {
    private Long shopId;
    private Long deliveryId; //пустое, если самовывоз
    private Long userId;
    private PaymentType paymentType;

}