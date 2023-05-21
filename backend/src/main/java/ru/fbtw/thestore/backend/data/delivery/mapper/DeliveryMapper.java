package ru.fbtw.thestore.backend.data.delivery.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.domain.delivery.Delivery;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface DeliveryMapper {
	Delivery toEntity(DeliveryDto deliveryDto);

	DeliveryDto toDto(Delivery delivery);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Delivery partialUpdate(DeliveryDto deliveryDto, @MappingTarget Delivery delivery);
}