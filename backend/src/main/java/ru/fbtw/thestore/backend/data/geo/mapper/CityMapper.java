package ru.fbtw.thestore.backend.data.geo.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.geo.dto.CityDto;
import ru.fbtw.thestore.backend.domain.geo.City;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface CityMapper {
	City toEntity(CityDto cityDto);

	CityDto toDto(City city);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	City partialUpdate(CityDto cityDto, @MappingTarget City city);
}