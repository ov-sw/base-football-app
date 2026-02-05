package com.base.backend.model.user;

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

}
