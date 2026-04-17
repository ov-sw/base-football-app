package com.base.backend.service.team;

import com.base.backend.dtos.TeamDto;
import com.base.backend.model.team.Team;
import com.base.backend.repository.TeamRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class TeamService {

    private final TeamRepository teamRepository;

    // Buscamos todos los equipos y los pasamos a DTO para la respuesta
    @Transactional(readOnly = true)
    public List<TeamDto> findAll() {
        return teamRepository.findAll().stream()
                .map(this::convertToDto)
                .collect(Collectors.toList());
    }

    // Lógica para crear un equipo validando que no esté repetido en la misma ciudad
    @Transactional
    public TeamDto createTeam(TeamDto teamDto) {
        if (teamRepository.existsByNameAndCity(teamDto.name(), teamDto.city())) {
            throw new RuntimeException("El nombre del equipo ya existe en esta ciudad. ¡Elegí otro!");
        }

        Team team = new Team();
        team.setName(teamDto.name());
        team.setLogoUrl(teamDto.logoUrl());
        team.setCity(teamDto.city());
        team.setRegistered(teamDto.isRegistered());
        // El delegate lo manejaríamos buscando la entidad Delegate por el ID del DTO
        
        Team savedTeam = teamRepository.save(team);
        return convertToDto(savedTeam);
    }

    @Transactional(readOnly = true)
    public TeamDto findById(Long id) {
        Team team = teamRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("No encontramos el equipo con ID: " + id));
        return convertToDto(team);
    }

    // Método helper para no repetir código de conversión
    private TeamDto convertToDto(Team team) {
        return new TeamDto(
            team.getId(),
            team.getName(),
            team.getLogoUrl(),
            team.getCity(),
            team.isRegistered(),
            team.getFollowerCount(),
            team.getDelegate() != null ? team.getDelegate().getId() : null
        );
    }

    /**
     * Obtiene equipos de un torneo con paginación.
     * Limitamos el tamaño de página a 50 para mantener la eficiencia mobile.
     */
    public Page<TeamDto> findByTournament(Long tournamentId, int page, int size) {
        int validatedSize = Math.min(size, 50); // Hard-limit de 50
        Pageable pageable = PageRequest.of(page, validatedSize);
        
        return teamRepository.findByTournamentId(tournamentId, pageable)
                .map(this::convertToDto);
    }
}