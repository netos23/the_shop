package ru.fbtw.thestore.backend.data.delivery.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.delivery.dto.ShopDto;
import ru.fbtw.thestore.backend.domain.delivery.Shop;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface ShopMapper {
	Shop toEntity(ShopDto shopDto);

	ShopDto toDto(Shop shop);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Shop partialUpdate(ShopDto shopDto, @MappingTarget Shop shop);
}