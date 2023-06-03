package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.controllers.requests.DeliveryRequest;
import ru.fbtw.thestore.backend.datas.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.services.DeliveryService;

@RestController
@RequestMapping("/delivery")
@RequiredArgsConstructor
@Tag(name = "delivery",description = "Контроллер доставки")
public class DeliveryController {

    private DeliveryService deliveryService;

    @GetMapping("/{deliveryId}")
    @Operation(summary = "Просмотр информации о доставке", tags="delivery")
    public DeliveryDto getDeliveryById(@PathVariable("deliveryId") Long deliveryId) {
        return deliveryService.getDeliveryById(deliveryId);
    }

    @PostMapping("/create")
    @Operation(summary = "Создание новой доставки", tags="delivery")
    public DeliveryDto createDelivery(@Valid @RequestBody DeliveryRequest deliveryRequest) {
        return deliveryService.createNewDelivery(deliveryRequest);
    }
}
