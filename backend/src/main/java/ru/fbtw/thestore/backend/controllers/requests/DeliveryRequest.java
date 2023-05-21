package ru.fbtw.thestore.backend.controllers.requests;

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
    @NotNull(message = "Invalid shopLongitude: shopLongitude is NULL")
    private double shopLongitude; //долгота
    @NotNull(message = "Invalid shopLatitude: shopLatitude is NULL")
    private double shopLatitude;
    @NotNull(message = "Invalid userLongitude: userLongitude is NULL")
    private double userLongitude; //долгота
    @NotNull(message = "Invalid userLatitude: userLatitude is NULL")
    private double userLatitude;
    @NotNull(message = "Invalid orderNumber: orderNumber is NULL")
    private String orderNumber;
    @NotNull(message = "Invalid picture: picture is NULL")
    private String picture;
}
