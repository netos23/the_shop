package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.Picture} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PictureDto {
    private Long id;
    private String picturePath;
}