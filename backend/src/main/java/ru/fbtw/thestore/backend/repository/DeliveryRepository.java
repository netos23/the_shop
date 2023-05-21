package ru.fbtw.thestore.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domain.delivery.Delivery;

public interface DeliveryRepository extends JpaRepository<Delivery, Long> {
}
