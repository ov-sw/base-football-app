package com.base.backend.model.match;

import com.base.backend.model.player.Player;
import com.base.backend.model.team.Team;

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
@Table(name = "lineups", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"match_id", "team_id", "player_id"})
})
@Getter
@Setter
@NoArgsConstructor
public class Lineup {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "match_id", nullable = false)
    private Match match;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "team_id", nullable = false)
    private Team team;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "player_id", nullable = false)
    private Player player;

    @Column(name = "is_starter", nullable = false)
    private boolean isStarter = true; // ¿Arrancó el partido en cancha?

    @Column(name = "is_playing", nullable = false)
    private boolean isPlaying = false; // ¿Está actualmente en el campo?

    private String position; // Ej: "Arquero", "Mediocampista"
}
