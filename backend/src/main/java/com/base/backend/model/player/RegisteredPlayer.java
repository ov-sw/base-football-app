package com.base.backend.model.player;

import com.base.backend.model.user.UserAccount;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@DiscriminatorValue("true")
@Getter
@Setter
@NoArgsConstructor
public class RegisteredPlayer extends Player {

    @OneToOne
    @JoinColumn(name = "user_acc_id", unique = true)
    private UserAccount userAccount; // Vínculo con la cuenta de usuario

}
