package ru.fbtw.thestore.backend.datas.delivery.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.datas.delivery.dto.ShopDto;
import ru.fbtw.thestore.backend.domains.delivery.Shop;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface ShopMapper {
	Shop toEntity(ShopDto shopDto);

	ShopDto toDto(Shop shop);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Shop partialUpdate(ShopDto shopDto, @MappingTarget Shop shop);
}