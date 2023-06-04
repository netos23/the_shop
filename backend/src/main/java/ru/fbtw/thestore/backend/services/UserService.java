package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.catalog.dto.ProductDto;
import ru.fbtw.thestore.backend.data.catalog.mapper.ProductMapper;
import ru.fbtw.thestore.backend.data.geo.mapper.CityMapper;
import ru.fbtw.thestore.backend.data.order.dto.MyOrderDto;
import ru.fbtw.thestore.backend.data.order.mapper.MyOrderMapper;
import ru.fbtw.thestore.backend.data.user.dto.MyUserDto;
import ru.fbtw.thestore.backend.data.user.mapper.MyUserMapper;
import ru.fbtw.thestore.backend.domains.catalog.Product;
import ru.fbtw.thestore.backend.domains.order.MyOrder;
import ru.fbtw.thestore.backend.domains.user.MyUser;
import ru.fbtw.thestore.backend.repositories.UserRepository;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class UserService implements UserDetailsService {
    /**
     * DONE!
     */
    private final UserRepository userRepository;
    private final MyUserMapper userMapper;
    private final MyOrderMapper orderMapper;
    private final ProductMapper productMapper;
    private final ProductService productService;
    private final CityMapper cityMapper;

    @Override
    public MyUser loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("Пользователь не найден"));
    }

    public MyUserDto findUserDtoById(Long id) {
        MyUser user = userRepository.findById(id).orElseThrow();
        return userMapper.toDto(user);
    }

    public MyUser findUserById(Long id) {
        return userRepository.findById(id).orElseThrow();
    }

    public MyUserDto getBasket(Long id) {
        MyUser user = userRepository.findById(id).orElseThrow();

        Set<ProductDto> basket = new HashSet<>();
        for (Product product : user.getBasket()) {
            basket.add(productMapper.toDto(product));
        }
        return MyUserDto.builder()
                .id(user.getId())
                .basket(basket)
                .build();
    }

    @Transactional
    public MyUserDto addToBasket(Long userId, Long productId) {
        MyUserDto myUserDto;
        MyUser user = findUserById(userId);

        ProductDto productDto = productService.getProductById(productId);

        if (!isAlreadyInBasket(userId, productId)) {
            userRepository.addToBasket(user.getId(), productDto.getId());
        }
        productDto.setBasketQuantity(productDto.getBasketQuantity() + 1);
        productService.updateBasketQuantity(productId);

        Set<ProductDto> productDtos = new HashSet<>();
        if (user.getBasket().size() != 0) {
            for (Product product : user.getBasket()) {
                productDtos.add(productMapper.toDto(product));
            }
        }
        productDtos.add(productDto);

        myUserDto = MyUserDto.builder()
                .id(user.getId())
                .basket(productDtos)
                .build();

        return myUserDto;
    }

    public MyUserDto getAllOrders(Long id) {
        MyUser user = userRepository.findById(id).orElseThrow();

        Set<MyOrderDto> orders = new HashSet<>();
        for (MyOrder order : user.getOrders()) {
            orders.add(orderMapper.toDto(order));
        }
        MyUserDto dto = MyUserDto.builder()
                .id(user.getId())
                .orders(orders)
                .build();

        return dto;
    }


    public MyUserDto getFavourites(Long id) {
        MyUser user = userRepository.findById(id).orElseThrow();

        Set<ProductDto> favourites = new HashSet<>();
        for (Product product : user.getFavourites()) {
            favourites.add(productMapper.toDto(product));
        }
        return MyUserDto.builder()
                .id(user.getId())
                .favourites(favourites)
                .build();
    }

    @Transactional
    public MyUserDto addToFavourites(Long userId, Long productId) {
        MyUserDto myUserDto;
        MyUser user = findUserById(userId);

        ProductDto productDto = productService.getProductById(productId);


        userRepository.addToFavourites(user.getId(), productDto.getId());

        Set<ProductDto> productDtos = new HashSet<>();
        if (user.getFavourites().size() != 0) {
            for (Product product : user.getFavourites()) {
                productDtos.add(productMapper.toDto(product));
            }
        }
        productDtos.add(productDto);

        myUserDto = MyUserDto.builder()
                .id(user.getId())
                .favourites(productDtos)
                .build();

        return myUserDto;
    }

    public MyUserDto getInformation(Long id) {
        MyUser user = userRepository.findById(id).orElseThrow();
        String username = user.getUsername();

        return MyUserDto.builder()
                .id(user.getId())
                .sex(user.getSex().toString())
                .username(user.getUsername())
                .userEmail(user.getUserEmail())
                .userPhone(user.getUserPhone())
                .userFirebase(user.getUserFirebase())
                .userAnonimus(user.getUserAnonimus())
                .city(cityMapper.toDto(user.getCity()))
                .build();
    }

    public MyUserDto updateInformation(Long id, MyUserDto myUserDto) {
        MyUser user = userRepository.findById(id).orElseThrow();

        user = userRepository.save(userMapper.partialUpdate(myUserDto, user));
        return MyUserDto.builder()
                .id(user.getId())
                .sex(user.getSex().toString())
                .username(user.getUsername())
                .userEmail(user.getUserEmail())
                .userPhone(user.getUserPhone())
                .userFirebase(user.getUserFirebase())
                .userAnonimus(user.getUserAnonimus())
                .city(cityMapper.toDto(user.getCity()))
                .build();
    }

    private boolean isAlreadyInBasket(Long userId, Long productId) {
        Optional<Long> id = userRepository.isAlreadyInBasket(userId, productId);
        return id.isPresent();
    }

    @Transactional
    public MyUserDto deleteProductFromBasket(Long userId, Long productId) {
        MyUserDto myUserDto;
        MyUser user = findUserById(userId);

        Set<ProductDto> productDtos = new HashSet<>();
        for (Product product : user.getBasket()) {
            if (product.getId() == productId) {
               Integer quantity = productService.updateBasketQuantityAfterRemove(productId);

                if (quantity == 0) {
                    userRepository.deleteProductFromBasket(userId, productId);
                    continue;
                }

                if (quantity > 0) {
                    ProductDto productDto = productMapper.toDto(product);
                    productDto.setBasketQuantity(quantity);
                    productDtos.add(productDto);
                }
            }
            else productDtos.add(productMapper.toDto(product));
        }

        myUserDto = MyUserDto.builder()
                .id(user.getId())
                .basket(productDtos)
                .build();

        return myUserDto;
    }
    @Transactional
    public MyUserDto deleteProductFromFavourites(Long userId, Long productId) {
        MyUserDto myUserDto;
        MyUser user = findUserById(userId);

        Set<ProductDto> productDtos = new HashSet<>();
        for (Product product : user.getFavourites()) {

            if (product.getId() == productId) {
                userRepository.deleteProductFromFavourites(userId, productId);
            } else{
                productDtos.add(productMapper.toDto(product));
            }
        }

        myUserDto = MyUserDto.builder()
                .id(user.getId())
                .favourites(productDtos)
                .build();

        return myUserDto;
    }
    @Transactional
    public void deleteUser(Long userId){
        userRepository.deleteById(userId);
    }

    public Optional<MyUser> findUserByUserFirebase(String uuid){
        return userRepository.findByUserFirebase(uuid);
    }

    public String userRegistration(String authHeader) {
        MyUser user = MyUser.builder()
                .userAnonimus(true)
                .build();
        userRepository.save(user);
        return "OK";
    }
}
