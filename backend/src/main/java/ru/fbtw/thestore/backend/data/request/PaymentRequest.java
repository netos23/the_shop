package ru.fbtw.thestore.backend.data.request;

import jakarta.validation.constraints.Digits;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.CreditCardNumber;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PaymentRequest {
    @CreditCardNumber(message = "Invalid credit card number")
    private String creditCardNumber;
    @Digits(integer = 3, message = "CVV must be a 3-digit number", fraction = 0)
    @Size(min = 3, max = 3, message = "CVV must be a 3-digit number")
    private String cvv;
    private boolean isOnlinePayment;
    private Long orderId;

}
