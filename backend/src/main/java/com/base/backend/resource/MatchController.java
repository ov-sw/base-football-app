package com.base.backend.resource;

import com.base.backend.dtos.MatchDto;
import com.base.backend.service.match.MatchService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public ResponseEntity<List<MatchDto>> getAllMatches() {
        return ResponseEntity.ok(matchService.findAll());
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