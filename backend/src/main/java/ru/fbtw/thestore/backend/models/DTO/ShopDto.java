package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.Shop} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ShopDto{
    private Long id;
    private String shopName;
    private String shopAddress;
    private String shopPhone;
    private String shopWorkhours;
    private String shopPicture;
}