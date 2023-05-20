package ru.fbtw.thestore.backend.domain.catalog;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.Hibernate;

import java.math.BigDecimal;
import java.util.*;

@Getter
@Setter
@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id", nullable = false)
    private Long id;

    @Column(name = "product_name", nullable = false, length = 100)
    private String productName;

    @Column(name = "product_price", nullable = false, precision = 5, scale = 3)
    private BigDecimal productPrice;

    @Column(name = "product_old_price", nullable = false, precision = 5, scale = 3)
    private BigDecimal productOldPrice;

    @Column(name = "product_volume", nullable = false)
    private Integer productVolume;

    @Column(name = "product_description", nullable = false, length = 300)
    private String productDescription;

    @Column(name = "product_amount", nullable = false)
    private Integer productAmount;

    //один продукт относится строго к одной категории!
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;


    @ElementCollection
    @Column(name = "picture", length = 300)
    @CollectionTable(name = "product_pictures", joinColumns = @JoinColumn(name = "product_id"))
    private List<String> pictures = new ArrayList<>();

    @OneToMany(mappedBy = "product", orphanRemoval = true)
    private Set<ProductParam> productParams = new LinkedHashSet<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        Product product = (Product) o;
        return getId() != null && Objects.equals(getId(), product.getId());
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}