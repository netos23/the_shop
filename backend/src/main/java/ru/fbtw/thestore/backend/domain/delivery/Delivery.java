package ru.fbtw.thestore.backend.domain.delivery;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@Entity
@Table(name = "delivery")
public class Delivery {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "delivery_id", nullable = false)
    private Long id;

    @Column(name = "delivery_name", nullable = false, length = 50)
    private String deliveryName;

    @Column(name = "delivery_picture", nullable = false, length = 300)
    private String picture;

    @Column(name = "delivery_price", precision = 5, scale = 3)
    private BigDecimal price;


}