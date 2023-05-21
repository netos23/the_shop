package ru.fbtw.thestore.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.fbtw.thestore.backend.domain.user.MyUser;

import java.util.Optional;

public interface UserRepository extends JpaRepository<MyUser, Long> {
    Optional<MyUser> findByUsername(String username);

}
