package com.base.backend.model.player;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@DiscriminatorValue("false")
@Getter
@Setter
@NoArgsConstructor
public class NonRegisteredPlayer extends Player {
    // Al ser JnR, no tiene userAccount vinculado.

}
