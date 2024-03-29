package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.fbtw.thestore.backend.domains.banner.MarkdownBannerAttachment;

@Repository
public interface MarkdownBannerRepository extends JpaRepository<MarkdownBannerAttachment, Long> {
}
