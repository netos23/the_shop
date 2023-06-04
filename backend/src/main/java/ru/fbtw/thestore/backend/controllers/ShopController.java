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
import ru.fbtw.thestore.backend.data.delivery.dto.ShopDto;
import ru.fbtw.thestore.backend.services.ShopService;

import java.util.List;

@RestController
@RequestMapping("/shop")
@RequiredArgsConstructor
@Tag(name = "Shop Controller")
public class ShopController {
    /**DONE!*/
    private final ShopService shopService;
    @GetMapping("/points")
    @Operation(summary = "Getting all points", responses = {
            @ApiResponse(responseCode = "200", description = "Points found", content = {
                    @Content(mediaType = "application/json",
                            array = @ArraySchema(schema = @Schema(implementation = ShopDto.class)))
            }),
            @ApiResponse(responseCode = "404", description = "No shops found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public List<ShopDto> getAllPoints() {
        return shopService.getAllShops();
    }
    @GetMapping("/point/{id}")
    @Operation(summary = "Get point by id", responses = {
            @ApiResponse(responseCode = "200", description = "Point found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ShopDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "No shop found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public ShopDto getPointById(@PathVariable("id") Long id) {
        return shopService.getShopById(id);
    }

    @PostMapping("/point/add")
    @Operation(summary = "Add new point", responses = {
            @ApiResponse(responseCode = "201", description = "Added new point", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ShopDto.class))
            }),
            @ApiResponse(responseCode = "400", description = "Invalid request", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public void addNewShop(@Valid @RequestBody ShopDto shopDto) {
        shopService.addNewShop(shopDto);
    }
}
