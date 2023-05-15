package ru.fbtw.thestore.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domain.geo.Point;

public interface PointRepository extends JpaRepository<Point, Long> {
}
