package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.geo.dto.CityDto;
import ru.fbtw.thestore.backend.data.geo.dto.PointDto;

import java.util.List;

@RestController
@RequestMapping("/geo")
@AllArgsConstructor
@Tag(name = "Контроллер геопозиции")
public class GeoController {
    @GetMapping("/city")
    @Operation(summary = "Список городов")
    public List<CityDto> getAllCities() {
        throw new RuntimeException();
    }
    @GetMapping("/points")
    @Operation(summary = "Список точек самовывоза")
    public List<PointDto> getAllPoints() {
        throw new RuntimeException();
    }
}
