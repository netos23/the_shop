package ru.fbtw.thestore.backend.data.user.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * A DTO for the {@link ru.fbtw.thestore.backend.domain.user.MyUser} entity
 */
@Data
public class MyUserDto implements Serializable {
	private final Long id;
	private final String userName;
	private final String userEmail;
	private final String userPhone;
	private final Boolean userAnonimus;
	private final Long userFirebase;
}