package ru.fbtw.thestore.backend.datas.banner.dto;


import lombok.*;
import ru.fbtw.thestore.backend.datas.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.domains.banner.Banner;
import ru.fbtw.thestore.backend.domains.banner.BannerType;

import java.io.Serializable;
import java.util.Set;

/**
 * A DTO for the {@link Banner} entity
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BannerDto implements Serializable {
	private Long id;
	private Long order;
	private BannerType bannerType;
	private String title;
	private Set<CompactProductDto> products;
	private Set<String> images;
	private String markdown;
	//если id нет, то создать новый баннер, если есть - обновить текущий
	//в зависимости от типа баннера я иду в нужную бд и достаю баннер
}