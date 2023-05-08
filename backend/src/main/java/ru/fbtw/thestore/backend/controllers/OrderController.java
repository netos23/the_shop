package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;


import java.util.List;

@RestController
@RequestMapping("/order")
@AllArgsConstructor
@Tag(name = "Контроллер для заказов")
public class OrderController {
    @GetMapping("/{id}") // id юзера
    @Operation(summary = "Список заказов")
    public List<MyOrderDto> getAllOrders(@PathVariable("id") Long id) {
        throw new RuntimeException();
    }

    @GetMapping("/{orderid}")
    @Operation(summary = "Просмотр заказа одного")
    public MyOrderDto getOrderById(@PathVariable("orderid") Long orderId) {
        throw new RuntimeException();
    }
}
