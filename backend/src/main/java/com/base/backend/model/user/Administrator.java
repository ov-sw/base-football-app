package com.base.backend.model.user;

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

}
