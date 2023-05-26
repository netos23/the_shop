package ru.fbtw.thestore.backend.data.geo.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domains.geo.Point} entity
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PointDto implements Serializable {
    private Long id;
    @Size(max = 100)
    @NotBlank(message = "Invalid pointName: pointsName is BLANK")
    @NotNull(message = "Invalid cityName: cityName is NULL")
    private String pointName;
    @Size(max = 200)
    @NotBlank(message = "Invalid pointAddress: pointAddress is BLANK")
    @NotNull(message = "Invalid pointAddress: pointAddress is NULL")
    private String pointAddress;
    @Pattern(regexp = "^((\\+7|7|8)+([0-9]){10})$",
            message = "Invalid phone number")
    @NotBlank(message = "Invalid pointPhone: pointPhone is BLANK")
    @NotNull(message = "Invalid pointPhone: pointPhone is NULL")
    private String pointPhone;
    @Size(max = 12)
    @NotBlank(message = "Invalid cityName: cityName is BLANK")
    @NotNull(message = "Invalid cityName: cityName is NULL")
    private String pointWorkhours;
    @Size(max = 300)
    @NotBlank(message = "Invalid cityName: cityName is BLANK")
    @NotNull(message = "Invalid cityName: cityName is NULL")
    private String pointPicture;
}

