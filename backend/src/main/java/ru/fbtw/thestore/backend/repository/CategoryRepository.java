package ru.fbtw.thestore.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domain.catalog.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {
}