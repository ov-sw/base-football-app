package com.base.backend.model.user;

import com.base.backend.model.auth.UserRole;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@DiscriminatorValue("ADMINISTRATOR")
@Getter
@Setter
@NoArgsConstructor
public class Administrator extends User {

    @Override
    public UserRole getRole() {
        return UserRole.ADMINISTRATOR; // Retorna el valor del Enum
    }
}
