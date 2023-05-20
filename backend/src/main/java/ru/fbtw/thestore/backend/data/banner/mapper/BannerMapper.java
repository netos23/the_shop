package ru.fbtw.thestore.backend.data.banner.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.banner.dto.BannerDto;
import ru.fbtw.thestore.backend.domain.banner.Banner;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface BannerMapper {
	Banner toEntity(BannerDto bannerDto);

	BannerDto toDto(Banner banner);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Banner partialUpdate(BannerDto bannerDto, @MappingTarget Banner banner);
}