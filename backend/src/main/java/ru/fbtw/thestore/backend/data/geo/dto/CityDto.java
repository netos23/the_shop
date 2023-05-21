package ru.fbtw.thestore.backend.data.geo.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.geo.City} entity
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CityDto implements Serializable {

	private Long id;
	@NotBlank(message = "Invalid cityName: cityName is BLANK")
	@NotNull(message = "Invalid cityName: cityName is NULL")
	@Size(max = 100)
	private String cityName;
	@NotBlank(message = "Invalid cityCode: cityCode is BLANK")
	@NotNull(message = "Invalid cityCode: cityCode is NULL")
	@Size(max = 100)
	private String cityCode;
	@NotBlank(message = "Invalid cityRegion: cityRegion is BLANK")
	@NotNull(message = "Invalid cityRegion: cityRegion is NULL")
	@Size(max = 100)
	private String cityRegion;
}

//todo ПОПРАВИТЬ ВСЕ АННОТАЦИИ ДЛЯ ДТО!