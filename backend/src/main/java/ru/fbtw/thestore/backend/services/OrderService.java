package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.fbtw.thestore.backend.datas.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.datas.order.mapper.MyOrderMapper;
import ru.fbtw.thestore.backend.domains.order.MyOrder;
import ru.fbtw.thestore.backend.domains.user.MyUser;
import ru.fbtw.thestore.backend.repositories.OrderRepository;
import ru.fbtw.thestore.backend.repositories.UserRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderService {
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final MyOrderMapper orderMapper;

    public List<MyOrderDto> getAllOrders(Long id){
        MyUser user = userRepository.findById(id).orElseThrow();
        return user.getOrders().stream().map(orderMapper::toDto).toList();
    }

    public MyOrderDto getOrderById(Long id){
        MyOrder order = orderRepository.findById(id).orElseThrow();
        return orderMapper.toDto(order);
    }


}
