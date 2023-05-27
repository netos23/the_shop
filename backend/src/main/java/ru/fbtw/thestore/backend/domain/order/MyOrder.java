package ru.fbtw.thestore.backend.domain.order;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import ru.fbtw.thestore.backend.domain.catalog.Product;
import ru.fbtw.thestore.backend.domain.delivery.Delivery;
import ru.fbtw.thestore.backend.domain.payment.Payment;
import ru.fbtw.thestore.backend.domain.user.MyUser;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "my_order")
public class MyOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id", nullable = false)
    private Long id;

    @Column(name = "order_total", nullable = false, precision = 5, scale = 3)
    private BigDecimal orderTotal;

    @Column(name = "order_status", nullable = false, length = 10)
    private String orderStatus;

    @Column(name = "payment_status", nullable = false, length = 35)
    private String paymentStatus;
    @Column(name = "delivery_status", nullable = false, length = 35)
    private String deliveryStatus;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private MyUser user;

    @OneToOne
    @JoinColumn(name = "delivery_id")
    private Delivery delivery;

    @OneToOne
    @JoinColumn(name = "payment_id")
    private Payment payment;

    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    },
            fetch = FetchType.EAGER)
    @JoinTable(name = "order_product",
            joinColumns = @JoinColumn(name = "order_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id")
    )
    private Set<Product> products = new HashSet<>();



}