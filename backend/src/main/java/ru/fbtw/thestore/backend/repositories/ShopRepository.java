package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.fbtw.thestore.backend.domains.delivery.Shop;
@Repository
public interface ShopRepository extends JpaRepository<Shop, Long> {
}
