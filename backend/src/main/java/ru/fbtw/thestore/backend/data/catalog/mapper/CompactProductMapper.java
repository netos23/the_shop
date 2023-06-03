package ru.fbtw.thestore.backend.data.catalog.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.domains.catalog.Product;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface CompactProductMapper {
	Product toEntity(CompactProductDto compactProductDto);

	CompactProductDto toDto(Product product);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Product partialUpdate(CompactProductDto compactProductDto, @MappingTarget Product product);
}