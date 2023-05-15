package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.fbtw.thestore.backend.domain.user.MyUser;
import ru.fbtw.thestore.backend.repository.UserRepository;

@Service
@RequiredArgsConstructor
public class UserService {
private final UserRepository userRepository;

}
