package ru.fbtw.thestore.backend.datas.user.mapper;

import org.mapstruct.*;
import ru.fbtw.thestore.backend.datas.user.dto.MyUserDto;
import ru.fbtw.thestore.backend.domains.user.MyUser;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface MyUserMapper {
	MyUser toEntity(MyUserDto myUserDto);

	MyUserDto toDto(MyUser myUser);

	@BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
	MyUser partialUpdate(MyUserDto myUserDto, @MappingTarget MyUser myUser);
}