package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.Banner} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class BannerDto {
    private Long id;
    private String bannerPath;
}