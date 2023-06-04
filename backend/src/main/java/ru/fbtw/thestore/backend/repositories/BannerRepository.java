package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domains.banner.Banner;

public interface BannerRepository extends JpaRepository<Banner, Long> {
}