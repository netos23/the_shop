package ru.fbtw.thestore.backend.data.order.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.catalog.mapper.CompactProductMapper;
import ru.fbtw.thestore.backend.data.delivery.mapper.DeliveryMapper;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.data.payment.mapper.PaymentMapper;
import ru.fbtw.thestore.backend.domain.order.MyOrder;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring", uses = {DeliveryMapper.class, PaymentMapper.class, CompactProductMapper.class})
public interface MyOrderMapper {
	@Mapping(source = "userId", target = "user.id")
	MyOrder toEntity(MyOrderDto myOrderDto);

	@Mapping(source = "user.id", target = "userId")
	MyOrderDto toDto(MyOrder myOrder);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	@Mapping(source = "userId", target = "user.id")
	MyOrder partialUpdate(MyOrderDto myOrderDto, @MappingTarget MyOrder myOrder);
}