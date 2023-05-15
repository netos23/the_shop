package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.controllers.requests.OrderRequest;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.services.OrderService;


import java.util.List;

@RestController
@RequestMapping("/order")
@RequiredArgsConstructor
@Tag(name = "Order Controller", description = "Контроллер для заказов")
public class OrderController {
    private final OrderService orderService;
    @GetMapping("/{id}") // id юзера
    @Operation(summary = "Список заказов", tags = "Order")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200",
                    description = "Список заказов успешно выведен",
                    content = {@Content(mediaType = "application/json",
                    schema = @Schema(implementation = MyOrderDto.class))}),
            @ApiResponse(responseCode = "500",
                    description = "Нет заказов",
                    content = { @Content(schema = @Schema(hidden = true))} )
    })
    public List<MyOrderDto> getAllOrders(@PathVariable("id") Long id) {
        return orderService.getAllOrders(id);
    }

    @GetMapping("/{orderId}")
    @Operation(summary = "Просмотр заказа одного")
    public MyOrderDto getOrderById(@PathVariable("orderId") Long orderId) {
        return orderService.getOrderById(orderId);
    }

    @PostMapping("/create")
    @Operation(summary = "Создание нового заказа")
    public MyOrderDto createOrder(@Valid @RequestBody OrderRequest orderRequest) {
        throw new RuntimeException();
    }

    //todo уточнить, как создавать заказ: отдельно ли запрашивать
    // доставку и оплату или сразу принимать MyOrderDto
}
