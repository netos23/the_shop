package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.controllers.requests.PaymentRequest;
import ru.fbtw.thestore.backend.datas.payment.dto.PaymentDto;

import java.util.List;

@RestController
@RequestMapping("/payment")
@AllArgsConstructor
@Tag(name = "payment", description = "Контроллер оплаты")
public class PaymentController {

	@GetMapping
	@Operation(summary = "Просмотр всех платежей", tags = "payment")
	public List<PaymentDto> getAllPayments() {
		throw new RuntimeException();
	}

	@GetMapping("/{paymentId}")
	@Operation(summary = "Просмотр информации о платеже", tags = "payment")
	public PaymentDto getPaymentById(@PathVariable("paymentId") Long paymentId) {
		throw new RuntimeException();
	}

	@PostMapping("/create")
	@Operation(summary = "Создание нового платежа", tags = "payment")
	public PaymentDto createPayment(@Valid @RequestBody PaymentRequest paymentRequest) {
		throw new RuntimeException();
	}

	//todo разобраться, как проиходит платеж
}
