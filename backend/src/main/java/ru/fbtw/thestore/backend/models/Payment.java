package ru.fbtw.thestore.backend.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "payment")
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_id", nullable = false)
    private Long id;

    @Column(name = "payment_name", nullable = false, length = 50)
    private String paymentName;

    @OneToOne(mappedBy = "payment")
    private MyOrder order;

}