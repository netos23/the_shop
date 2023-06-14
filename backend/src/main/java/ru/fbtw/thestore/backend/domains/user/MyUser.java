package ru.fbtw.thestore.backend.domains.user;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import ru.fbtw.thestore.backend.data.user.dto.Sex;
import ru.fbtw.thestore.backend.domains.catalog.Product;
import ru.fbtw.thestore.backend.domains.delivery.Delivery;
import ru.fbtw.thestore.backend.domains.geo.City;
import ru.fbtw.thestore.backend.domains.order.MyOrder;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "my_user")
public class MyUser implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id", nullable = false)
    private Long id;

    @Column(name = "user_sex", nullable = false, length = 7)
    @Enumerated(EnumType.STRING)
    private Sex sex;

    @Column(name = "user_name", nullable = false, length = 100)
    private String username;

    @Column(name = "user_email", nullable = false, length = 200)
    private String userEmail;

    @Column(name = "user_phone", nullable = false, length = 12)
    private String userPhone;

    @Column(name = "user_anonimus", nullable = false)
    private Boolean userAnonimus = false;

    @Column(name = "user_firebase", nullable = false)
    private String userFirebase;

    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    },
            fetch = FetchType.LAZY)
    @JoinTable(name = "user_basket",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id")
    )
    private Set<Product> basket = new HashSet<>();

    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    },
            fetch = FetchType.LAZY)
    @JoinTable(name = "user_favourites",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id")
    )
    private Set<Product> favourites = new HashSet<>();

    @OneToMany(cascade = CascadeType.MERGE,
            mappedBy = "user", fetch = FetchType.LAZY)
    private Set<MyOrder> orders = new HashSet<>();

    @OneToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY,
            mappedBy = "user")
    private Set<Delivery> deliveries;

    @ManyToOne(cascade = { CascadeType.MERGE, CascadeType.REFRESH })
    @JoinColumn(name="city_id")
    private City city;

    @ManyToMany(cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    },
            fetch = FetchType.LAZY)
    @JoinTable(name = "user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<Role> roles = new HashSet<>();

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> authorities = new ArrayList<>(roles.size());
        for(Role role : roles){
            authorities.add(new SimpleGrantedAuthority(role.getAuthority()));
        }
        return authorities;
    }

    @Override
    public String getPassword() {
        return userPhone;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }



}