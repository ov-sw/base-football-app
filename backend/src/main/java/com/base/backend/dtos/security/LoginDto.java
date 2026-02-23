package com.base.backend.dtos.security;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

/**
 * EXPLICACIÓN: Objeto simple para capturar las credenciales de inicio de
 * sesión. Solo pedimos lo mínimo necesario para validar la identidad.
 */
@Getter
@Setter
public class LoginDto {

    @NotBlank(message = "El email es obligatorio")
    @Email(message = "Debe ser un email válido")
    private String email;

    @NotBlank(message = "La contraseña no puede estar vacía")
    private String password; // Se recibe en texto plano para ser validada con BCrypt
}
