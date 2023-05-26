package ru.fbtw.thestore.backend.domains.delivery;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import ru.fbtw.thestore.backend.domains.order.MyOrder;

import java.math.BigDecimal;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "shop")
public class Shop {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "shop_id", nullable = false)
    private Long id;

    @Column(name = "shop_name", nullable = false, length = 100)
    private String shopName;

    @Column(name = "shop_address", nullable = false, length = 200)
    private String shopAddress;

    @Column(name = "shop_phone", nullable = false, length = 12)
    private String shopPhone;

    @Column(name = "shop_workhours", nullable = false, length = 12)
    private String shopWorkHours;

    @Column(name = "shop_picture", length = 300)
    private String shopPicture;

    @Column(name = "shop_lat", nullable = false, precision = 5, scale = 3)
    private BigDecimal lat;

    @Column(name = "shop_lon", nullable = false, precision = 5, scale = 3)
    private BigDecimal lon;

    @OneToMany(cascade = CascadeType.MERGE,
            mappedBy = "shop", fetch = FetchType.EAGER)
    private Set<MyOrder> order;

}