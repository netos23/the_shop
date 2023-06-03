package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ru.fbtw.thestore.backend.domains.order.MyOrder;

public interface OrderRepository extends JpaRepository<MyOrder, Long> {
    @Modifying
    @Query(value = """
            INSERT INTO order_product(order_id, product_id)
            VALUES (:orderId, :productId)""", nativeQuery = true)
    void addProducts(@Param("orderId") Long orderId, @Param("productId") Long productId);
}
