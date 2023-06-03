package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.catalog.mapper.CompactProductMapper;
import ru.fbtw.thestore.backend.data.catalog.mapper.ProductMapper;
import ru.fbtw.thestore.backend.domains.catalog.Product;
import ru.fbtw.thestore.backend.domains.catalog.enums.ProductSort;
import ru.fbtw.thestore.backend.repositories.ProductRepository;

@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
    private final CompactProductMapper compactProductMapper;
    private final ProductMapper productMapper;

    public Page<CompactProductDto> getProductsInPages(Integer pageNumber, Integer size,
                                                      ProductSort sort, Boolean isAsc) {
        var pageable = PageRequest.of(pageNumber, size, sort(sort, isAsc));
        Page<Product> pages = productRepository.findAll(pageable);
        return pages.map(compactProductMapper::toDto);
    }

    public ProductDto getProductById(Long id) {
        Product product = productRepository.findById(id).orElseThrow();
        ProductDto productDto = productMapper.toDto(product);
        return productDto;
    }

    public CompactProductDto getCompactProductProductById(Long id) {
        Product product = productRepository.findById(id).orElseThrow();
        return compactProductMapper.toDto(product);
    }

    private Sort sort(ProductSort sort, Boolean isAsc) {
        Sort pageSort = switch (sort) {
            case BY_NAME -> Sort.by("product_name");
            case BY_PRICE -> Sort.by("product_price");
        };
        if (isAsc) {
            return pageSort.ascending();
        }
        return pageSort.descending();
    }

    public Page<CompactProductDto> getProductsInPagesByCategory(Long categoryId, Integer pageNumber, Integer size,
                                                                ProductSort sort, Boolean isAsc) {
        var pageable = PageRequest.of(pageNumber, size, sort(sort, isAsc));
        Page<Product> pages = productRepository.findAllByCategory_Id(pageable, categoryId);
        return pages.map(compactProductMapper::toDto);
    }

    @Transactional
    public void updateBasketQuantity(Long productId) {
        Product product = productRepository.findById(productId).orElseThrow();
        product.setBasketQuantity(product.getBasketQuantity()+1);
        productRepository.save(product);
    }
}
