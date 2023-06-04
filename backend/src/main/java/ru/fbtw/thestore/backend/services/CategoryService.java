package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.catalog.dto.CategoryDto;

import ru.fbtw.thestore.backend.data.catalog.mapper.CategoryMapper;
import ru.fbtw.thestore.backend.domains.catalog.Category;
import ru.fbtw.thestore.backend.repositories.CategoryRepository;

import java.util.List;

/**DONE!*/
@Service
@RequiredArgsConstructor
public class CategoryService {
    private final CategoryRepository categoryRepository;
    private final CategoryMapper categoryMapper;

    public List<CategoryDto> getCategories() {
        List<Category> categories = categoryRepository.findAll();
        return categories.stream().map(categoryMapper::toDto).toList();
    }
    @Transactional
    public void addСategory(CategoryDto categoryDto) {
        Category category = categoryMapper.toEntity(categoryDto);
        categoryRepository.save(category);
    }

    @Transactional
    public void deleteAllCategories(){
        categoryRepository.deleteAll();
    }
    @Transactional
    public void updateAllCategories(List<CategoryDto> categories){
        List<Category> updateCategories = categories.stream().map(categoryMapper::toEntity).toList();
        categoryRepository.saveAll(updateCategories);
    }
}
