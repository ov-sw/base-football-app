package com.base.backend.repository;

import com.base.backend.model.team.Team;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface TeamRepository extends JpaRepository<Team, Long> {
    // Para validar el UniqueConstraint de nombre y ciudad
    boolean existsByNameAndCity(String name, String city);
    
    // Para búsquedas rápidas en la app mobile
    Optional<Team> findByNameIgnoreCase(String name);
}