package ru.fbtw.thestore.backend.data.catalog.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class ProductPageDto implements Serializable {
	final int count;
	final int page;
	final int pageSize;
	final List<CompactProductDto> products;
}
