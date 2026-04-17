package com.base.backend.repository;

import com.base.backend.model.player.Player;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Long> {
    
    // Clave para la "carga rápida": buscar jugadores por su código público
    Optional<Player> findByIdCode(String idCode);
    
    // Verificar si el código ya existe para evitar duplicados
    boolean existsByIdCode(String idCode);
}