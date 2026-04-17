package com.base.backend.dtos;

import com.base.backend.model.enums.MatchStatus;
import com.base.backend.model.enums.WinMethod;
import java.time.LocalDateTime;

/**
 * DTO para la gestión de partidos.
 * Diseñado para ser liviano y facilitar la carga rápida desde dispositivos móviles.
 */
public record MatchDto(
    Long id,
    Long tournamentId,
    LocalDateTime date,
    Long localTeamId,
    String localTeamName,
    Long visitorTeamId,
    String visitorTeamName,
    int localScore,
    int visitorScore,
    MatchStatus status,
    WinMethod winMethod,
    String round
) {}