package com.base.backend.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.base.backend.model.user.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    // EXPLICACIÓN: Usado en el Login para buscar al usuario por su credencial principal.
    Optional<User> findByEmail(String email);

    // EXPLICACIÓN: Usados en el Registro para evitar duplicados y mantener la integridad de BASE.
    boolean existsByEmail(String email);

    boolean existsByDni(Integer dni);
}
