package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.data.request.DeliveryRequest;
import ru.fbtw.thestore.backend.data.delivery.dto.ShopDto;
import ru.fbtw.thestore.backend.data.delivery.mapper.DeliveryMapper;
import ru.fbtw.thestore.backend.domains.delivery.Delivery;
import ru.fbtw.thestore.backend.repositories.DeliveryRepository;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

/**DONE!*/
@Service
@RequiredArgsConstructor
public class DeliveryService {
    private double RADIUS = 6371;
    private double RATIO = Math.PI / 180;
    private double RATE = 0.5; //(rub/km)
    private final DeliveryRepository deliveryRepository;
    private final DeliveryMapper deliveryMapper;
    private final ShopService shopService;
    private final UserService userService;

    public DeliveryDto getDeliveryById(Long id) {
        Delivery delivery = deliveryRepository.findById(id).orElseThrow();
        DeliveryDto deliveryDto = deliveryMapper.toDto(delivery);
        deliveryDto.setUserId(delivery.getUser().getId());
        return deliveryDto;
    }
    @Transactional
    public DeliveryDto createNewDelivery(DeliveryRequest deliveryRequest) {
        double userRadLon = inRadians(deliveryRequest.getUserLongitude()); //долгота
        double userRadLat = inRadians(deliveryRequest.getUserLatitude()); //широта

        double distance;
        double cost;
        Delivery delivery;
        DeliveryDto deliveryDto;

        if(deliveryRequest.getShopId() == null){
            distance = findNearestStore(userRadLat, userRadLon);
            cost = RATE * distance;
            delivery = Delivery.builder()
                    .price(BigDecimal.valueOf(cost).setScale(2, RoundingMode.DOWN))
                    .user(userService.findUserById(deliveryRequest.getUserId()))
                    .build();
            deliveryRepository.save(delivery);

            deliveryDto = DeliveryDto.builder()
                    .id(delivery.getId())
                    .price(delivery.getPrice().toString())
                    .userId(delivery.getUser().getId())
                    .build();
            return deliveryDto;
        }

        ShopDto shop = shopService.getShopById(deliveryRequest.getShopId());
        double shopRadLat = inRadians(Double.parseDouble(shop.getLat()));
        double shopRadLon = inRadians(Double.parseDouble(shop.getLon()));

         distance = calculateDistance(shopRadLat, shopRadLon, userRadLat, userRadLon);
         cost = RATE * distance;

        delivery = Delivery.builder()
                .price(BigDecimal.valueOf(cost))
                .user(userService.findUserById(deliveryRequest.getUserId()))
                .build();
        deliveryRepository.save(delivery);

        deliveryDto = DeliveryDto.builder()
                .id(delivery.getId())
                .price(delivery.getPrice().toString())
                .userId(delivery.getUser().getId())
                .build();
        return deliveryDto;
    }


    private double calculateDistance(double shopRadLat, double shopRadLon, double userRadLat, double userRadLon){
        return 2 * RADIUS * Math.asin(Math.sqrt(
                Math.pow(Math.sin((userRadLat - shopRadLat) / 2), 2)
                        + Math.cos(shopRadLat) * Math.cos(userRadLat) *
                        Math.pow(Math.sin((userRadLon - shopRadLon) / 2), 2)
        ));
    }
    private double findNearestStore(double userRadLat, double userRadLon) {
        // здесь исщется ближайший к пользователю магазин
        List<ShopDto> shops = shopService.getAllShops();
        ShopDto shopDto = shops.get(0);
        double d = calculateDistance(inRadians(Double.parseDouble(shopDto.getLat())),
                inRadians(Double.parseDouble(shopDto.getLon())), userRadLat, userRadLon);
        double tempD;

        for (int i = 1; i < shops.size(); i++) {
            shopDto = shops.get(i);
            tempD = calculateDistance(inRadians(Double.parseDouble(shopDto.getLat())),
                    inRadians(Double.parseDouble(shopDto.getLon())), userRadLat, userRadLon);

            if(tempD < d) d = tempD;
        }
        return d;
    }
    private double inRadians(double coordinate) {
        return coordinate * RATIO;
    }
}
