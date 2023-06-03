package ru.fbtw.thestore.backend.config;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Contact;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.servers.Server;
import org.springframework.context.annotation.Configuration;

@Configuration
//@SecurityScheme(name = "Authorization", type = SecuritySchemeType.HTTP, bearerFormat = "JWT", scheme = "Bearer")
@OpenAPIDefinition(
        info = @Info(
                title = "TP Shop Server API",
                description = "Описание всех эндпоинтов сервера \"shop\"",
                contact = @Contact(name = "Софья Черникова"),
                version = "1.0.3"),
        servers = {
                @Server(url = "https://the-store.fbtw.ru/")
        })
public class SwaggerConfig {
        //https://the-store.fbtw.ru/  http://localhost:8080
}
