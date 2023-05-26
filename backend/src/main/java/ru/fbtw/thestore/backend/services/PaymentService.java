package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.payment.dto.PaymentDto;
import ru.fbtw.thestore.backend.data.payment.dto.PaymentType;
import ru.fbtw.thestore.backend.data.payment.mapper.PaymentMapper;
import ru.fbtw.thestore.backend.data.request.PaymentRequest;
import ru.fbtw.thestore.backend.domains.order.MyOrder;
import ru.fbtw.thestore.backend.domains.payment.Payment;
import ru.fbtw.thestore.backend.repositories.PaymentRepository;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PaymentService {
    private final OrderService orderService;
    private final PaymentRepository paymentRepository;
    private final PaymentMapper paymentMapper;

    public List<String> getPaymentsType() {
        List<String> paymentTypes = new ArrayList<>();
        paymentTypes.add(PaymentType.ONLINE_PAYMENT.toString());
        paymentTypes.add(PaymentType.CASH.toString());

        return paymentTypes;
    }

    @Transactional
    public PaymentDto createPayment(PaymentRequest paymentRequest) {
        MyOrder order = orderService.getOrderById(paymentRequest.getOrderId());

        Payment payment = Payment.builder().build();

        if (!paymentRequest.isOnlinePayment()) {
            payment.setPaymentType(PaymentType.CASH);
        }
        else payment.setPaymentType(PaymentType.ONLINE_PAYMENT);

        payment.setPicture("new picture");

        payment = paymentRepository.save(payment);

        order.setPayment(payment);
        order.setOrderStatus(true);
        orderService.saveUpdatedOrder(order);

        return paymentMapper.toDto(payment);
    }
    //todo ссылка на картинку??
}
