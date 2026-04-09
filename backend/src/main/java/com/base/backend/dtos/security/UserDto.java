package com.base.backend.dtos.security;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {

    private Long id;
    private String email;
    private String name;
    private String surname;
    private String role; // ADMINISTRATOR, DELEGATE, FAN, etc.
}
