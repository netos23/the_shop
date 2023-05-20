package ru.fbtw.thestore.backend.data.geo.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.geo.dto.PointDto;
import ru.fbtw.thestore.backend.domain.geo.Point;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface PointMapper {
    Point toEntity(PointDto pointDto);

    PointDto toDto(Point point);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    Point partialUpdate(PointDto pointDto, @MappingTarget Point point);
}
