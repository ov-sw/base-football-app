package com.base.backend.model.player;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorColumn;
import jakarta.persistence.DiscriminatorType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "players")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "is_registered", discriminatorType = DiscriminatorType.STRING)
@Getter
@Setter
@NoArgsConstructor
public abstract class Player {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = false, nullable = true)
    private String nickname;

    @Column(name = "birth_date", nullable = false)
    private LocalDate birthDate;

    @Column(name = "id_code", unique = true, nullable = false)
    private String idCode; // Código público para búsquedas

    @Column(columnDefinition = "TEXT")
    private String description;

    @Column(name = "image_url")
    private String imageUrl;

    // Estadísticas Históricas Acumuladas 
    @Column(name = "total_goals")
    private int totalGoals = 0;

    @Column(name = "total_assists")
    private int totalAssists = 0;

    @Column(name = "total_games")
    private int totalGames = 0;

    @Column(name = "total_yellows")
    private int totalYellows = 0;

    @Column(name = "total_reds")
    private int totalReds = 0;

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt = LocalDateTime.now();

    // Relación con las participaciones en torneos (Estadísticas por torneo)
    /*@OneToMany(mappedBy = "player")
    private List<PlayerParticipation> tournamentParticipations;
     */
}
