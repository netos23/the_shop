package ru.fbtw.thestore.backend.data.user.dto;

import com.fasterxml.jackson.annotation.JsonView;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.*;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.geo.dto.CityDto;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import jakarta.validation.constraints.Pattern;

import java.io.Serializable;
import java.util.Set;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domains.user.MyUser} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
public class MyUserDto implements Serializable {

	private Long id;
	@NotBlank(message = "Sex is required")
	private String sex;
	@NotBlank(message = "Username is required")
	private String username;
	@Email(message = "Invalid email address")
	@NotBlank(message = "Email address is required")
	private String userEmail;
	@Pattern(regexp = "^\\+7\\d{10}$",
			message = "Phone number must be in the format +79999999999")
	@NotBlank(message = "Phone number is required")
	private String userPhone;
	private boolean userAnonimus;
	private Long userFirebase;
	private Set<MyOrderDto> orders;
	private Set<ProductDto> basket;
	private Set<ProductDto> favourites;
	private CityDto city;
}