package ru.fbtw.thestore.backend.domains.user;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "my_role")
public class Role implements GrantedAuthority {
    @Id
    @Column(name = "role_id", nullable = false, unique = true, columnDefinition = "int")
    private int id;

    @Column(name = "role_name", nullable = false, columnDefinition = "varchar(63)")
    private String name;

    @Override
    public String getAuthority() {
        return name;
    }
}
