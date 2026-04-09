package com.base.backend.model.match;

import java.time.LocalDateTime;

import com.base.backend.model.enums.EventType;
import com.base.backend.model.player.Player;
import com.base.backend.model.team.Team;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "match_events")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MatchEvent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "match_id", nullable = false)
    private Match match;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private EventType type; // GOAL, ASSIST, YELLOW_CARD, RED_CARD, SUBSTITUTION

    @Column(nullable = false)
    private int minute; // Entero para el minuto concreto

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "primary_player_id")
    private Player primaryPlayer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "secondary_player_id")
    private Player secondaryPlayer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "team_id")
    private Team team;

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt = LocalDateTime.now();
}
