package ru.fbtw.thestore.backend.domain.payment;

import jakarta.persistence.*;
import lombok.*;

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

    @Column(name = "payment_name", nullable = false, length = 50)
    private String paymentName;

    @Column(name = "picture", nullable = false, length = 300)
    private String picture;
}