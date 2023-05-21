package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.catalog.dto.CategoryDto;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;


import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.catalog.mapper.CategoryMapper;
import ru.fbtw.thestore.backend.data.catalog.mapper.CompactProductMapper;
import ru.fbtw.thestore.backend.data.catalog.mapper.ProductMapper;
import ru.fbtw.thestore.backend.domain.catalog.Category;
import ru.fbtw.thestore.backend.domain.catalog.Product;
import ru.fbtw.thestore.backend.domain.catalog.enums.ProductSort;
import ru.fbtw.thestore.backend.repository.CategoryRepository;
import ru.fbtw.thestore.backend.repository.ProductRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final ProductRepository productRepository;
    private final CategoryRepository categoryRepository;
    private final CompactProductMapper compactProductMapper;
    private final ProductMapper productMapper;
    private final CategoryMapper categoryMapper;


    public Page<CompactProductDto> getProductsInPages(Integer pageNumber, Integer size,
                                                      ProductSort sort, Boolean isAsc) {
        var pageable = PageRequest.of(pageNumber, size, sort(sort, isAsc));
        Page<Product> pages = productRepository.getProductsInPage(pageable);
        return pages.map(compactProductMapper::toDto);
    }
    public ProductDto getProduct(Long id){
        Product product = productRepository.findById(id).orElseThrow();
        return productMapper.toDto(product);
    }

    public List<CategoryDto> getCategories(){
        List<Category> categories = categoryRepository.findAll();
        return categories.stream().map(categoryMapper::toDto).toList();
    }

    public List<CategoryDto> getSubcategories(Long id){
        Category category = categoryRepository.findById(id).orElseThrow();
        return category.getChildren().stream().map(categoryMapper::toDto).toList();
    }
    @Transactional
    public void addСategory(CategoryDto categoryDto){
        categoryRepository.save(categoryMapper.toEntity(categoryDto));
    }

    private Sort sort(ProductSort sort, Boolean isAsc) {
        Sort pageSort = switch (sort) {
            case BY_NAME -> Sort.by("productName");
            case BY_PRICE -> Sort.by("productPrice");
        };
        if (isAsc) {
            return pageSort.ascending();
        }
        return pageSort.descending();
    }

}
