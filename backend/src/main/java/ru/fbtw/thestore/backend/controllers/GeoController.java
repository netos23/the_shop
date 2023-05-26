package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.geo.dto.CityDto;
import ru.fbtw.thestore.backend.services.GeoService;

import java.util.List;

@RestController
@RequestMapping("/geo")
@RequiredArgsConstructor
@Tag(name = "Geo Controller")
public class GeoController {
    /**DONE!*/
    private final GeoService geoService;

    @GetMapping("/city")
    @Operation(summary = "Getting all cities", responses = {
            @ApiResponse(responseCode = "200", description = "Cities found", content = {
                    @Content(mediaType = "application/json",
                            array = @ArraySchema(schema = @Schema(implementation = CityDto.class)))
            }),
            @ApiResponse(responseCode = "404", description = "No cities found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public List<CityDto> getAllCities() {
       return geoService.getAllCities();
    }

    @PostMapping("/city/add")
    @Operation(summary = "Add new city", responses = {
            @ApiResponse(responseCode = "201", description = "Added new city", content = {
                    @Content(mediaType = "application/json",
                           schema = @Schema(implementation = CityDto.class))
            }),
            @ApiResponse(responseCode = "400", description = "Invalid request", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public CityDto addCity(@Valid @RequestBody CityDto cityDto) {
       return geoService.addCity(cityDto);
    }
}
