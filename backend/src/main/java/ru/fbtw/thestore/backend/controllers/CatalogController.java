package ru.fbtw.thestore.backend.controllers;


import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.catalog.dto.CategoryDto;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductPageDto;
import ru.fbtw.thestore.backend.domains.catalog.enums.ProductSort;
import ru.fbtw.thestore.backend.services.CategoryService;
import ru.fbtw.thestore.backend.services.ProductService;

import java.io.File;
import java.util.List;
/**DONE!*/
@RestController
@RequestMapping("/catalog")
@AllArgsConstructor
@Tag(name = "Catalog Controller")
public class CatalogController {
    private final CategoryService categoryService;
    private final ProductService productService;

    @GetMapping()
    @Operation(summary = "Getting products page by page", responses = {
            @ApiResponse(responseCode = "200", description = "Products found", content = {
                    @Content(mediaType = "application/json",
                            array = @ArraySchema(schema = @Schema(implementation = ProductDto.class)))
            }),
            @ApiResponse(responseCode = "404", description = "No products found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            }),
            @ApiResponse(responseCode = "400", description = "Invalid type of sort", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public ProductPageDto getProductsInPages(
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "size", required = false, defaultValue = "10") Integer size,
            @RequestParam(value = "sort", required = false, defaultValue = "BY_NAME") ProductSort sort,
            @RequestParam(value = "isAsc", required = false, defaultValue = "true") Boolean isAsc) {
        Page<CompactProductDto> pages = productService.getProductsInPages(pageNumber - 1, size, sort, isAsc);
        return new ProductPageDto(pages.getTotalPages(), pageNumber, size, pages.getContent());
    }
    @GetMapping("/{categoryId}/products")
    @Operation(summary = "Getting products related to a certain category page by page", responses = {
            @ApiResponse(responseCode = "200", description = "Products found", content = {
                    @Content(mediaType = "application/json",
                            array = @ArraySchema(schema = @Schema(implementation = ProductDto.class)))
            }),
            @ApiResponse(responseCode = "404", description = "No products found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            }),
            @ApiResponse(responseCode = "400", description = "Invalid type of sort or category_Id", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public ProductPageDto getProductsInPagesByCategory(
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "size", required = false, defaultValue = "10") Integer size,
            @RequestParam(value = "sort", required = false, defaultValue = "BY_NAME") ProductSort sort,
            @RequestParam(value = "isAsc", required = false, defaultValue = "true") Boolean isAsc,
            @PathVariable("categoryId") Long categoryId) {
        Page<CompactProductDto> pages = productService.getProductsInPagesByCategory(categoryId,
                pageNumber - 1, size, sort, isAsc);
        return new ProductPageDto(pages.getTotalPages(), pageNumber, size, pages.getContent());
    }

    @GetMapping("/{id}")
    @Operation(summary = "Get product by id", responses = {
            @ApiResponse(responseCode = "200", description = "Product found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ProductDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "No product found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public ProductDto getProductById(@PathVariable("id") Long id) {
        return productService.getProductById(id);
    }

    @PostMapping("product/add")
    @Operation(summary = "Обновление каталога, @RequestBody File file пока так," +
            "если не так, то я изменю")
    public void updateProducts(@RequestBody File file) {
        throw new RuntimeException();
    }
    // TODO:
    //  отдельный эндпоинт на обновление фида целиком

    @GetMapping("/category")
    @Operation(summary = "Getting list of categories", responses = {
            @ApiResponse(responseCode = "200", description = "Categories found", content = {
                    @Content(mediaType = "application/json",
                            array = @ArraySchema(schema = @Schema(implementation = CategoryDto.class)))
            }),
            @ApiResponse(responseCode = "404", description = "No categories found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public List<CategoryDto> getCategories() {
        return categoryService.getCategories();
    }


    @PostMapping("/category/add")
    @Operation(summary = "Add new category", responses = {
            @ApiResponse(responseCode = "201", description = "Added new category", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = CategoryDto.class))
            }),
            @ApiResponse(responseCode = "400", description = "Invalid request", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public void addСategory(@Valid @RequestBody CategoryDto category) {
        categoryService.addСategory(category);
    }
}
