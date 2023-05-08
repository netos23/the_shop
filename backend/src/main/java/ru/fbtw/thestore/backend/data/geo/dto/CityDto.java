package ru.fbtw.thestore.backend.data.geo.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.geo.City} entity
 */
@Data
public class CityDto implements Serializable {
	private final Long id;
	private final String cityName;
	private final String cityCode;
}