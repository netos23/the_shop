package ru.fbtw.thestore.backend.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

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

    @OneToOne
    @JoinColumn(name = "picture_id")
    private Picture picture;

}