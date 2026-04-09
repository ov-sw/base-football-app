package com.base.backend.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.base.backend.dtos.security.JwtResponse;
import com.base.backend.dtos.security.LoginDto;
import com.base.backend.dtos.security.RegisterDto;
import com.base.backend.dtos.security.UserDto;
import com.base.backend.service.security.AuthService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    @Autowired
    private AuthService authService;

    @PostMapping("/login")
    public ResponseEntity<?> login(@Valid @RequestBody LoginDto loginDto) {
        // El usuario envía email y password
        String jwt = authService.authenticateUser(loginDto.getEmail(), loginDto.getPassword());

        // Devolvemos el token al Frontend
        return ResponseEntity.ok(new JwtResponse(jwt));
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@Valid @RequestBody RegisterDto registerDto) {
        // Intentamos crear el usuario. Si el email o DNI ya existen, el service lanzará un error.
        UserDto newUser = authService.registerUser(registerDto);

        return ResponseEntity.ok(newUser); // Devolvemos los datos del nuevo usuario registrado
    }
}
