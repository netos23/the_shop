package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import ru.fbtw.thestore.backend.models.DTO.ProductPageDTO;
import ru.fbtw.thestore.backend.models.Product;
import ru.fbtw.thestore.backend.models.enums.ProductSortEnum;
import ru.fbtw.thestore.backend.models.mappers.ProductMapper;
import ru.fbtw.thestore.backend.repositories.ProductRepository;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;
    private final ProductMapper productMapper;

    public Page<ProductPageDTO> getProductsInPages(Integer pageNumber, Integer size,
                                                   ProductSortEnum sort, Boolean isAsc) {
        var pageable = PageRequest.of(pageNumber, size, sort(sort, isAsc));
        Page<Product> pages = productRepository.getProductsInPage(pageable);
        return pages.map(productMapper::toPageDTOFromEntity);
    }
    private Sort sort(ProductSortEnum sort, Boolean isAsc) {
        Sort pageSort = switch (sort) {
            case BY_NAME -> Sort.by("productName");
            case BY_PRICE -> Sort.by("productPrice");
            case BY_CATEGORY -> Sort.by("category");
        };
        if (isAsc) {
            return pageSort.ascending();
        }
        return pageSort.descending();
    }

}
