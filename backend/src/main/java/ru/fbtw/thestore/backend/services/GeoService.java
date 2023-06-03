package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.geo.dto.CityDto;
import ru.fbtw.thestore.backend.data.geo.mapper.CityMapper;
import ru.fbtw.thestore.backend.domains.geo.City;
import ru.fbtw.thestore.backend.repositories.CityRepository;


import java.util.List;

@Service
@RequiredArgsConstructor
public class GeoService {
    /**DONE!*/
    private final CityRepository cityRepository;
    private final CityMapper cityMapper;

    public List<CityDto> getAllCities() {
        List<City> cities = cityRepository.findAll();
        return cities.stream().map(cityMapper::toDto).toList();
    }

    @Transactional
    public CityDto addCity(CityDto cityDto) {
        City city = cityRepository.save(cityMapper.toEntity(cityDto));
        return cityMapper.toDto(city);
    }
}

