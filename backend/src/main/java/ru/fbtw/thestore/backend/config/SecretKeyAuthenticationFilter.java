package ru.fbtw.thestore.backend.config;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import ru.fbtw.thestore.backend.domain.user.MyUser;
import ru.fbtw.thestore.backend.repository.UserRepository;
import ru.fbtw.thestore.backend.services.JwtService;


import java.io.IOException;

@Component
@RequiredArgsConstructor
public class SecretKeyAuthenticationFilter extends OncePerRequestFilter {
    private final JwtService jwtService;
    private final UserRepository userRepository;


    @Override
    protected void doFilterInternal(
            @NotNull HttpServletRequest request,
            @NotNull HttpServletResponse response,
            @NotNull FilterChain filterChain
    ) throws ServletException, IOException {
        final String authHeader = request.getHeader("Authorization");
        final String jwt;
        final String username;
        if (authHeader == null) {
            filterChain.doFilter(request, response);
            return;
        }
        jwt = authHeader;
        username = jwtService.extractUsername(jwt);
        MyUser user = userRepository.findByUsername(username).orElseThrow();

        try {
            if (SecurityContextHolder.getContext().getAuthentication() == null) {
                UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
                        authHeader, user, user.getAuthorities()
                );
                authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authToken);
            }
        } catch (NullPointerException e) {
            System.out.println(e.getMessage());
        } finally {
            filterChain.doFilter(request, response);
        }
    }
    //todo уточнить, где хранить токен
}

