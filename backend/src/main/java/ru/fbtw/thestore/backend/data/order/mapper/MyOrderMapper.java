package ru.fbtw.thestore.backend.data.order.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.catalog.mapper.CompactProductMapper;
import ru.fbtw.thestore.backend.data.delivery.mapper.DeliveryMapper;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.data.payment.mapper.PaymentMapper;
import ru.fbtw.thestore.backend.domains.order.MyOrder;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring", uses = {DeliveryMapper.class, PaymentMapper.class, CompactProductMapper.class})
public interface MyOrderMapper {
    @Mapping(target = "products", ignore = true)
    MyOrder toEntity(MyOrderDto myOrderDto);

    MyOrderDto toDto(MyOrder myOrder);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    MyOrder partialUpdate(MyOrderDto myOrderDto, @MappingTarget MyOrder myOrder);
}