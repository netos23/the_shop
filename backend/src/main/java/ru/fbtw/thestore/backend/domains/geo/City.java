package ru.fbtw.thestore.backend.domains.geo;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

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

    @Column(name = "city_code", nullable = false, length = 100)
    private String cityCode;

    @Column(name = "city_region", nullable = false, length = 100)
    private String cityRegion;

}