package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.City} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CityDto {
    private Long id;
    private String cityName;
    private String cityRegion;
}