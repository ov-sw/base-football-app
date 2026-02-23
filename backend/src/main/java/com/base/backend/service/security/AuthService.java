package com.base.backend.service.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.base.backend.dtos.security.RegisterDto;
import com.base.backend.dtos.security.UserDto;
import com.base.backend.model.auth.AuthProvider;
import com.base.backend.model.security.UserPrincipal;
import com.base.backend.model.user.Fan;
import com.base.backend.model.user.User;
import com.base.backend.repository.UserRepository;
import com.base.backend.util.JwtUtils;

@Service
public class AuthService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtils jwtUtils;

    public UserDto registerUser(RegisterDto registerDto) {
        // 1. Validaciones de integridad: Evitamos duplicados en DB antes de procesar
        if (userRepository.existsByEmail(registerDto.getEmail())) {
            throw new RuntimeException("Error: El email ya está en uso");
        }
        if (userRepository.existsByDni(registerDto.getDni())) {
            throw new RuntimeException("Error: El DNI ya pertenece a otro usuario");
        }

        // 2. CONVERSIÓN: DTO -> Entidad
        User userEntity = convertToEntity(registerDto);

        // 3. SEGURIDAD: Encriptamos la clave recibida.
        userEntity.setPassword(passwordEncoder.encode(registerDto.getPassword()));

        // 4. PERSISTENCIA
        User savedUser = userRepository.save(userEntity);

        // 5. CONVERSIÓN: Entidad -> DTO
        return convertToDto(savedUser);
    }

    public String authenticateUser(String email, String password) {
        /**
         * PASO 1: Creación del Token de Intento. Creamos un objeto que contiene
         * las credenciales 'crudas' (sin validar). Esto se envía al
         * AuthenticationManager.
         */
        UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(email, password);

        /**
         * PASO 2: La Gran Validación. El AuthenticationManager internamente: 1.
         * Llama a tu 'CustomUserDetailsService' para buscar al usuario por
         * email. 2. Usa 'BCrypt' para comparar la 'password' (texto plano) con
         * la que está en la DB. Si no coinciden, aquí se lanza una excepción y
         * el flujo se detiene.
         */
        Authentication authentication = authenticationManager.authenticate(authRequest);

        /**
         * PASO 3: Guardar el Contexto. Una vez validado, informamos a Spring
         * Security que este 'hilo' de ejecución pertenece a un usuario
         * autenticado. Esto permite que el sistema sepa quién eres durante el
         * resto de la petición[cite: 100].
         */
        SecurityContextHolder.getContext().setAuthentication(authentication);

        /**
         * PASO 4: Recuperar la Identidad. Extraemos el 'UserPrincipal' que el
         * manager cargó desde la base de datos. Aquí dentro ya tenemos el ID,
         * el Email y el ROL (ADMIN, DELEGATE, FAN)[cite: 80, 355].
         */
        UserPrincipal userPrincipal = (UserPrincipal) authentication.getPrincipal();

        /**
         * PASO 5: Generar el JWT. Finalmente, usamos JwtUtils para crear el
         * String cifrado. Este token es el que Juan y Ramiro guardarán en el
         * Front[cite: 445, 547].
         */
        return jwtUtils.generateJwtToken(userPrincipal);
    }

    // --- MÉTODOS DE CONVERSIÓN (MAPEO) ---
    /**
     * TRANSFORMACIÓN: DTO -> Entidad Crea un objeto de modelo 'Fan' a partir de
     * los datos del registro.
     */
    private User convertToEntity(RegisterDto dto) {
        Fan fan = new Fan();
        fan.setName(dto.getName());
        fan.setSurname(dto.getSurname());
        fan.setEmail(dto.getEmail());
        fan.setDni(dto.getDni());
        fan.setAuthProvider(AuthProvider.LOCAL);
        // Nota: El password se setea en el método principal tras ser encriptado
        return fan;
    }

    /**
     * TRANSFORMACIÓN: Entidad -> DTO Prepara la respuesta para el Frontend
     * ocultando datos sensibles.
     */
    public UserDto convertToDto(User user) {
        UserDto dto = new UserDto();
        dto.setId(user.getId());
        dto.setEmail(user.getEmail());
        dto.setName(user.getName());
        dto.setSurname(user.getSurname());
        dto.setRole(user.getRole().name());
        return dto;
    }
}
