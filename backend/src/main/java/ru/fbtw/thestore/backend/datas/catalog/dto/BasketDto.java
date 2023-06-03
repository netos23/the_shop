package ru.fbtw.thestore.backend.datas.catalog.dto;

import java.math.BigDecimal;
import java.util.Set;

public class BasketDto {

    private Set<ProductDto> products;
    private BigDecimal sum;
    private BigDecimal discount;
    private BigDecimal totalSum;
}
