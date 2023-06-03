package ru.fbtw.thestore.backend.datas.catalog.dto;

import lombok.Data;
import ru.fbtw.thestore.backend.domains.catalog.Product;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

/**
 * A DTO for the {@link Product} entity
 */
@Data
public class ProductDto implements Serializable {
	private final Long id;
	private final String productName;
	private final BigDecimal productPrice;
	private final BigDecimal productOldPrice;
	private final Integer productVolume;
	private final String productDescription;
	private final Integer productAmount;
	private final Long categoryId;
	private final List<String> pictures;
	private final Set<ProductParamDto> productParams;
}