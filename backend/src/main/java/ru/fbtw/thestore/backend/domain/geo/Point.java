package ru.fbtw.thestore.backend.domain.geo;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "points")
public class Point {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "points_id", nullable = false)
    private Long id;

    @Size(max = 100)
    @NotNull
    @Column(name = "points_name", nullable = false, length = 100)
    private String pointsName;

    @Size(max = 200)
    @NotNull
    @Column(name = "points_address", nullable = false, length = 200)
    private String pointsAddress;

    @Size(max = 12)
    @NotNull
    @Column(name = "points_phone", nullable = false, length = 12)
    private String pointsPhone;

    @Size(max = 12)
    @NotNull
    @Column(name = "points_workhours", nullable = false, length = 12)
    private String pointsWorkhours;

    @Size(max = 300)
    @Column(name = "points_picture", length = 300)
    private String pointsPicture;

}