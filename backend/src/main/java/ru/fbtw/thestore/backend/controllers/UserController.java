package ru.fbtw.thestore.backend.controllers;

import com.fasterxml.jackson.annotation.JsonView;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.data.user.dto.MyUserDto;
import ru.fbtw.thestore.backend.services.UserService;


import java.util.List;

@RestController
@RequestMapping("/user")
@RequiredArgsConstructor
@Tag(name = "User Controller")
public class UserController {
    /**
     * DONE!
     */
    private final UserService userService;

    @GetMapping("/{id}/basket")
    @Operation(summary = "Viewing a user's basket", responses = {
            @ApiResponse(responseCode = "200", description = "The user has been found and he has basket", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyUserDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "The user is not found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            }),
            @ApiResponse(responseCode = "500", description = "The user has no orders", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyUserDto getBasket(@PathVariable("id") Long id) {
        return userService.getBasket(id);
    }

    @PostMapping("/{id}/basket/add")
    @Operation(summary = "Adding an item to the user's basket", responses = {
            @ApiResponse(responseCode = "200", description = "The user has been found and product added", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyUserDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "The user is not found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyUserDto addToBasket(@PathVariable("id") Long userId, @RequestBody Long productId) {
        return userService.addToBasket(userId, productId);
    }

    @GetMapping("/{id}/favourites")
    @Operation(summary = "Viewing a user's favourites", responses = {
            @ApiResponse(responseCode = "200", description = "The user has been found and he has favourites", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyUserDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "The user is not found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            }),
            @ApiResponse(responseCode = "500", description = "The user has no favourites", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyUserDto getFavourites(@PathVariable("id") Long id) {
        return userService.getFavourites(id);
    }

    @PostMapping("/{id}/favourites/add")
    @Operation(summary = "Adding products to favorites", responses = {
            @ApiResponse(responseCode = "200", description = "The user has been found and product added", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyUserDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "The user is not found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            }),
            @ApiResponse(responseCode = "500", description = "An error occurred while adding", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyUserDto addToFavourites(@PathVariable("id") Long userId, @RequestBody Long productId) {
        return userService.addToFavourites(userId, productId);
    }

    @GetMapping("/{id}")
    @Operation(summary = "Viewing information about user", responses = {
            @ApiResponse(responseCode = "200", description = "The user has been found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyUserDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "The user is not found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyUserDto getInformation(@PathVariable("id") Long id) {
        return userService.getInformation(id);
    }

    @PostMapping("/{id}")
    @Operation(summary = "Updating information about user", responses = {
            @ApiResponse(responseCode = "200", description = "The user has been found information updated", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyUserDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "The user is not found", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            }),
            @ApiResponse(responseCode = "500", description = "An error occurred while updating", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyUserDto updateInformation(@PathVariable("id") Long id, @Valid @RequestBody MyUserDto myUserDto) {
        return userService.updateInformation(id, myUserDto);
    }

    @GetMapping("/{id}/orders") // id юзера
    @Operation(summary = "Demonstration of the user's order list", responses = {
            @ApiResponse(responseCode = "200", description = "The list of orders has been successfully displayed", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = MyUserDto.class))
            }),
            @ApiResponse(responseCode = "404", description = "The user has no orders yet", content = {
                    @Content(mediaType = "application/json",
                            schema = @Schema(implementation = ResponseEntity.class))
            })
    })
    public MyUserDto getAllOrders(@PathVariable("id") Long id) {
        return userService.getAllOrders(id);
    }

}
