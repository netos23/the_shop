package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;

import java.util.List;
@RestController
@RequestMapping("/delivery")
@AllArgsConstructor
@Tag(name = "Контроллер доставки")
public class DeliveryController {

    @GetMapping("/{deliveryid}")
    @Operation(summary = "Просмотр информации о доставке")
    public DeliveryDto getDeliveryById(@PathVariable("deliveryid") Long deliveryId) {
        throw new RuntimeException();
    }
}
