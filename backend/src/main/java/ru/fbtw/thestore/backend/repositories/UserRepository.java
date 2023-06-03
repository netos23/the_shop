package ru.fbtw.thestore.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ru.fbtw.thestore.backend.domains.user.MyUser;

import java.util.Optional;
@Repository
public interface UserRepository extends JpaRepository<MyUser, Long> {
    Optional<MyUser> findByUsername(String username);

    @Modifying
    @Query(value = """
            INSERT INTO user_basket(user_id, product_id)
            VALUES (:userId, :productId)""", nativeQuery = true)
    void addToBasket(@Param("userId") Long userId, @Param("productId") Long productId);

    @Modifying
    @Query(value = """
            INSERT INTO user_favourites(user_id, product_id)
            VALUES (:userId, :productId)""", nativeQuery = true)
    void addToFavourites(@Param("userId") Long userId, @Param("productId") Long productId);

    @Query(value = """
            SELECT product_id FROM user_basket
            WHERE user_id=:userId AND product_id=:productId""", nativeQuery = true)
    Optional<Long> isAlreadyInBasket(@Param("userId") Long userId, @Param("productId") Long productId);
}
