package com.base.backend.service.match;

import com.base.backend.dtos.MatchDto;
import com.base.backend.model.match.Match;
import com.base.backend.model.team.Team;
import com.base.backend.repository.MatchRepository;
import com.base.backend.repository.TeamRepository;
// import com.base.backend.repository.tournament.TournamentRepository; // Asumiendo que existe
import lombok.RequiredArgsConstructor;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class MatchService {

    private final MatchRepository matchRepository;
    private final TeamRepository teamRepository;

    /**
 * Recupera el fixture de un torneo específico.
 * Esencial para que el delegado vea solo sus partidos próximos.
 */
    public Page<MatchDto> findByTournament(Long tournamentId, int page, int size) {
        int validatedSize = Math.min(size, 50);
        Pageable pageable = PageRequest.of(page, validatedSize, Sort.by("date").ascending());
        
        return matchRepository.findByTournamentId(tournamentId, pageable)
                .map(this::convertToDto);
    }

    @Transactional
    public MatchDto createMatch(MatchDto dto) {
        Match match = new Match();
        
        // Buscamos las entidades para asegurar la integridad referencial
        Team local = teamRepository.findById(dto.localTeamId())
                .orElseThrow(() -> new RuntimeException("Equipo local no encontrado"));
        Team visitor = teamRepository.findById(dto.visitorTeamId())
                .orElseThrow(() -> new RuntimeException("Equipo visitante no encontrado"));

        match.setDate(dto.date());
        match.setLocalTeam(local);
        match.setVisitorTeam(visitor);
        match.setRound(dto.round());
        match.setStatus(dto.status());
        
        // El torneo debería asignarse aquí también buscando por dto.tournamentId()
        
        Match savedMatch = matchRepository.save(match);
        return convertToDto(savedMatch);
    }

    /**
     * Actualización rápida del marcador. 
     * Cumple con la pauta de "Carga rápida para administradores en campo".
     */
    @Transactional
    public void updateScore(Long matchId, int localScore, int visitorScore) {
        Match match = matchRepository.findById(matchId)
                .orElseThrow(() -> new RuntimeException("Partido no encontrado"));
        
        match.setLocalScore(localScore);
        match.setVisitorScore(visitorScore);
        
        matchRepository.save(match);
    }

    private MatchDto convertToDto(Match m) {
        return new MatchDto(
            m.getId(),
            m.getTournament() != null ? m.getTournament().getId() : null,
            m.getDate(),
            m.getLocalTeam().getId(),
            m.getLocalTeam().getName(),
            m.getVisitorTeam().getId(),
            m.getVisitorTeam().getName(),
            m.getLocalScore(),
            m.getVisitorScore(),
            m.getStatus(),
            m.getWinMethod(),
            m.getRound()
        );
    }
}