package ru.fbtw.thestore.backend.data.geo.dto;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.geo.Point} entity
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PointDto implements Serializable {
    private Long id;
    @Size(max = 100)
    @NotNull
    private String pointsName;
    @Size(max = 200)
    @NotNull
    private String pointsAddress;
    @Size(max = 12)
    @NotNull
    private String pointsPhone;
    @Size(max = 12)
    @NotNull
    private String pointsWorkhours;
    @Size(max = 300)
    private String pointsPicture;
}