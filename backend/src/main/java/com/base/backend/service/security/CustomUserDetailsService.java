package com.base.backend.service.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.base.backend.model.security.UserPrincipal;
import com.base.backend.model.user.User;
import com.base.backend.repository.UserRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        // Buscamos en la base de datos por el email [cite: 348]
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("Usuario no encontrado con email: " + email));

        // Lo envolvemos en nuestro UserPrincipal (el 'traductor' que ya creamos)
        return new UserPrincipal(user);
    }
}
