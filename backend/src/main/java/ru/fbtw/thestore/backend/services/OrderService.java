package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.catalog.dto.CompactProductDto;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.delivery.dto.DeliveryDto;
import ru.fbtw.thestore.backend.data.delivery.dto.ShopDto;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.data.order.mapper.MyOrderMapper;
import ru.fbtw.thestore.backend.data.request.OrderRequest;
import ru.fbtw.thestore.backend.data.user.dto.MyUserDto;
import ru.fbtw.thestore.backend.data.user.mapper.MyUserMapper;
import ru.fbtw.thestore.backend.domains.order.MyOrder;
import ru.fbtw.thestore.backend.repositories.OrderRepository;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashSet;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class OrderService {
    /**DONE!*/
    private final OrderRepository orderRepository;
    private final UserService userService;
    private final MyUserMapper userMapper;
    private final DeliveryService deliveryService;
    private final ProductService productService;
    private final ShopService shopService;
    private final MyOrderMapper orderMapper;


    public MyOrderDto getOrderDtoById(Long id) {
        MyOrder order = orderRepository.findById(id).orElseThrow();
        MyOrderDto orderDto = orderMapper.toDto(order);
        return orderDto;
    }
    public MyOrder getOrderById(Long orderId) {
        MyOrder order = orderRepository.findById(orderId).orElseThrow();
        return order;
    }
    @Transactional
    public void saveUpdatedOrder(MyOrder order){
        orderRepository.save(order);
    }
    @Transactional
    public MyOrderDto createNewOrder(OrderRequest orderRequest) {
        ShopDto shop = shopService.getShopById(orderRequest.getShopId());
        BigDecimal totalSum = new BigDecimal(0);

        DeliveryDto delivery = null;
        if (orderRequest.getDeliveryId() != null) {
            delivery = deliveryService.getDeliveryById(orderRequest.getDeliveryId());
            totalSum = totalSum.add(BigDecimal.valueOf(Double.parseDouble(delivery.getPrice())));
        }
        MyUserDto user = userService.findUserDtoById(orderRequest.getUserId());

        Set<CompactProductDto> products = new HashSet<>();
        for (ProductDto dto : user.getBasket()) {
            var compactDto = CompactProductDto.builder()
                            .id(dto.getId())
                            .productName(dto.getProductName())
                            .productPrice(dto.getProductPrice())
                            .productOldPrice(dto.getProductOldPrice())
                            .basketQuantity(dto.getBasketQuantity())
                            .picturePath(dto.getPicturePath())
                            .build();

            products.add(compactDto);
            double price = Double.parseDouble(dto.getProductPrice()) * dto.getBasketQuantity();
            totalSum = totalSum.add(new BigDecimal(price));
        }
        totalSum = totalSum.setScale(2, RoundingMode.DOWN);
        MyOrderDto orderDto = MyOrderDto.builder()
                .shop(shop)
                .delivery(delivery)
                .orderStatus(false)
                .orderTotal(totalSum.toString())
                .products(products)
                .build();
        MyOrder order = orderMapper.toEntity(orderDto);
        order.setUser(userMapper.toEntity(user));

        Long orderId = orderRepository.save(order).getId();

        for(CompactProductDto compactProductDto : products)
            orderRepository.addProducts(orderId, compactProductDto.getId());

        orderDto.setId(orderId);

        return orderDto;

        //todo
        // исправить логику сохранения заказа, посмотреть, как работают
        // сделать оплату: приходит класс Карты (сделать там номер и свв) и номер заказа, проверка номера карты на валидность
        // и проверка существования свв и обязательно из 3х символов, если все есть -> товар оплачен ->
        // достать из бд заказ, поставить в статус true в поле статуса и поставить ему сущность Payment, сохранить
    }


}
