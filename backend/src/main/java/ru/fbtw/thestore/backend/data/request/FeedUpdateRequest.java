package ru.fbtw.thestore.backend.data.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import ru.fbtw.thestore.backend.data.catalog.dto.CategoryDto;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class FeedUpdateRequest {
    List<ProductDto> products;
    List<CategoryDto> categories;
}
