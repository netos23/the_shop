package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domains.delivery.Delivery;

public interface DeliveryRepository extends JpaRepository<Delivery, Long> {
}
