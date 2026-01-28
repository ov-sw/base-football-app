-- ============================================
-- BASE - Sistema de Gestión de Fútbol Amateur
-- Script de creación de base de datos (PostgreSQL)
-- Incluye: Tablas, PK, FK, CHECK, UNIQUE, DEFAULT
-- ============================================

-- 1. Tabla USERS
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    provider_id VARCHAR(255),
    auth_provider VARCHAR(20) NOT NULL DEFAULT 'LOCAL' CHECK (auth_provider IN ('GOOGLE', 'LOCAL')),
    name VARCHAR(100) NOT NULL CHECK (LENGTH(TRIM(name)) > 0),
    surname VARCHAR(100) NOT NULL CHECK (LENGTH(TRIM(surname)) > 0),
    dni INTEGER UNIQUE NOT NULL,
    role VARCHAR(20) NOT NULL CHECK (role IN ('ADMINISTRATOR', 'DELEGATE', 'FAN', 'USERACCOUNT')),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT valid_email CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    CONSTRAINT valid_dni CHECK (dni > 1000000 AND dni < 99999999),
    CONSTRAINT unique_email_provider UNIQUE (email, auth_provider),
    CONSTRAINT dni_length CHECK (dni::TEXT ~ '^\d{7,8}$')
);

-- 2. Tabla PLAYERS
CREATE TABLE players (
    id BIGSERIAL PRIMARY KEY,
    nickname VARCHAR(100),
    birth_date DATE NOT NULL,
    id_code VARCHAR(20) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    is_registered BOOLEAN NOT NULL DEFAULT FALSE,
    user_acc_id BIGINT UNIQUE REFERENCES users(id) ON DELETE SET NULL ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED,
    total_goals INTEGER DEFAULT 0 CHECK (total_goals >= 0),
    total_assists INTEGER DEFAULT 0 CHECK (total_assists >= 0),
    total_games INTEGER DEFAULT 0 CHECK (total_games >= 0),
    total_yellows INTEGER DEFAULT 0 CHECK (total_yellows >= 0),
    total_reds INTEGER DEFAULT 0 CHECK (total_reds >= 0),
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT valid_birth_date CHECK (birth_date > '1900-01-01' AND birth_date <= CURRENT_DATE),
    CONSTRAINT valid_id_code CHECK (id_code ~ '^[A-Z0-9]{3,20}$'),
    CONSTRAINT unique_id_code UNIQUE (id_code),
    CONSTRAINT registered_player_has_user CHECK (NOT (is_registered = TRUE AND user_acc_id IS NULL)), -- Un jugador registrado DEBE tener user_acc_id
    CONSTRAINT non_registered_no_user CHECK (NOT (is_registered = FALSE AND user_acc_id IS NOT NULL)) -- Un JnR NO puede tener user_acc_id
);

-- 3. Tabla TEAMS
CREATE TABLE teams (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL CHECK (LENGTH(TRIM(name)) >= 2),
    logo_url VARCHAR(255),
    city VARCHAR(100) NOT NULL CHECK (LENGTH(TRIM(city)) >= 2),
    is_registered BOOLEAN NOT NULL DEFAULT FALSE,
    delegate_id BIGINT REFERENCES users(id) ON DELETE SET NULL ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT valid_team_name UNIQUE (name, city),
    CONSTRAINT registered_team_has_delegate CHECK (NOT (is_registered = TRUE AND delegate_id IS NULL)), -- Un equipo registrado DEBE tener delegado
    CONSTRAINT delegate_must_be_delegate_role 
        FOREIGN KEY (delegate_id) 
        REFERENCES users(id) 
        ON DELETE SET NULL 
        CHECK (delegate_id IS NULL OR EXISTS (
            SELECT 1 FROM users u WHERE u.id = delegate_id AND u.role = 'DELEGATE'
        )) -- Solo usuarios con rol DELEGATE pueden ser delegados
);

