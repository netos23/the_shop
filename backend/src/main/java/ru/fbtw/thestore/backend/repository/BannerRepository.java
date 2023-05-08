package ru.fbtw.thestore.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domain.banner.Banner;

public interface BannerRepository extends JpaRepository<Banner, Long> {
}