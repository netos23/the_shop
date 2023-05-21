package ru.fbtw.thestore.backend.data.catalog.dto;

import lombok.Data;
import ru.fbtw.thestore.backend.domain.catalog.ProductParam;

import java.io.Serializable;

/**
 * A DTO for the {@link ProductParam} entity
 */
@Data
public class ProductParamDto implements Serializable {
	private final Long id;
	private final String name;
	private final String value;
}