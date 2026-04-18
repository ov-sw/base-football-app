package com.base.backend.model.participations;

import java.time.LocalDateTime;

import com.base.backend.model.team.Team;
import com.base.backend.model.tournament.Tournament;
import com.base.backend.model.match.Match;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "tournament_recaps")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TournamentRecap {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tournament_id", unique = true, nullable = false)
    private Tournament tournament;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "champion_team_id")
    private Team championTeam;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "final_match_id")
    private Match finalMatch;

    @Column(name = "final_standings", nullable = false, columnDefinition = "TEXT")
    private String finalStandings;

    @Column(name = "top_scorers", nullable = false, columnDefinition = "TEXT")
    private String topScorers;

    @Column(name = "top_assistants", nullable = false, columnDefinition = "TEXT")
    private String topAssistants;

    @Column(name = "most_yellows", nullable = false, columnDefinition = "TEXT")
    private String mostYellows;

    @Column(name = "most_reds", nullable = false, columnDefinition = "TEXT")
    private String mostReds;

    @Column(name = "champion_squad_stats", nullable = false, columnDefinition = "TEXT")
    private String championSquadStats;

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt = LocalDateTime.now();
}
