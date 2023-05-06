package ru.fbtw.thestore.backend.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_id", nullable = false)
    private Long id;

    @Column(name = "category_name", nullable = false, length = 100)
    private String categoryName;

    @OneToMany(cascade = CascadeType.MERGE,
            mappedBy = "category", fetch = FetchType.EAGER)
    private Set<Product> products = new HashSet<>();

}