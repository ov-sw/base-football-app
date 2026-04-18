package com.base.backend.model.participations;

import com.base.backend.model.player.Player;
import com.base.backend.model.team.Team;
import com.base.backend.model.tournament.Tournament;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "tournament_players", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"tournament_id", "team_id", "player_id"})
})
@Getter
@Setter
@NoArgsConstructor
public class PlayerParticipation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tournament_id", nullable = false)
    private Tournament tournament;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "team_id", nullable = false)
    private Team team;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "player_id", nullable = false)
    private Player player;

    @Column(name = "is_active")
    private boolean isActive = true; // Proviene del SQL

    // --- Estadísticas Específicas del Torneo (Según Diagrama de Clases) ---
    // Nota: Estas columnas deben agregarse al 01_schema.sql
    private int goals = 0;
    private int assists = 0;
    private int games = 0;

    @Column(name = "yellow_cards")
    private int yellowCards = 0;

    @Column(name = "red_cards")
    private int redCards = 0;
}
