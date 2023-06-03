package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.fbtw.thestore.backend.domains.banner.ProductsBannerAttachment;
@Repository
public interface ProductBannerRepository extends JpaRepository<ProductsBannerAttachment, Long> {
}
