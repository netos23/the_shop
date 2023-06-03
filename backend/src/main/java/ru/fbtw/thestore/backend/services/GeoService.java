package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.datas.geo.dto.CityDto;
import ru.fbtw.thestore.backend.datas.geo.dto.PointDto;
import ru.fbtw.thestore.backend.datas.geo.mapper.CityMapper;
import ru.fbtw.thestore.backend.datas.geo.mapper.PointMapper;
import ru.fbtw.thestore.backend.domains.geo.City;
import ru.fbtw.thestore.backend.domains.geo.Point;
import ru.fbtw.thestore.backend.repositories.CityRepository;
import ru.fbtw.thestore.backend.repositories.PointRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GeoService {
    private final CityRepository cityRepository;
    private final PointRepository pointRepository;
    private final CityMapper cityMapper;
    private final PointMapper pointMapper;

    public List<CityDto> getAllCities() {
        List<City> cities = cityRepository.findAll();
        return cities.stream().map(cityMapper::toDto).toList();
    }

    public List<PointDto> getAllPoints() {
        List<Point> points = pointRepository.findAll();
        return points.stream().map(pointMapper::toDto).toList();
    }
    public PointDto getPointById(Long id) {
        Point point = pointRepository.findById(id).orElseThrow();
        return pointMapper.toDto(point);
    }

    @Transactional
    public void addCity(CityDto cityDto) {
        cityRepository.save(cityMapper.toEntity(cityDto));
    }

    @Transactional
    public void addPoint(PointDto pointDto){
        pointRepository.save(pointMapper.toEntity(pointDto));
    }
}
