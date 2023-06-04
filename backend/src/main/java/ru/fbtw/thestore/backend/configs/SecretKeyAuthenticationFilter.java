package ru.fbtw.thestore.backend.configs;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseAuthException;
import com.google.firebase.auth.FirebaseToken;
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
import ru.fbtw.thestore.backend.domains.user.MyUser;
import ru.fbtw.thestore.backend.services.JwtService;


import java.io.IOException;

@Component
@RequiredArgsConstructor
public class SecretKeyAuthenticationFilter extends OncePerRequestFilter {
    private final JwtService jwtService;

    @Override
    protected void doFilterInternal(
            @NotNull HttpServletRequest request,
            @NotNull HttpServletResponse response,
            @NotNull FilterChain filterChain
    ) throws ServletException, IOException {
        final String authHeader = request.getHeader("Authorization");
        final String jwt;
        final MyUser user;
        if (authHeader == null) {
            filterChain.doFilter(request, response);
            return;
        }
        jwt = authHeader.substring(7);
        FirebaseAuth auth = FirebaseAuth.getInstance();

        try {
            FirebaseToken decodedToken = auth.verifyIdToken(jwt);
            String uid = decodedToken.getUid();
            // ID пользователя успешно получен из токена
            user = jwtService.extractUser(uid);

            if (SecurityContextHolder.getContext().getAuthentication() == null) {
                UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
                        authHeader, user, user.getAuthorities()
                );
                authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authToken);
            }
        } catch (FirebaseAuthException e) {

        } catch (NullPointerException e) {
            //Error extracting user data from JWT:
        } finally {
            filterChain.doFilter(request, response);
        }
    }

}


