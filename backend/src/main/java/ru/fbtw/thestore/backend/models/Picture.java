package ru.fbtw.thestore.backend.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "picture")
public class Picture {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "picture_id", nullable = false)
    private Long id;

    @Column(name = "picture_path", nullable = false, length = 300)
    private String picturePath;

    @OneToOne(mappedBy = "picture")
    private Product product;

}