package ru.fbtw.thestore.backend.datas.payment.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.datas.payment.dto.PaymentDto;
import ru.fbtw.thestore.backend.domains.payment.Payment;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface PaymentMapper {
	Payment toEntity(PaymentDto paymentDto);

	PaymentDto toDto(Payment payment);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	Payment partialUpdate(PaymentDto paymentDto, @MappingTarget Payment payment);
}