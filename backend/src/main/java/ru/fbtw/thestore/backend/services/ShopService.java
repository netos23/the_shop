package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.delivery.dto.ShopDto;
import ru.fbtw.thestore.backend.data.delivery.mapper.ShopMapper;
import ru.fbtw.thestore.backend.domains.delivery.Shop;
import ru.fbtw.thestore.backend.repositories.ShopRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ShopService {
    /**DONE!*/
    private final ShopRepository shopRepository;
    private final ShopMapper shopMapper;

    public List<ShopDto> getAllShops() {
        List<Shop> shops = shopRepository.findAll();
        return shops.stream().map(shopMapper::toDto).toList();
    }

    public ShopDto getShopById(Long id) {
        Shop shop = shopRepository.findById(id).orElseThrow();
        return shopMapper.toDto(shop);
    }

    @Transactional
    public ShopDto addNewShop(ShopDto shopDto) {
        Shop shop = shopRepository.save(shopMapper.toEntity(shopDto));
        return shopMapper.toDto(shop);
    }
}
