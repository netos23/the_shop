package ru.fbtw.thestore.backend.data.catalog.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Set;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.catalog.Category} entity
 */
@Data
public class CategoryDto implements Serializable {
	private final Long id;
	private final String categoryName;
	private final String picture;
	private final Set<CategoryDto> children;
}