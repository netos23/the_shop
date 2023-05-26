package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.catalog.dto.CategoryDto;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.request.PaymentRequest;
import ru.fbtw.thestore.backend.data.payment.dto.PaymentDto;
import ru.fbtw.thestore.backend.services.PaymentService;

import java.util.List;

@RestController
@RequestMapping("/payment")
@AllArgsConstructor
@Tag(name = "Payment Controller")
public class PaymentController {

    private final PaymentService paymentService;
    @GetMapping()
    @Operation(summary = "Views of possible payment methods", responses = {
            @ApiResponse(responseCode = "200", description = "Possible types are returned", content = {
                    @Content(mediaType = "application/json",
                            array = @ArraySchema(schema = @Schema(implementation = String.class)))
            }),
            @ApiResponse(responseCode = "500", description = "Internal server error", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public List<String> getPaymentsType() {
        return paymentService.getPaymentsType();
    }
    @PostMapping("/create")
    @Operation(summary = "Creating a new payment", responses = {
            @ApiResponse(responseCode = "201", description = "Created a new payment", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = PaymentDto.class))
            }),
            @ApiResponse(responseCode = "400", description = "Invalid request", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public PaymentDto createPayment(@Valid @RequestBody PaymentRequest paymentRequest){
        return paymentService.createPayment(paymentRequest);
    }


}
