package ru.fbtw.thestore.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domain.geo.City;

public interface CityRepository extends JpaRepository<City, Long> {
}
