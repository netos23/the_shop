package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domains.geo.City;

public interface CityRepository extends JpaRepository<City, Long> {
}
