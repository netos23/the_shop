package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.user.dto.MyUserDto;

import java.util.List;

@RestController
@RequestMapping("/user")
@AllArgsConstructor
@Tag(name="user",description = "Пользовательский контроллер")
public class UserController {


    /** здесь id юзера, наверно, потому что таблицы в бд с корзиной нет
    см {@link ru.fbtw.thestore.backend.domain.user.MyUser} entity
     */
    @GetMapping("/{id}/basket")
    @Operation(summary = "Корзина пользователя", tags = "user")
    public List<ProductDto> getBasket(@PathVariable("id") Long id) {
        throw new RuntimeException();
    }

    @PostMapping("/{id}/basket/add")
    @Operation(summary = "Добавить в корзину пользователя", tags = "user")
    public ProductDto addToBasket(@RequestBody ProductDto productDto) {
        throw new RuntimeException();
    }

    @GetMapping("/{id}/favourites")
    @Operation(summary = "Избранное пользователя", tags = "user")
    public List<ProductDto> getFavourites(@PathVariable("id") Long id) {
        throw new RuntimeException();
    }

    @PostMapping("/{id}/favourites/add")
    @Operation(summary = "Добавить в избранное пользователя", tags = "user")
    public ProductDto addToFavourites(@RequestBody ProductDto productDto) {
        throw new RuntimeException();
    }

    @GetMapping("/{id}")
    @Operation(summary = "Информация о  пользователе", tags = "user")
    public MyUserDto getInformation(@PathVariable("id") Long id) {
        throw new RuntimeException();
    }

    @GetMapping("/{id}")
    @Operation(summary = "Редактировать информацию о  пользователе", tags = "user")
    public MyUserDto updateInformation(@Valid @RequestBody MyUserDto myUserDto) {
        throw new RuntimeException();
    }

    //todo для MyUserDto написать валидацию



}
