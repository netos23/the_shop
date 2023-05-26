package ru.fbtw.thestore.backend.domains.delivery;

import jakarta.persistence.*;
import lombok.*;
import ru.fbtw.thestore.backend.domains.order.MyOrder;
import ru.fbtw.thestore.backend.domains.user.MyUser;

import java.math.BigDecimal;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "delivery")
/**DONE!*/
public class Delivery {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "delivery_id", nullable = false)
    private Long id;
    @Column(name = "delivery_price", nullable = false, precision = 5, scale = 3)
    private BigDecimal price;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.MERGE,
            mappedBy = "delivery")
    private MyOrder order;

    @ManyToOne(fetch = FetchType.LAZY,
            cascade = {CascadeType.MERGE, CascadeType.REFRESH})
    @JoinColumn(name = "user_id")
    private MyUser user;

}