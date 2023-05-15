package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.geo.dto.CityDto;
import ru.fbtw.thestore.backend.data.geo.dto.PointDto;
import ru.fbtw.thestore.backend.services.GeoService;

import java.util.List;

@RestController
@RequestMapping("/geo")
@RequiredArgsConstructor
@Tag(name = "Контроллер геопозиции")
public class GeoController {
    private final GeoService geoService;

    @GetMapping("/city")
    @Operation(summary = "Список городов")
    public List<CityDto> getAllCities() {
       return geoService.getAllCities();
    }
    @GetMapping("/points")
    @Operation(summary = "Список точек самовывоза")
    public List<PointDto> getAllPoints() {
     return geoService.getAllPoints();
    }
    @GetMapping("/point/{id}")
    @Operation(summary = "Информация о точке самовывоза")
    public PointDto getPointById(@PathVariable("id") Long id) {
        return geoService.getPointById(id);
    }

    @PostMapping("/city/add")
    @Operation(summary = "Добавить город")
    public void addCity(@Valid @RequestBody CityDto cityDto) {
       geoService.addCity(cityDto);
    }
    @PostMapping("/points/add")
    @Operation(summary = "Добавить точку самовывоза")
    public void addPoint(@Valid @RequestBody PointDto pointDto) {
        geoService.addPoint(pointDto);
    }
}
