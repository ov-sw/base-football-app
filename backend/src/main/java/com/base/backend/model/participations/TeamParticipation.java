package com.base.backend.model.participations;

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
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "tournament_teams")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TeamParticipation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tournament_id", nullable = false)
    private Tournament tournament;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "team_id", nullable = false)
    private Team team;

    @Column(name = "points")
    private int points = 0; //

    @Column(name = "matches_played")
    private int matchesPlayed = 0; // matches_played en SQL

    // --- Estadísticas Detalladas (Según Diagrama de Clases) ---
    private int wins = 0;   //
    private int draws = 0;  //
    private int losses = 0; //

    @Column(name = "goals_for")
    private int goalsFor = 0; // goals_for en SQL, goalsScored en Diagrama

    @Column(name = "goals_against")
    private int goalsAgainst = 0; //
}
