package com.base.backend.repository;

import com.base.backend.model.match.Match;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface MatchRepository extends JpaRepository<Match, Long> {
    
    // Para la vista "Mobile-First" de los partidos del día
    List<Match> findByDateBetween(LocalDateTime start, LocalDateTime end);
    
    // Para ver el fixture de un torneo específico
    List<Match> findByTournamentId(Long tournamentId);
}