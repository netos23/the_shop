package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.banner.dto.BannerDto;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.services.BannerService;


import java.util.List;

@RestController
@RequestMapping("/banner")
@RequiredArgsConstructor
@Tag(name = "Banner Controller")
public class BannerController {
    private final BannerService bannerService;

    @GetMapping()
    @Operation(summary = "List of all banners", responses = {
            @ApiResponse(responseCode = "200", description = "Found a list of banners", content = {
                    @Content(mediaType = "application/json",
                            array = @ArraySchema(schema = @Schema(implementation = BannerDto.class)))
            }),
            @ApiResponse(responseCode = "404", description = "Not a single banner was found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public List<BannerDto> getAllBanners() {
        return bannerService.getAllBanners();
    }

    @PostMapping("/add")
    @Operation(summary = "Add new banner or update existing banner", responses = {
            @ApiResponse(responseCode = "201", description = "Created new banner", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = BannerDto.class))
            }),
            @ApiResponse(responseCode = "200", description = "Updated existing banner", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = BannerDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "There is no such banner", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public BannerDto addBanner(@RequestBody BannerDto bannerDto) {
        return bannerService.addOrUpdateBanner(bannerDto);
    }
}
