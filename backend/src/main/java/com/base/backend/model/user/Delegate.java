package com.base.backend.model.user;

import com.base.backend.model.auth.UserRole;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@DiscriminatorValue("DELEGATE")
@Getter
@Setter
@NoArgsConstructor
public class Delegate extends User {

    @Override
    public UserRole getRole() {
        return UserRole.DELEGATE; // Retorna el valor del Enum
    }
}