-- 4. Tabla TOURNAMENTS
CREATE TABLE tournaments (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL CHECK (LENGTH(TRIM(name)) >= 3),
    description TEXT,
    subs_limit INTEGER CHECK (subs_limit IS NULL OR subs_limit > 0),
    is_finished BOOLEAN NOT NULL DEFAULT FALSE,
    format VARCHAR(20) NOT NULL CHECK (format IN ('F5', 'F7', 'F11', 'OTRO')),
    type VARCHAR(20) NOT NULL CHECK (type IN ('LEAGUE', 'PLAYOFF')),
    tiebreaker1 VARCHAR(50) NOT NULL 
        DEFAULT 'GOAL_DIFFERENCE'
        CHECK (tiebreaker1 IN ('GOALS_FOR', 'GOAL_DIFFERENCE', 'HEAD_TO_HEAD', 'WINS')),
    tiebreaker2 VARCHAR(50) 
        CHECK (tiebreaker2 IN ('GOALS_FOR', 'GOAL_DIFFERENCE', 'HEAD_TO_HEAD', 'WINS', NULL)),
    tiebreaker3 VARCHAR(50) 
        CHECK (tiebreaker3 IN ('GOALS_FOR', 'GOAL_DIFFERENCE', 'HEAD_TO_HEAD', 'WINS', NULL)),
    start_date DATE NOT NULL,
    end_date DATE,
    registration_deadline DATE,
    
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT valid_tournament_dates CHECK ((end_date IS NULL) OR (end_date >= start_date)),
    CONSTRAINT registration_before_start CHECK ((registration_deadline IS NULL) OR (registration_deadline <= start_date)),
    CONSTRAINT start_date_future CHECK (start_date >= CURRENT_DATE),
    CONSTRAINT unique_tournament_name UNIQUE (name, start_date)
);

-- 5. Tabla TOURNAMENT_ADMINS
CREATE TABLE tournament_admins (
    tournament_id BIGINT NOT NULL REFERENCES tournaments(id) ON DELETE CASCADE ON UPDATE CASCADE,
    user_id BIGINT NOT NULL REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    is_main_admin BOOLEAN NOT NULL DEFAULT FALSE,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (tournament_id, user_id),

    CONSTRAINT admin_must_be_administrator CHECK (EXISTS (SELECT 1 FROM users u WHERE u.id = user_id AND u.role = 'ADMINISTRATOR')), -- Solo ADMINISTRATOR pueden ser administradores de torneo
    CONSTRAINT only_one_main_admin UNIQUE (tournament_id) WHERE (is_main_admin = TRUE) -- Solo UN main admin por torneo
);

-- 6. Tabla TOURNAMENT_TEAMS
CREATE TABLE tournament_teams (
    tournament_id BIGINT NOT NULL REFERENCES tournaments(id) ON DELETE CASCADE ON UPDATE CASCADE,
    team_id BIGINT NOT NULL REFERENCES teams(id) ON DELETE CASCADE ON UPDATE CASCADE,
    position INTEGER CHECK (position IS NULL OR position > 0),
    points INTEGER NOT NULL DEFAULT 0 CHECK (points >= 0),
    goals_for INTEGER NOT NULL DEFAULT 0 CHECK (goals_for >= 0),
    goals_against INTEGER NOT NULL DEFAULT 0 CHECK (goals_against >= 0),
    matches_played INTEGER NOT NULL DEFAULT 0 CHECK (matches_played >= 0),
    matches_won INTEGER NOT NULL DEFAULT 0 CHECK (matches_won >= 0 AND matches_won <= matches_played),
    matches_drawn INTEGER NOT NULL DEFAULT 0 CHECK (matches_drawn >= 0 AND matches_drawn <= matches_played),
    matches_lost INTEGER NOT NULL DEFAULT 0 CHECK (matches_lost >= 0 AND matches_lost <= matches_played),
    
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (tournament_id, team_id),

    CONSTRAINT consistent_matches CHECK (matches_played = matches_won + matches_drawn + matches_lost),
    CONSTRAINT consistent_points CHECK (points = (matches_won * 3) + matches_drawn),
    CONSTRAINT valid_position CHECK (position IS NULL OR position > 0)
);

-- 7. Tabla TOURNAMENT_PLAYERS
CREATE TABLE tournament_players (
    id BIGSERIAL PRIMARY KEY,
    tournament_id BIGINT NOT NULL REFERENCES tournaments(id) ON DELETE CASCADE,
    team_id BIGINT NOT NULL REFERENCES teams(id) ON DELETE CASCADE,
    player_id BIGINT NOT NULL REFERENCES players(id) ON DELETE CASCADE,
    is_active BOOLEAN DEFAULT TRUE,
    jersey_number INTEGER CHECK (jersey_number BETWEEN 1 AND 99),
    UNIQUE(tournament_id, team_id, player_id)
);

-- 8. Tabla MATCHES (con round y venue explicados)
CREATE TABLE matches (
    id BIGSERIAL PRIMARY KEY,
    tournament_id BIGINT NOT NULL REFERENCES tournaments(id) ON DELETE CASCADE,
    local_team_id BIGINT NOT NULL REFERENCES teams(id) ON DELETE CASCADE,
    visitor_team_id BIGINT NOT NULL REFERENCES teams(id) ON DELETE CASCADE,
    local_score INTEGER DEFAULT 0 CHECK (local_score >= 0),
    visitor_score INTEGER DEFAULT 0 CHECK (visitor_score >= 0),
    date TIMESTAMP NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'SCHEDULED' 
        CHECK (status IN ('SCHEDULED', 'IN_PROGRESS', 'FINISHED', 'SUSPENDED')),
    win_method VARCHAR(20) DEFAULT 'REGULAR' 
        CHECK (win_method IN ('REGULAR', 'PENALTIES', 'OVERTIME')),
    round VARCHAR(50), -- Jornada numérica (1, 2, 3) o fase textual ('CUARTOS', 'SEMIFINAL')
    stadium VARCHAR(255), -- Lugar/estadio donde se juega
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CHECK (local_team_id != visitor_team_id)
);

