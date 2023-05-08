package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
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

    @GetMapping("/{bannerid}")
    @Operation(summary = "Просмотр одного баннера \n Надо или нет?")
    public BannerDto getOrderById(@PathVariable("bannerid") Long bannerid) {
        throw new RuntimeException();
    }
}
