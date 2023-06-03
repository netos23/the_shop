package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domains.geo.Point;

public interface PointRepository extends JpaRepository<Point, Long> {
}
