package ru.fbtw.thestore.backend.data.catalog.dto;


import lombok.*;
import ru.fbtw.thestore.backend.domains.catalog.Product;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

/**
 * A DTO for the {@link Product} entity
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductDto implements Serializable {
	private Long id;
	private String productName;
	private String productPrice;
	private String productOldPrice;
	private Integer basketQuantity;
	private String productDescription;
	private Integer productAmount;
//	private Long categoryId;
	private String picturePath;

}