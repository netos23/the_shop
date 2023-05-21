package ru.fbtw.thestore.backend.data.catalog.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductParamDto;
import ru.fbtw.thestore.backend.domain.catalog.ProductParam;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface ProductParamMapper {
	ProductParam toEntity(ProductParamDto productParamDto);

	ProductParamDto toDto(ProductParam productParam);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	ProductParam partialUpdate(ProductParamDto productParamDto, @MappingTarget ProductParam productParam);
}