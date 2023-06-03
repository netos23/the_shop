package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.request.DeliveryRequest;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.services.DeliveryService;

@RestController
@RequestMapping("/delivery")
@RequiredArgsConstructor
@Tag(name = "Delivery Controller")
public class DeliveryController {
    private final DeliveryService deliveryService;

    @GetMapping("/{deliveryId}")
    @Operation(summary = "Viewing delivery information", responses = {
            @ApiResponse(responseCode = "200", description = "The delivery was successfully found in the database", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = DeliveryDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "There is no such delivery", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public DeliveryDto getDeliveryById(@PathVariable("deliveryId") Long deliveryId) {
        return deliveryService.getDeliveryById(deliveryId);
    }

    @PostMapping("/create")
    @Operation(summary = "Creating a new delivery", responses = {
            @ApiResponse(responseCode = "201", description = "Delivery has been successfully created", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = DeliveryDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "There is no store with this id", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            }),
    })
    public DeliveryDto createDelivery(@RequestBody DeliveryRequest deliveryRequest) {
        return deliveryService.createNewDelivery(deliveryRequest);
    }
}
