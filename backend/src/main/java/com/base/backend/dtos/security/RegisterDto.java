package com.base.backend.dtos.security;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

/**
 * EXPLICACIÓN: Contiene los datos del formulario de registro. Estos campos
 * alimentarán a la tabla 'users' en la base de datos.
 */
@Getter
@Setter
public class RegisterDto {

    @NotBlank(message = "El nombre es obligatorio")
    private String name; // [cite: 352]

    @NotBlank(message = "El apellido es obligatorio")
    private String surname; // [cite: 353]

    @NotBlank(message = "El email es obligatorio")
    @Email(message = "Debe ser un email válido")
    private String email; // [cite: 348]

    @NotBlank(message = "La contraseña es obligatoria")
    private String password;

    @NotNull(message = "El DNI es obligatorio")
    private Integer dni; // Vital para validar la identidad del jugador o delegado [cite: 354]
}
