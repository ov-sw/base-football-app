package com.base.backend.resource;

import com.base.backend.dtos.PlayerDto;
import com.base.backend.service.player.PlayerService;
import lombok.RequiredArgsConstructor;

import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
    public ResponseEntity<Page<PlayerDto>> getAllPlayers(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return ResponseEntity.ok(playerService.findAll(page, size));
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