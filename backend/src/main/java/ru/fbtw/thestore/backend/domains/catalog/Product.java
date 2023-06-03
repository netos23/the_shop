package ru.fbtw.thestore.backend.domains.catalog;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.Hibernate;
import ru.fbtw.thestore.backend.domains.delivery.Delivery;

import java.math.BigDecimal;
import java.util.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
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

    @Column(name = "basket_quantity", nullable = false)
    private Integer basketQuantity;  //количество продуктов в корзине

    @Column(name = "product_description", nullable = false, length = 300)
    private String productDescription;

    @Column(name = "product_amount", nullable = false)
    private Integer productAmount;

    @Column(name = "picture_path", nullable = false, length = 300)
    private String picturePath;

    @ManyToOne(cascade = { CascadeType.MERGE, CascadeType.REFRESH })
    @JoinColumn(name = "category_id")
    private Category category;

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