-- 9. Tabla MATCH_EVENTS
CREATE TABLE match_events (
    id BIGSERIAL PRIMARY KEY,
    match_id BIGINT NOT NULL REFERENCES matches(id) ON DELETE CASCADE,
    type VARCHAR(20) NOT NULL CHECK (type IN ('GOAL', 'ASSIST', 'YELLOW_CARD', 'RED_CARD', 'SUBSTITUTION')),
    minute INTEGER NOT NULL CHECK (minute BETWEEN 0 AND 130),
    primary_player_id BIGINT REFERENCES players(id) ON DELETE SET NULL,
    secondary_player_id BIGINT REFERENCES players(id) ON DELETE SET NULL,
    team_id BIGINT REFERENCES teams(id) ON DELETE SET NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CHECK (
        (type IN ('GOAL', 'YELLOW_CARD', 'RED_CARD') AND primary_player_id IS NOT NULL) OR
        (type = 'ASSIST' AND primary_player_id IS NOT NULL AND secondary_player_id IS NOT NULL) OR
        (type = 'SUBSTITUTION' AND primary_player_id IS NOT NULL AND secondary_player_id IS NOT NULL)
    )
);

-- 10. Tabla LINEUPS
CREATE TABLE lineups (
    id BIGSERIAL PRIMARY KEY,
    match_id BIGINT NOT NULL REFERENCES matches(id) ON DELETE CASCADE,
    team_id BIGINT NOT NULL REFERENCES teams(id) ON DELETE CASCADE,
    player_id BIGINT NOT NULL REFERENCES players(id) ON DELETE CASCADE,
    is_starter BOOLEAN NOT NULL DEFAULT TRUE,
    position VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(match_id, team_id, player_id)
);

-- 11. Tabla TOURNAMENT_RECAPS
CREATE TABLE tournament_recaps (
    id BIGSERIAL PRIMARY KEY,
    tournament_id BIGINT UNIQUE NOT NULL REFERENCES tournaments(id) ON DELETE CASCADE,
    champion_team_id BIGINT REFERENCES teams(id) ON DELETE SET NULL,
    final_standings TEXT NOT NULL,
    top_scorers TEXT NOT NULL,
    top_assistants TEXT NOT NULL,
    most_yellows TEXT NOT NULL,
    most_reds TEXT NOT NULL,
    champion_squad_stats TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 12. Tabla FOLLOWS
CREATE TABLE follows (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    tournament_id BIGINT REFERENCES tournaments(id) ON DELETE CASCADE,
    team_id BIGINT REFERENCES teams(id) ON DELETE CASCADE,
    player_id BIGINT REFERENCES players(id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CHECK (
        (tournament_id IS NOT NULL AND team_id IS NULL AND player_id IS NULL) OR
        (tournament_id IS NULL AND team_id IS NOT NULL AND player_id IS NULL) OR
        (tournament_id IS NULL AND team_id IS NULL AND player_id IS NOT NULL)
    ),
    UNIQUE(user_id, tournament_id, team_id, player_id)
);

-- ============================================
-- VISTAS útiles
-- ============================================

-- Vista para tabla de posiciones de un torneo
CREATE OR REPLACE VIEW tournament_standings AS
SELECT 
    tt.tournament_id,
    tt.team_id,
    t.name AS team_name,
    tt.points,
    tt.matches_played,
    tt.goals_for,
    tt.goals_against,
    (tt.goals_for - tt.goals_against) AS goal_difference
FROM tournament_teams tt
JOIN teams t ON tt.team_id = t.id
ORDER BY tt.points DESC, goal_difference DESC, tt.goals_for DESC;

-- ============================================
-- COMENTARIOS en tablas y columnas
-- ============================================

COMMENT ON COLUMN users.provider_id IS 'ID único de OAuth2 (Google)';
COMMENT ON COLUMN users.auth_provider IS 'Origen de autenticación: GOOGLE o LOCAL';
COMMENT ON COLUMN players.id_code IS 'Código público para búsquedas sin exponer DNI';
COMMENT ON COLUMN tournaments.tiebreaker1 IS 'Primer criterio de desempate';
COMMENT ON TABLE follows IS 'Relación de seguimiento de hinchas a torneos, equipos o jugadores';