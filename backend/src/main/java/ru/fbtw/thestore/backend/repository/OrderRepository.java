package ru.fbtw.thestore.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domain.order.MyOrder;

public interface OrderRepository extends JpaRepository<MyOrder, Long> {
}
