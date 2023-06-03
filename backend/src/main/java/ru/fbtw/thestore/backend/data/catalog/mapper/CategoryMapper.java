package ru.fbtw.thestore.backend.data.catalog.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.data.catalog.dto.CategoryDto;
import ru.fbtw.thestore.backend.domains.catalog.Category;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface CategoryMapper {
    @Mapping(target = "id", ignore = true)
    Category toEntity(CategoryDto categoryDto);


    CategoryDto toDto(Category category);


    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    Category partialUpdate(CategoryDto categoryDto, @MappingTarget Category category);
}
