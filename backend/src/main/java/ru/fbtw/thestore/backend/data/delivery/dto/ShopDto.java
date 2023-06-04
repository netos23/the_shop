package ru.fbtw.thestore.backend.data.delivery.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.*;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domains.delivery.Shop} entity
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ShopDto implements Serializable {
	private Long id;
	@NotBlank(message = "Phone number is required")
	private String shopName;
	@NotBlank(message = "Phone number is required")
	private String shopAddress;
	@Pattern(regexp = "^\\+7\\d{10}$",
			message = "Phone number must be in the format +79999999999")
	@NotBlank(message = "Phone number is required")
	private String shopPhone;
	@NotBlank(message = "Phone number is required")
	private String shopWorkHours;
	@NotBlank(message = "Phone number is required")
	private String shopPicture;
	@NotBlank(message = "Phone number is required")
	private String lat;
	@NotBlank(message = "Phone number is required")
	private String lon;

}