package com.base.backend.dtos;

import java.time.LocalDate;

/**
 * DTO para manejar la información de jugadores.
 * Al usar herencia, este objeto nos sirve para ambos tipos de perfiles,
 * simplificando la lógica del Mobile-First.
 */
public record PlayerDto(
    Long id,
    String nickname,
    LocalDate birthDate,
    String idCode,
    String description,
    String imageUrl,
    boolean registered, // Nos indica si es RegisteredPlayer o NonRegisteredPlayer
    Long userAccountId, // Solo vendrá poblado si es un jugador registrado
    int totalGoals,
    int totalGames
) {}