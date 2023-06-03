package ru.fbtw.thestore.backend.datas.geo.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.datas.geo.dto.PointDto;
import ru.fbtw.thestore.backend.domains.geo.Point;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface PointMapper {
    Point toEntity(PointDto pointDto);

    PointDto toDto(Point point);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    Point partialUpdate(PointDto pointDto, @MappingTarget Point point);
}
