package com.base.backend.model.match;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.base.backend.model.enums.MatchStatus;
import com.base.backend.model.enums.WinMethod;
import com.base.backend.model.team.Team;
import com.base.backend.model.tournament.Tournament;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "matches")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Match {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tournament_id", nullable = false)
    private Tournament tournament;

    @Column(nullable = false)
    private LocalDateTime date;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "local_team_id", nullable = false)
    private Team localTeam;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "visitor_team_id", nullable = false)
    private Team visitorTeam;

    @Column(name = "local_score")
    private int localScore = 0;

    @Column(name = "visitor_score")
    private int visitorScore = 0;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private MatchStatus status = MatchStatus.SCHEDULED;

    @Enumerated(EnumType.STRING)
    @Column(name = "win_method")
    private WinMethod winMethod = WinMethod.REGULAR;

    private String round;

    @OneToMany(mappedBy = "match", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<MatchEvent> matchEvents = new ArrayList<>();

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt = LocalDateTime.now();

    public void addEvent(MatchEvent event) {
        matchEvents.add(event);
        event.setMatch(this);
    }
}
