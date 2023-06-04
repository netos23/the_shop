package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ru.fbtw.thestore.backend.domains.catalog.Product;
@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
	@Query(value = """
                    SELECT *
                    FROM product
                    """, nativeQuery = true)
	Page<Product> findAll(PageRequest pageRequest);
	@Query(value = """
                    SELECT *
                    FROM product
                    WHERE category_id = :categoryId
                    """, nativeQuery = true)
	Page<Product> findAllByCategory_Id(PageRequest pageRequest, @Param("categoryId") Long categoryId);
}