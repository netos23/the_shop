package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.data.payment.dto.PaymentDto;

import java.util.List;

@RestController
@RequestMapping("/payment")
@AllArgsConstructor
@Tag(name = "Контроллер оплаты")
public class PaymentController {

    @GetMapping
    @Operation(summary = "Просмотр всех платежей")
    public List<PaymentDto> getAllPayments() {
        throw new RuntimeException();
    }
    @GetMapping("/{paymentid}")
    @Operation(summary = "Просмотр информации о платеже")
    public PaymentDto getPaymentById(@PathVariable("paymentid") Long paymentId) {
        throw new RuntimeException();
    }
}
