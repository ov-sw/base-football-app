package com.base.backend.model.tournament;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import com.base.backend.model.enums.Format;
import com.base.backend.model.enums.TieBreakRule;
import com.base.backend.model.enums.TournamentType;
import com.base.backend.model.match.Match;
import com.base.backend.model.user.Administrator;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "tournaments")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Tournament {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // 

    @Column(nullable = false)
    private String name; // 

    @Column(columnDefinition = "TEXT")
    private String description; // 

    @Column(name = "subs_limit")
    private Integer subsLimit; // 

    @Column(name = "is_finished")
    private boolean isFinished = false; // 

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Format format; // F5, F7, F11, OTRO 

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private TournamentType type; // LEAGUE, PLAYOFF 

    // Criterios de desempate (hasta 3 niveles según el SQL)
    @Enumerated(EnumType.STRING)
    @Column(name = "tiebreaker1")
    private TieBreakRule tiebreaker1; // 

    @Enumerated(EnumType.STRING)
    @Column(name = "tiebreaker2")
    private TieBreakRule tiebreaker2; // 

    @Enumerated(EnumType.STRING)
    @Column(name = "tiebreaker3")
    private TieBreakRule tiebreaker3; // 

    @Column(name = "start_date")
    private LocalDate startDate; // 

    @Column(name = "end_date")
    private LocalDate endDate; // 

    @Column(name = "follower_count")
    private int followerCount = 0;

    // Relación Muchos a Muchos con Administradores 
    @ManyToMany
    @JoinTable(
            name = "tournament_admins",
            joinColumns = @JoinColumn(name = "tournament_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    private List<Administrator> admins;

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt = LocalDateTime.now(); // 

    @Column(name = "updated_at")
    private LocalDateTime updatedAt = LocalDateTime.now(); // 

    @OneToMany(mappedBy = "tournament")
    private List<Match> matches;
}
