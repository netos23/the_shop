package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;


/**
 * A DTO for the {@link ru.fbtw.thestore.backend.models.MyUser} entity
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class MyUserDto {
    private  Long id;
    private String userName;
    private String userEmail;
    private String userPhone;
    private Boolean userAnonimus;
    private Long userFirebase;
}