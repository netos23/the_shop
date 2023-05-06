package ru.fbtw.thestore.backend.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

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

    @Column(name = "delivery_status", nullable = false, length = 35)
    private String deliveryStatus;

    @OneToOne(mappedBy = "delivery")
    private MyOrder order;

}