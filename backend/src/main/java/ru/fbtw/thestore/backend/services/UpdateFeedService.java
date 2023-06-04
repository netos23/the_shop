package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.fbtw.thestore.backend.data.request.FeedUpdateRequest;

@Service
@RequiredArgsConstructor
public class UpdateFeedService {
    private final ProductService productService;
    private final CategoryService categoryService;

    public void updateFeed(FeedUpdateRequest feedUpdateRequest) {
        categoryService.deleteAllCategories();
        categoryService.updateAllCategories(feedUpdateRequest.getCategories());

        productService.deleteAllProducts();
        productService.updateProductFeed(feedUpdateRequest.getProducts());
    }
}
