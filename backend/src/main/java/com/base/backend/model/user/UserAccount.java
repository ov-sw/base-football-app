package com.base.backend.model.user;

import com.base.backend.model.player.RegisteredPlayer;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@DiscriminatorValue("USERACCOUNT")
@Getter
@Setter
@NoArgsConstructor
public class UserAccount extends User {

    @OneToOne(mappedBy = "userAccount")
    private RegisteredPlayer player;
}
