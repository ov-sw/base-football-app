package com.base.backend.repository;

import com.base.backend.model.match.Match;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface MatchRepository extends JpaRepository<Match, Long> {
    
    // Para la vista "Mobile-First" de los partidos del día
    List<Match> findByDateBetween(LocalDateTime start, LocalDateTime end);
    
    // Filtramos los partidos por el ID del torneo
    Page<Match> findByTournamentId(Long tournamentId, Pageable pageable);
}