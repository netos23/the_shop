package ru.fbtw.thestore.backend.data.request;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class DeliveryRequest {
    private Long shopId;
    private double userLongitude; //долгота
    private double userLatitude;
    private Long userId;

    //если нет айди, то искать магазин самой
}
