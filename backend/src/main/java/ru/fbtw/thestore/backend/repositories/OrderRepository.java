package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domains.order.MyOrder;

public interface OrderRepository extends JpaRepository<MyOrder, Long> {
}
