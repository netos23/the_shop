package ru.fbtw.thestore.backend.controllers;


import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.datas.catalog.dto.CategoryDto;
import ru.fbtw.thestore.backend.datas.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.datas.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.datas.catalog.dto.ProductPageDto;
import ru.fbtw.thestore.backend.domains.catalog.enums.ProductSort;
import ru.fbtw.thestore.backend.services.CategoryService;

import java.io.File;
import java.util.List;

@RestController
@RequestMapping("/catalog")
@AllArgsConstructor
@Tag(name = "catalog")
public class CatalogController {
    private final CategoryService categoryService;

    @GetMapping()
    @Operation(summary = "Каталог постранично", tags = "catalog")
    public ProductPageDto getProductsInPages(
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "size", required = false, defaultValue = "10") Integer size,
            @RequestParam(value = "sort", required = false, defaultValue = "BY_NAME") ProductSort sort,
            @RequestParam(value = "isAsc", required = false, defaultValue = "true") Boolean isAsc) {
        Page<CompactProductDto> pages = categoryService.getProductsInPages(pageNumber - 1, size, sort, isAsc);
        return new ProductPageDto(pages.getTotalPages(), pageNumber, size, pages.getContent());
    }

    @GetMapping("/{id}")
    @Operation(summary = "Карточка продукта", tags = "catalog")
    public ProductDto getProduct(@PathVariable("id") Long id) {
        return categoryService.getProduct(id);
    }

    @PostMapping("/add")
    @Operation(summary = "Обновление каталога, @RequestBody File file пока так," +
            "если не так, то я изменю", tags = "catalog")
    public void updateProducts(@RequestBody File file) {
        throw new RuntimeException();
    }

    @GetMapping("category")
    @Operation(summary = "Список категорий", tags = "catalog")
    public List<CategoryDto> getCategories() {
        return categoryService.getCategories();
    }

    @GetMapping("category/{id}")
    @Operation(summary = "Список подкатегорий категории", tags = "catalog")
    public List<CategoryDto> getSubcategories(@PathVariable("id") Long categoryId) {
        return categoryService.getSubcategories(categoryId);
    }

    @PostMapping("category/add")
    @Operation(summary = "Добавление новой категории", tags = "catalog")
    public void addСategory(@Valid @RequestBody CategoryDto category) {
        categoryService.addСategory(category);
    }


    // TODO:
    //  updateProducts

}
