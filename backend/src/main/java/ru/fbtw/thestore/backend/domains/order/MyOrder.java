package ru.fbtw.thestore.backend.domains.order;

import jakarta.persistence.*;
import lombok.*;
import ru.fbtw.thestore.backend.domains.catalog.Product;
import ru.fbtw.thestore.backend.domains.delivery.Delivery;
import ru.fbtw.thestore.backend.domains.delivery.Shop;
import ru.fbtw.thestore.backend.domains.payment.Payment;
import ru.fbtw.thestore.backend.domains.user.MyUser;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
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
    private boolean orderStatus; //оплачен или нет

    @ManyToOne(cascade = { CascadeType.MERGE, CascadeType.REFRESH })
    @JoinColumn(name = "user_id")
    private MyUser user;

    @OneToOne
    @JoinColumn(name = "delivery_id")
    private Delivery delivery;

    @OneToOne
    @JoinColumn(name = "payment_id")
    private Payment payment;

    @ManyToOne(cascade = { CascadeType.MERGE, CascadeType.REFRESH })
    @JoinColumn(name = "shop_id")
    private Shop shop;

    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    },
            fetch = FetchType.LAZY)
    @JoinTable(name = "order_product",
            joinColumns = @JoinColumn(name = "order_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id")
    )
    private Set<Product> products = new HashSet<>();
}