package com.base.backend.resource;

import com.base.backend.dtos.TeamDto;
import com.base.backend.service.team.TeamService;
import lombok.RequiredArgsConstructor;

import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Controlador para la gestión de equipos. 
 * Mobile-First: Respuestas rápidas y datos planos.
 */
@RestController
@RequestMapping("/api/teams")
@RequiredArgsConstructor
public class TeamController {

    private final TeamService teamService;

    // Listado general de equipos
    @GetMapping
    public ResponseEntity<List<TeamDto>> getAllTeams() {
        return ResponseEntity.ok(teamService.findAll());
    }

    // Registro de un nuevo equipo
    @PostMapping
    public ResponseEntity<?> createTeam(@RequestBody TeamDto teamDto) {
        try {
            TeamDto newTeam = teamService.createTeam(teamDto);
            return ResponseEntity.ok(newTeam);
        } catch (RuntimeException e) {
            // Si el nombre ya existe, devolvemos un error descriptivo
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    // Detalle de un equipo específico
    @GetMapping("/{id}")
    public ResponseEntity<TeamDto> getTeamById(@PathVariable Long id) {
        return ResponseEntity.ok(teamService.findById(id));
    }

    @GetMapping
    public ResponseEntity<Page<TeamDto>> getTeams(
            @RequestParam Long tournamentId,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return ResponseEntity.ok(teamService.findByTournament(tournamentId, page, size));
}
}