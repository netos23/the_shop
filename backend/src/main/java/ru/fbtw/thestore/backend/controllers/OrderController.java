package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.request.OrderRequest;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.services.OrderService;

@RestController
@RequestMapping("/order")
@RequiredArgsConstructor
@Tag(name = "Order Controller")
public class OrderController {
    private final OrderService orderService;

    @GetMapping("/{orderId}")
    @Operation(summary = "Viewing a single order", responses = {
            @ApiResponse(responseCode = "200", description = "The order was successfully found in the database", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyOrderDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "There is no such order", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyOrderDto getOrderById(@PathVariable("orderId") Long orderId) {
        return orderService.getOrderDtoById(orderId);
    }

    @PostMapping("/create")
    @Operation(summary = "Create new order", responses = {
            @ApiResponse(responseCode = "201", description = "Created new order", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyOrderDto.class))
            }),
            @ApiResponse(responseCode = "400", description = "Invalid request", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyOrderDto createNewOrder(@RequestBody OrderRequest orderRequest) {
       return orderService.createNewOrder(orderRequest);
    }
    //todo ссылка на оплату?
}
