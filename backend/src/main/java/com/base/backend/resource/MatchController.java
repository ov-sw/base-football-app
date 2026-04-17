package com.base.backend.resource;

import com.base.backend.dtos.MatchDto;
import com.base.backend.service.match.MatchService;
import lombok.RequiredArgsConstructor;

import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * Controlador para la gestión de partidos.
 * Optimizado para la visualización de fixture y carga de resultados.
 */
@RestController
@RequestMapping("/api/matches")
@RequiredArgsConstructor
public class MatchController {

    private final MatchService matchService;

    @GetMapping
    public ResponseEntity<Page<MatchDto>> getFixture(
            @RequestParam Long tournamentId,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return ResponseEntity.ok(matchService.findByTournament(tournamentId, page, size));
    }

    @PostMapping
    public ResponseEntity<MatchDto> createMatch(@RequestBody MatchDto matchDto) {
        return ResponseEntity.ok(matchService.createMatch(matchDto));
    }

    /**
     * PATCH para actualización parcial. 
     * Ideal para el administrador que solo quiere mover el marcador desde el móvil.
     */
    @PatchMapping("/{id}/score")
    public ResponseEntity<Void> updateScore(
            @PathVariable Long id, 
            @RequestParam int localScore, 
            @RequestParam int visitorScore) {
        matchService.updateScore(id, localScore, visitorScore);
        return ResponseEntity.noContent().build();
    }
}