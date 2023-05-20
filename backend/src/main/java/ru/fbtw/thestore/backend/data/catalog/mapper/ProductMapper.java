package ru.fbtw.thestore.backend.data.catalog.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.domain.catalog.Product;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface ProductMapper {
	Product toEntity(ProductDto productDto);

	ProductDto toDto(Product product);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Product partialUpdate(ProductDto productDto, @MappingTarget Product product);
}