package ru.fbtw.thestore.backend.datas.catalog.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.io.Serializable;
import java.util.Set;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domains.catalog.Category} entity
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CategoryDto implements Serializable {
    private Long id;
    @NotBlank(message = "Invalid categoryName: categoryName is BLANK")
    @NotNull(message = "Invalid categoryName: categoryName is NULL")
    private String categoryName;
    @NotBlank(message = "Invalid picture: picture is BLANK")
    @NotNull(message = "Invalid picture: picture is NULL")
    private String picture;
    private Set<CategoryDto> children;

    /**
     *@NotBlank - строка может быть null, но не может состоять ТОЛЬКО из
    пробелов и/или символов переноса строки
     *@NotNull - строка не может быть null, но может состоять ТОЛЬКО из
    пробелов и/или символов переноса строки  */
}