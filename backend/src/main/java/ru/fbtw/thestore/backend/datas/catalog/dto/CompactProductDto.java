package ru.fbtw.thestore.backend.datas.catalog.dto;

import lombok.Data;
import ru.fbtw.thestore.backend.domains.catalog.Product;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * A DTO for the {@link Product} entity
 */
@Data
public class CompactProductDto implements Serializable {
	private final Long id;
	private final String productName;
	private final BigDecimal productPrice;
	private final BigDecimal productOldPrice;
	private final Long categoryId;
	private final List<String> pictures;
}