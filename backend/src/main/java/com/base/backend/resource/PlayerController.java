package com.base.backend.resource;

import com.base.backend.dtos.PlayerDto;
import com.base.backend.service.player.PlayerService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Endpoint para la gestión de jugadores.
 * Permite tanto la carga de jugadores invitados (Non-Registered) 
 * como la vinculación de usuarios oficiales.
 */
@RestController
@RequestMapping("/api/players")
@RequiredArgsConstructor
public class PlayerController {

    private final PlayerService playerService;

    @GetMapping
    public ResponseEntity<List<PlayerDto>> getAllPlayers() {
        return ResponseEntity.ok(playerService.findAll());
    }

    @PostMapping
    public ResponseEntity<?> createPlayer(@RequestBody PlayerDto playerDto) {
        try {
            return ResponseEntity.ok(playerService.createPlayer(playerDto));
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
}