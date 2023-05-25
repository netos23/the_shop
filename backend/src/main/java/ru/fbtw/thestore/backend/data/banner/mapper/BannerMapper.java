package ru.fbtw.thestore.backend.data.banner.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.banner.dto.BannerDto;
import ru.fbtw.thestore.backend.domains.banner.*;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface BannerMapper {
	Banner toEntity(BannerDto bannerDto);

	ImageBannerAttachment toImageBannerEntity(BannerDto bannerDto);
	MarkdownBannerAttachment toMarkdownBannerEntity(BannerDto bannerDto);
	ProductsBannerAttachment toProductsBannerEntity(BannerDto bannerDto);
	TitleBannerAttachment toTitleBannerEntity(BannerDto bannerDto);

	BannerDto toDto(Banner banner);
	BannerDto toDto(ImageBannerAttachment banner);
	BannerDto toDto(MarkdownBannerAttachment banner);
	BannerDto toDto(ProductsBannerAttachment banner);
	BannerDto toDto(TitleBannerAttachment banner);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Banner partialUpdate(BannerDto bannerDto, @MappingTarget Banner banner);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	ImageBannerAttachment imageBannerPartialUpdate(BannerDto bannerDto, @MappingTarget ImageBannerAttachment imageBannerAttachment);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	MarkdownBannerAttachment markdownBannerPartialUpdate(BannerDto bannerDto, @MappingTarget MarkdownBannerAttachment markdownBannerAttachment);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	ProductsBannerAttachment productBannerPartialUpdate(BannerDto bannerDto, @MappingTarget ProductsBannerAttachment productsBannerAttachment);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	TitleBannerAttachment titleBannerPartialUpdate(BannerDto bannerDto, @MappingTarget TitleBannerAttachment titleBannerAttachment);
}