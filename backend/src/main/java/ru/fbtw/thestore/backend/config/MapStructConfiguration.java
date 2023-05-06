package ru.fbtw.thestore.backend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import ru.fbtw.thestore.backend.models.mappers.ProductMapper;
@Configuration
public class MapStructConfiguration {
    @Bean
    public ProductMapper productMapper() {
        return ProductMapper.INSTANCE;
    }
}
