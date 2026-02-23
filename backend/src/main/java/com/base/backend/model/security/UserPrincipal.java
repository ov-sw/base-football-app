package com.base.backend.model.security;

import com.base.backend.model.user.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import java.util.Collection;
import java.util.Collections;

/**
 * EXPLICACIÓN: Spring Security no sabe qué es un "User" en el contexto de BASE.
 * Esta clase actúa como un ADAPTADOR que implementa UserDetails para que el
 * sistema pueda verificar roles y contraseñas.
 */
public class UserPrincipal implements UserDetails {

    private final User user;

    public UserPrincipal(User user) {
        this.user = user;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // IMPORTANTE: Spring exige que los roles empiecen con "ROLE_"
        // Aquí transformamos ADMINISTRATOR, DELEGATE, etc. [cite: 355]
        return Collections.singletonList(
                new SimpleGrantedAuthority("ROLE_" + user.getRole().name())
        );
    }

    @Override
    public String getPassword() {
        // Se usa para el login LOCAL. Si es login por GOOGLE, será null.
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        // Usamos el email como identificador único para el login[cite: 348].
        return user.getEmail();
    }

    // Métodos de control de cuenta (los dejamos en true para no complicar el MVP)
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

    // Útil para recuperar el objeto User completo más adelante
    public User getUser() {
        return user;
    }
}
