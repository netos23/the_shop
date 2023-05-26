package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.fbtw.thestore.backend.domains.payment.Payment;

@Repository
public interface PaymentRepository extends JpaRepository<Payment, Long> {
}
