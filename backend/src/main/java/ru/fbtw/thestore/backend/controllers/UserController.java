package ru.fbtw.thestore.backend.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.user.dto.MyUserDto;

import java.util.List;

@RestController
@RequestMapping("/user")
@AllArgsConstructor
@Tag(name = "Пользовательский контроллер")
public class UserController {


    /** здесь id юзера, наверно, потому что таблицы в бд с корзиной нет
    см {@link ru.fbtw.thestore.backend.domain.user.MyUser} entity
     */
    @GetMapping("/{id}/basket")
    @Operation(summary = "Корзина пользователя")
    public List<ProductDto> getBasket(@PathVariable("id") Long id) {
        throw new RuntimeException();
    }

    @GetMapping("/{id}/favourites")
    @Operation(summary = "Избранное пользователя")
    public List<ProductDto> getFavourites(@PathVariable("id") Long id) {
        throw new RuntimeException();
    }

    @GetMapping("/{id}")
    @Operation(summary = "Информация о  пользователе")
    public MyUserDto getInformation(@PathVariable("id") Long id) {
        throw new RuntimeException();
    }



}
