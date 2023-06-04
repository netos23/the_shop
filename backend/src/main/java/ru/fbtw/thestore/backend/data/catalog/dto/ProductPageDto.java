package ru.fbtw.thestore.backend.data.catalog.dto;

import lombok.*;

import java.io.Serializable;
import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductPageDto implements Serializable {
	private int count;
	private int page;
	private int pageSize;
	private List<CompactProductDto> products;
}
