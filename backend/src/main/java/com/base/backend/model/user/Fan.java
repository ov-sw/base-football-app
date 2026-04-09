package com.base.backend.model.user;

import com.base.backend.model.auth.UserRole;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@DiscriminatorValue("FAN")
@Getter
@Setter
@NoArgsConstructor
public class Fan extends User {
    // Aquí irán las relaciones de la tabla FOLLOWS

    @Override
    public UserRole getRole() {
        return UserRole.FAN; // Retorna el valor del Enum
    }
}
