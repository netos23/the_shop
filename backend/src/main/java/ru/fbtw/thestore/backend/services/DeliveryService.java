package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.controllers.requests.DeliveryRequest;
import ru.fbtw.thestore.backend.datas.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.datas.delivery.mapper.DeliveryMapper;
import ru.fbtw.thestore.backend.domains.delivery.Delivery;
import ru.fbtw.thestore.backend.repositories.DeliveryRepository;

import java.math.BigDecimal;

@Service
@RequiredArgsConstructor
public class DeliveryService {
    private double RADIUS = 6371;
    private double RATIO = Math.PI / 180;
    private double RATE = 30; //(rub/km)
    private DeliveryRepository deliveryRepository;
    private DeliveryMapper deliveryMapper;

    @Transactional
    public DeliveryDto createNewDelivery(DeliveryRequest request) {
        double shopRadLon = inRadians(request.getShopLongitude()); //долгота
        double shopRadLat = inRadians(request.getShopLatitude()); // широта

        double userRadLon = inRadians(request.getUserLongitude()); //долгота
        double userRadLat = inRadians(request.getUserLatitude()); //широта

        double d = 2 * RADIUS * Math.asin(Math.sqrt(
                Math.pow(Math.sin((userRadLat - shopRadLat) / 2), 2)
                        + Math.cos(shopRadLat) * Math.cos(userRadLat) *
                        Math.pow(Math.sin((userRadLon - shopRadLon) / 2), 2)
        )); //distance

        double c = RATE * d; //cost

        Delivery delivery = Delivery.builder()
                .deliveryName("Delivery for " + request.getOrderNumber())
                .price(BigDecimal.valueOf(c))
                .picture(request.getPicture())
                .build();
        deliveryRepository.save(delivery);
        return deliveryMapper.toDto(delivery);
    }

    public DeliveryDto getDeliveryById(Long id) {
        Delivery delivery = deliveryRepository.findById(id).orElseThrow();
        return deliveryMapper.toDto(delivery);
    }

    private double inRadians(double coordinate) {
        return coordinate * RATIO;
    }
}
