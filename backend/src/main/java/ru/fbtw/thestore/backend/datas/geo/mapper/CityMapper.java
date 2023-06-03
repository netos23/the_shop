package ru.fbtw.thestore.backend.datas.geo.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.datas.geo.dto.CityDto;
import ru.fbtw.thestore.backend.domains.geo.City;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface CityMapper {
	City toEntity(CityDto cityDto);

	CityDto toDto(City city);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	City partialUpdate(CityDto cityDto, @MappingTarget City city);
}