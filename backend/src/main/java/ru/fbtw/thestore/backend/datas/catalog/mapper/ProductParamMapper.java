package ru.fbtw.thestore.backend.datas.catalog.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.datas.catalog.dto.ProductParamDto;
import ru.fbtw.thestore.backend.domains.catalog.ProductParam;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface ProductParamMapper {
	ProductParam toEntity(ProductParamDto productParamDto);

	ProductParamDto toDto(ProductParam productParam);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	ProductParam partialUpdate(ProductParamDto productParamDto, @MappingTarget ProductParam productParam);
}