package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.controllers.requests.DeliveryRequest;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.services.DeliveryService;

@RestController
@RequestMapping("/delivery")
@RequiredArgsConstructor
@Tag(name = "Контроллер доставки")
public class DeliveryController {

    private DeliveryService deliveryService;

    @GetMapping("/{deliveryId}")
    @Operation(summary = "Просмотр информации о доставке")
    public DeliveryDto getDeliveryById(@PathVariable("deliveryId") Long deliveryId) {
        return deliveryService.getDeliveryById(deliveryId);
    }

    @PostMapping("/create")
    @Operation(summary = "Создание новой доставки")
    public DeliveryDto createDelivery(@Valid @RequestBody DeliveryRequest deliveryRequest) {
        return deliveryService.createNewDelivery(deliveryRequest);
    }
}
