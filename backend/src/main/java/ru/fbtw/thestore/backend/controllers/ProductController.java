package ru.fbtw.thestore.backend.controllers;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.fbtw.thestore.backend.models.DTO.PagingDto;
import ru.fbtw.thestore.backend.models.DTO.ProductPageDTO;
import ru.fbtw.thestore.backend.models.enums.ProductCategoryEnum;
import ru.fbtw.thestore.backend.models.enums.ProductSortEnum;
import ru.fbtw.thestore.backend.services.ProductService;

@RestController
@RequestMapping("/product")
@AllArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/catalog")
    public ResponseEntity<?> getMoviesInPages(
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "size", required = false, defaultValue = "10") Integer size,
            @RequestParam(value = "sort", required = false, defaultValue = "BY_NAME") ProductSortEnum sort,
            @RequestParam(value = "isAsc", required = false, defaultValue = "true") Boolean isAsc) {
        Page<ProductPageDTO> pages = productService.getProductsInPages(pageNumber - 1, size, sort, isAsc);
        return ResponseBuilder.build(new PagingDto(pageNumber, size, pages.getTotalPages()),
                pages.getContent());
    }
}
