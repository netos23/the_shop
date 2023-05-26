package ru.fbtw.thestore.backend.domains.payment;

import jakarta.persistence.*;
import lombok.*;
import ru.fbtw.thestore.backend.data.payment.dto.PaymentType;
import ru.fbtw.thestore.backend.domains.order.MyOrder;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "payment")
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_id", nullable = false)
    private Long id;

    @Column(name = "payment_type", nullable = false, length = 20)
    @Enumerated(EnumType.STRING)
    private PaymentType paymentType;

    @Column(name = "payment_picture", nullable = false, length = 300)
    private String picture;

    @OneToOne( fetch = FetchType.EAGER, cascade = CascadeType.MERGE,
            mappedBy = "payment")
    private MyOrder order;

    //todo поправить
}