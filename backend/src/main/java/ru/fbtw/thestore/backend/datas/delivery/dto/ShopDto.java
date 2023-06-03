package ru.fbtw.thestore.backend.datas.delivery.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domains.delivery.Shop} entity
 */
@Data
public class ShopDto implements Serializable {
	private final Long id;
	private final String shopName;
	private final String shopAddress;
	private final String shopPhone;
	private final String shopWorkhours;
	private final String shopPicture;
	private final BigDecimal lat;
	private final BigDecimal lon;
}