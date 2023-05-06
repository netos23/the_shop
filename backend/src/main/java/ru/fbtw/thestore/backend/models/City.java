package ru.fbtw.thestore.backend.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "city")
public class City {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "city_id", nullable = false)
    private Long id;

    @Column(name = "city_name", nullable = false, length = 100)
    private String cityName;

    @Column(name = "city_region", nullable = false, length = 100)
    private String cityRegion;

    @OneToMany(mappedBy = "city")
    private Set<MyUser> users = new HashSet<>();

}