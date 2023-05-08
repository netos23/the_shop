package ru.fbtw.thestore.backend.data.banner.dto;

import lombok.Data;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.domain.banner.Banner;
import ru.fbtw.thestore.backend.domain.banner.BannerType;

import java.io.Serializable;
import java.util.Set;

/**
 * A DTO for the {@link Banner} entity
 */
@Data
public class BannerDto implements Serializable {
	private final Long id;
	private final Long order;
	private final BannerType bannerType;
	private final String title;
	private final Set<CompactProductDto> products;
	private final Set<String> images;
	private final String markdown;
}