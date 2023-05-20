package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.banner.dto.BannerDto;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;

import java.util.List;

@RestController
@RequestMapping("/banner")
@AllArgsConstructor
@Tag(name = "Контроллер баннеров")
public class BannerController {

    @GetMapping()
    @Operation(summary = "Список баннеров")
    public List<BannerDto> getAllOrders() {
        throw new RuntimeException();
    }

    @GetMapping("/{bannerId}")
    @Operation(summary = "Просмотр одного баннера \n Надо или нет?")
    public BannerDto getBannerById(@PathVariable("bannerId") Long bannerId) {
        throw new RuntimeException();
    }

    @PostMapping("/add")
    @Operation(summary = "Добавление баннера, @RequestBody BannerDto пока так, потому что я так и не " +
            "поняла, как загружаются баннеры")
    public BannerDto addBanner(@Valid @RequestBody BannerDto bannerDto) {
        throw new RuntimeException();
    }
}
