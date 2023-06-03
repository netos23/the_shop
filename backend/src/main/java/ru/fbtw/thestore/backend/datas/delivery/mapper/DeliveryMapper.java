package ru.fbtw.thestore.backend.datas.delivery.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.datas.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.domains.delivery.Delivery;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface DeliveryMapper {
	Delivery toEntity(DeliveryDto deliveryDto);

	DeliveryDto toDto(Delivery delivery);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Delivery partialUpdate(DeliveryDto deliveryDto, @MappingTarget Delivery delivery);
}