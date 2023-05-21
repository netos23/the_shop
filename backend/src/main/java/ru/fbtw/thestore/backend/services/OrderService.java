package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.data.order.mapper.MyOrderMapper;
import ru.fbtw.thestore.backend.domain.order.MyOrder;
import ru.fbtw.thestore.backend.domain.user.MyUser;
import ru.fbtw.thestore.backend.repository.OrderRepository;
import ru.fbtw.thestore.backend.repository.UserRepository;

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
