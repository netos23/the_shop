package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.fbtw.thestore.backend.domains.banner.ImageBannerAttachment;

@Repository
public interface ImageBannerRepository extends JpaRepository<ImageBannerAttachment, Long> {
}
