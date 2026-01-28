-- ============================================
-- SEEDING - Población inicial de la base de datos
-- BASE - Sistema de Gestión de Fútbol Amateur
-- ============================================

-- 1. Crear 5 ADMINISTRADORES
INSERT INTO users (email, provider_id, auth_provider, name, surname, dni, role) VALUES
-- Administrador principal del sistema
('admin@basefutbol.com', NULL, 'LOCAL', 'Carlos', 'Rodríguez', 30123456, 'ADMINISTRATOR'),
-- Administradores de torneos
('martina.lopez@email.com', 'google_12345', 'GOOGLE', 'Martina', 'López', 28901234, 'ADMINISTRATOR'),
('juan.perez@email.com', NULL, 'LOCAL', 'Juan', 'Pérez', 32098765, 'ADMINISTRATOR'),
('sofia.garcia@email.com', 'google_67890', 'GOOGLE', 'Sofía', 'García', 34123456, 'ADMINISTRATOR'),
('diego.martinez@email.com', NULL, 'LOCAL', 'Diego', 'Martínez', 36789012, 'ADMINISTRATOR');

-- 2. Crear 20 DELEGADOS (cada uno será delegado de un equipo)
INSERT INTO users (email, provider_id, auth_provider, name, surname, dni, role) VALUES
-- Delegados equipo 1-10 (ciudad A)
('delegado1@email.com', NULL, 'LOCAL', 'Luis', 'Fernández', 40123456, 'DELEGATE'),
('delegado2@email.com', NULL, 'LOCAL', 'Ana', 'Ramírez', 41234567, 'DELEGATE'),
('delegado3@email.com', 'google_111', 'GOOGLE', 'Pedro', 'González', 42345678, 'DELEGATE'),
('delegado4@email.com', NULL, 'LOCAL', 'María', 'Sánchez', 43456789, 'DELEGATE'),
('delegado5@email.com', NULL, 'LOCAL', 'Roberto', 'Torres', 44567890, 'DELEGATE'),
-- Delegados equipo 6-10 (ciudad B)
('delegado6@email.com', NULL, 'LOCAL', 'Laura', 'Díaz', 45678901, 'DELEGATE'),
('delegado7@email.com', 'google_222', 'GOOGLE', 'Andrés', 'Romero', 46789012, 'DELEGATE'),
('delegado8@email.com', NULL, 'LOCAL', 'Carolina', 'Mendoza', 47890123, 'DELEGATE'),
('delegado9@email.com', NULL, 'LOCAL', 'Gabriel', 'Silva', 48901234, 'DELEGATE'),
('delegado10@email.com', NULL, 'LOCAL', 'Valeria', 'Rojas', 49012345, 'DELEGATE'),
-- Delegados equipo 11-15 (ciudad C)
('delegado11@email.com', NULL, 'LOCAL', 'Miguel', 'Castillo', 50123456, 'DELEGATE'),
('delegado12@email.com', 'google_333', 'GOOGLE', 'Patricia', 'Vargas', 51234567, 'DELEGATE'),
('delegado13@email.com', NULL, 'LOCAL', 'Fernando', 'Castro', 52345678, 'DELEGATE'),
('delegado14@email.com', NULL, 'LOCAL', 'Daniela', 'Ortega', 53456789, 'DELEGATE'),
('delegado15@email.com', NULL, 'LOCAL', 'Ricardo', 'Núñez', 54567890, 'DELEGATE'),
-- Delegados equipo 16-20 (ciudad D)
('delegado16@email.com', NULL, 'LOCAL', 'Camila', 'Paredes', 55678901, 'DELEGATE'),
('delegado17@email.com', 'google_444', 'GOOGLE', 'Javier', 'Salazar', 56789012, 'DELEGATE'),
('delegado18@email.com', NULL, 'LOCAL', 'Lucía', 'Medina', 57890123, 'DELEGATE'),
('delegado19@email.com', NULL, 'LOCAL', 'Pablo', 'Aguirre', 58901234, 'DELEGATE'),
('delegado20@email.com', NULL, 'LOCAL', 'Natalia', 'Fuentes', 59012345, 'DELEGATE');

-- 3. Crear algunos HINCHAS/FANS (para probar seguimiento)
INSERT INTO users (email, provider_id, auth_provider, name, surname, dni, role) VALUES
('fan1@email.com', NULL, 'LOCAL', 'Tomás', 'Reyes', 60123456, 'FAN'),
('fan2@email.com', 'google_555', 'GOOGLE', 'Julieta', 'Miranda', 61234567, 'FAN'),
('fan3@email.com', NULL, 'LOCAL', 'Ignacio', 'Guerrero', 62345678, 'FAN');

-- 4. Crear 20 EQUIPOS (ER - Equipos Registrados)
-- Cada equipo tiene un delegado (tomamos los primeros 20 delegados)
INSERT INTO teams (name, logo_url, city, is_registered, delegate_id) VALUES
-- Ciudad A (Equipos 1-5)
('Los Halcones FC', 'https://ejemplo.com/logos/halcones.png', 'Buenos Aires', TRUE, 6),
('Ciclón Deportivo', 'https://ejemplo.com/logos/ciclon.png', 'Buenos Aires', TRUE, 7),
('Estrellas Doradas', 'https://ejemplo.com/logos/estrellas.png', 'Buenos Aires', TRUE, 8),
('Toros Salvajes', 'https://ejemplo.com/logos/toros.png', 'Buenos Aires', TRUE, 9),
('Águilas Reales', 'https://ejemplo.com/logos/aguilas.png', 'Buenos Aires', TRUE, 10),
-- Ciudad B (Equipos 6-10)
('Leones del Sur', 'https://ejemplo.com/logos/leones.png', 'Córdoba', TRUE, 11),
('Tiburones Azules', 'https://ejemplo.com/logos/tiburones.png', 'Córdoba', TRUE, 12),
('Dragones FC', 'https://ejemplo.com/logos/dragones.png', 'Córdoba', TRUE, 13),
('Fénix United', 'https://ejemplo.com/logos/fenix.png', 'Córdoba', TRUE, 14),
('Cóndores Andinos', 'https://ejemplo.com/logos/condores.png', 'Córdoba', TRUE, 15),
-- Ciudad C (Equipos 11-15)
('Rayos Veloces', 'https://ejemplo.com/logos/rayos.png', 'Rosario', TRUE, 16),
('Truenos FC', 'https://ejemplo.com/logos/truenos.png', 'Rosario', TRUE, 17),
('Relámpagos SC', 'https://ejemplo.com/logos/relampagos.png', 'Rosario', TRUE, 18),
('Huracán FC', 'https://ejemplo.com/logos/huracan.png', 'Rosario', TRUE, 19),
('Tornados Deportivos', 'https://ejemplo.com/logos/tornados.png', 'Rosario', TRUE, 20),
-- Ciudad D (Equipos 16-20)
('Gladiadores FC', 'https://ejemplo.com/logos/gladiadores.png', 'Mendoza', TRUE, 21),
('Espartanos United', 'https://ejemplo.com/logos/espartanos.png', 'Mendoza', TRUE, 22),
('Vikingos SC', 'https://ejemplo.com/logos/vikingos.png', 'Mendoza', TRUE, 23),
('Samuráis FC', 'https://ejemplo.com/logos/samurais.png', 'Mendoza', TRUE, 24),
('Centauros Deportivos', 'https://ejemplo.com/logos/centauros.png', 'Mendoza', TRUE, 25);

-- 5. Crear algunos Equipos No Registrados (EnR) para pruebas
INSERT INTO teams (name, city, is_registered) VALUES
('Club Amigos Unidos', 'Buenos Aires', FALSE),
('Deportivo Barrio Norte', 'Córdoba', FALSE),
('La Esperanza FC', 'Rosario', FALSE);

-- 6. Crear 3 TORNEOS (2 en progreso, 1 finalizado)
INSERT INTO tournaments (name, description, subs_limit, is_finished, format, type, tiebreaker1, tiebreaker2, tiebreaker3, start_date, end_date) VALUES
-- Torneo 1: Liga F11 en progreso
('Copa Amateur 2024', 'Torneo oficial de fútbol 11 amateur', 5, FALSE, 'F11', 'LEAGUE', 'GOALS_FOR', 'GOAL_DIFFERENCE', 'HEAD_TO_HEAD', '2024-03-01', '2024-06-30'),
-- Torneo 2: Playoff F7 en progreso
('Torneo Relámpago F7', 'Torneo rápido de fútbol 7', 3, FALSE, 'F7', 'PLAYOFF', 'HEAD_TO_HEAD', 'GOAL_DIFFERENCE', 'WINS', '2024-04-01', '2024-05-15'),
-- Torneo 3: F5 finalizado
('Campeonato Indoor 2023', 'Torneo de fútbol 5 bajo techo', NULL, TRUE, 'F5', 'LEAGUE', 'GOAL_DIFFERENCE', 'GOALS_FOR', NULL, '2023-10-01', '2023-12-20');

-- 7. Asignar ADMINISTRADORES a los torneos (relación muchos a muchos)
INSERT INTO tournament_admins (tournament_id, user_id, is_main_admin) VALUES
-- Torneo 1: 3 administradores (Carlos principal)
(1, 1, TRUE),  -- Carlos Rodríguez (admin principal)
(1, 2, FALSE), -- Martina López
(1, 3, FALSE), -- Juan Pérez
-- Torneo 2: 2 administradores (Sofía principal)
(2, 4, TRUE),  -- Sofía García
(2, 5, FALSE), -- Diego Martínez
-- Torneo 3: 1 administrador (Diego principal - torneo finalizado)
(3, 5, TRUE);

-- 8. Inscribir EQUIPOS en los torneos
-- Torneo 1 (F11): 12 equipos
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6),
(1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12);

-- Torneo 2 (F7): 8 equipos
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (2, 20);

-- Torneo 3 (F5): 6 equipos (incluye 3 EnR)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(3, 1), (3, 6), (3, 11), (3, 21), (3, 22), (3, 23);

-- 9. Crear JUGADORES (mezcla de JR y JnR)
-- Primero creamos 50 jugadores (algunos serán JR, otros JnR)
INSERT INTO players (nickname, birth_date, id_code, description, is_registered, total_goals, total_assists, total_games, total_yellows, total_reds) VALUES
-- Jugadores Registrados (JR - con user_acc_id NULL por ahora)
('El Matador', '1995-03-15', 'JR001', 'Delantero goleador', TRUE, 45, 12, 60, 5, 1),
('Rayo', '1998-07-22', 'JR002', 'Extremo veloz', TRUE, 22, 30, 55, 3, 0),
('Muro', '1992-11-05', 'JR003', 'Defensor central', TRUE, 3, 5, 80, 12, 2),
('Pulpo', '1990-05-30', 'JR004', 'Mediocampista defensivo', TRUE, 8, 15, 95, 8, 1),
('Sniper', '1997-09-18', 'JR005', 'Mediapunta', TRUE, 35, 25, 50, 2, 0),
('Tanque', '1993-12-10', 'JR006', 'Delantero centro', TRUE, 40, 8, 65, 10, 3),
('Flecha', '1999-02-28', 'JR007', 'Lateral derecho', TRUE, 5, 20, 40, 6, 1),
('Roca', '1991-06-14', 'JR008', 'Defensor experimentado', TRUE, 2, 3, 110, 15, 4),
('Magico', '1996-04-25', 'JR009', 'Mediocampista ofensivo', TRUE, 28, 40, 70, 4, 0),
('Guerrero', '1994-08-08', 'JR010', 'Volante mixto', TRUE, 15, 18, 85, 9, 2),
-- Jugadores No Registrados (JnR - sin cuenta de usuario)
(NULL, '2000-01-12', 'JNR001', NULL, FALSE, 10, 4, 15, 1, 0),
(NULL, '1999-03-24', 'JNR002', NULL, FALSE, 8, 6, 12, 0, 0),
(NULL, '2001-07-19', 'JNR003', NULL, FALSE, 5, 3, 8, 2, 1),
(NULL, '1998-11-30', 'JNR004', NULL, FALSE, 12, 7, 20, 3, 0),
(NULL, '2000-05-05', 'JNR005', NULL, FALSE, 3, 2, 10, 0, 0),
(NULL, '1997-09-14', 'JNR006', NULL, FALSE, 7, 5, 18, 1, 1),
(NULL, '1999-12-25', 'JNR007', NULL, FALSE, 9, 8, 22, 4, 0),
(NULL, '2001-04-18', 'JNR008', NULL, FALSE, 4, 1, 7, 0, 0),
(NULL, '1998-06-09', 'JNR009', NULL, FALSE, 6, 9, 16, 2, 0),
(NULL, '2000-08-22', 'JNR010', NULL, FALSE, 11, 3, 19, 3, 1),
-- Más jugadores para completar equipos
(NULL, '1995-02-14', 'JNR011', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1996-05-17', 'JNR012', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1997-08-21', 'JNR013', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1998-03-04', 'JNR014', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1999-06-11', 'JNR015', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '2000-09-25', 'JNR016', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1994-12-08', 'JNR017', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1993-01-30', 'JNR018', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1992-04-13', 'JNR019', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1991-07-26', 'JNR020', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1990-10-09', 'JNR021', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1989-11-12', 'JNR022', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1996-02-28', 'JNR023', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1997-05-19', 'JNR024', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1998-08-03', 'JNR025', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1999-10-15', 'JNR026', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '2000-12-27', 'JNR027', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1995-03-08', 'JNR028', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1996-06-21', 'JNR029', NULL, FALSE, 0, 0, 0, 0, 0),
(NULL, '1997-09-14', 'JNR030', NULL, FALSE, 0, 0, 0, 0, 0);

-- 10. Asignar JUGADORES a EQUIPOS por TORNEO (tournament_players)
-- Cada equipo tendrá entre 15-20 jugadores por torneo
-- Solo asignaremos algunos para el ejemplo:
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
-- Torneo 1, Equipo 1 (Los Halcones FC)
(1, 1, 1, TRUE, 9),   -- El Matador
(1, 1, 2, TRUE, 7),   -- Rayo
(1, 1, 11, TRUE, 1),  -- JnR001 (arquero)
(1, 1, 12, TRUE, 4),  -- JnR002 (defensor)
(1, 1, 13, TRUE, 6),  -- JnR003
(1, 1, 14, TRUE, 8),  -- JnR004
(1, 1, 15, TRUE, 10), -- JnR005
-- Torneo 1, Equipo 2 (Ciclón Deportivo)
(1, 2, 3, TRUE, 5),   -- Muro
(1, 2, 4, TRUE, 6),   -- Pulpo
(1, 2, 16, TRUE, 1),  -- JnR006
(1, 2, 17, TRUE, 9),  -- JnR007
-- Torneo 2, Equipo 13 (Rayos Veloces)
(2, 13, 5, TRUE, 10), -- Sniper
(2, 13, 6, TRUE, 9),  -- Tanque
(2, 13, 18, TRUE, 1), -- JnR008
-- Torneo 3, Equipo 1 (Los Halcones FC - torneo F5)
(3, 1, 1, TRUE, 9),   -- El Matador
(3, 1, 7, TRUE, 2),   -- Flecha
(3, 1, 19, TRUE, 1);  -- JnR009

-- 11. Crear algunos PARTIDOS de ejemplo
INSERT INTO matches (tournament_id, local_team_id, visitor_team_id, local_score, visitor_score, date, status, win_method, round, stadium) VALUES
-- Torneo 1 (Liga F11) - Partidos jugados
(1, 1, 2, 3, 1, '2024-03-10 16:00:00', 'FINISHED', 'REGULAR', '1', 'Estadio Municipal'),
(1, 3, 4, 2, 2, '2024-03-10 18:30:00', 'FINISHED', 'REGULAR', '1', 'Cancha Los Pinos'),
(1, 5, 6, 1, 0, '2024-03-17 16:00:00', 'FINISHED', 'REGULAR', '2', 'Complejo Deportivo'),
-- Torneo 1 - Partido en curso
(1, 7, 8, 2, 1, '2024-04-14 17:00:00', 'IN_PROGRESS', 'REGULAR', '5', 'Estadio Central'),
-- Torneo 1 - Partidos programados
(1, 9, 10, 0, 0, '2024-04-21 16:00:00', 'SCHEDULED', 'REGULAR', '6', 'Cancha Norte'),
(1, 11, 12, 0, 0, '2024-04-21 18:30:00', 'SCHEDULED', 'REGULAR', '6', 'Cancha Sur'),
-- Torneo 2 (Playoff F7) - Partidos de playoff
(2, 13, 14, 3, 2, '2024-04-05 20:00:00', 'FINISHED', 'OVERTIME', 'CUARTOS', 'Polideportivo'),
(2, 15, 16, 1, 1, '2024-04-12 20:00:00', 'FINISHED', 'PENALTIES', 'SEMIFINAL', 'Gimnasio Techado'),
(2, 17, 18, 0, 0, '2024-04-26 21:00:00', 'SCHEDULED', 'REGULAR', 'FINAL', 'Estadio Cubierto'),
-- Torneo 3 (F5 finalizado) - Partidos históricos
(3, 1, 21, 4, 2, '2023-10-10 19:00:00', 'FINISHED', 'REGULAR', '1', 'Salón Indoor'),
(3, 6, 22, 3, 3, '2023-10-17 19:00:00', 'FINISHED', 'REGULAR', '2', 'Cancha Sintética');

-- 12. Crear EVENTOS de partido para el partido 1 (Torneo 1, Equipo 1 vs Equipo 2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
-- Goles del partido 1 (Equipo 1 vs Equipo 2)
(1, 'GOAL', 23, 1, 2, 1),  -- Gol de El Matador (asistencia de Rayo)
(1, 'GOAL', 45, 11, NULL, 1), -- Gol de JnR001 (sin asistencia)
(1, 'GOAL', 67, 1, NULL, 1),  -- Segundo gol de El Matador
(1, 'GOAL', 89, 17, 16, 2),  -- Gol del Equipo 2 (JnR007 asistido por JnR006)
-- Tarjetas amarillas
(1, 'YELLOW_CARD', 34, 12, NULL, 1), -- JnR002 (Equipo 1)
(1, 'YELLOW_CARD', 78, 3, NULL, 2),  -- Muro (Equipo 2)
-- Cambio
(1, 'SUBSTITUTION', 60, 13, 14, 1); -- Cambio en Equipo 1 (JnR003 sale, JnR004 entra)

-- 13. Crear ALINEACIONES para algunos partidos
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
-- Partido 1, Equipo 1 (titulares)
(1, 1, 11, TRUE, 'GK'),   -- Arquero
(1, 1, 12, TRUE, 'DF'),   -- Defensor
(1, 1, 1, TRUE, 'FW'),    -- Delantero
(1, 1, 2, TRUE, 'FW'),    -- Delantero
-- Partido 1, Equipo 1 (suplentes que entraron)
(1, 1, 14, FALSE, 'MF'),  -- Mediocampista (entró al minuto 60)
-- Partido 1, Equipo 2 (titulares)
(1, 2, 16, TRUE, 'GK'),
(1, 2, 3, TRUE, 'DF'),
(1, 2, 4, TRUE, 'MF'),
(1, 2, 17, TRUE, 'FW');

-- 14. Actualizar estadísticas en tournament_teams (basado en partidos jugados)
-- Estos valores normalmente se actualizarían con triggers o en la aplicación
UPDATE tournament_teams SET 
    points = CASE 
        WHEN team_id = 1 THEN 3  -- Ganó 1 partido
        WHEN team_id = 2 THEN 0  -- Perdió
        WHEN team_id = 3 THEN 1  -- Empató
        WHEN team_id = 4 THEN 1  -- Empató
        WHEN team_id = 5 THEN 3  -- Ganó
        WHEN team_id = 6 THEN 0  -- Perdió
        ELSE points 
    END,
    matches_played = CASE 
        WHEN team_id IN (1, 2, 3, 4, 5, 6, 7, 8) THEN 1 
        ELSE matches_played 
    END,
    goals_for = CASE 
        WHEN team_id = 1 THEN 3
        WHEN team_id = 2 THEN 1
        WHEN team_id = 3 THEN 2
        WHEN team_id = 4 THEN 2
        WHEN team_id = 5 THEN 1
        WHEN team_id = 6 THEN 0
        WHEN team_id = 7 THEN 2  -- Partido en curso
        WHEN team_id = 8 THEN 1  -- Partido en curso
        ELSE goals_for 
    END,
    goals_against = CASE 
        WHEN team_id = 1 THEN 1
        WHEN team_id = 2 THEN 3
        WHEN team_id = 3 THEN 2
        WHEN team_id = 4 THEN 2
        WHEN team_id = 5 THEN 0
        WHEN team_id = 6 THEN 1
        WHEN team_id = 7 THEN 1  -- Partido en curso
        WHEN team_id = 8 THEN 2  -- Partido en curso
        ELSE goals_against 
    END
WHERE tournament_id = 1 AND team_id IN (1, 2, 3, 4, 5, 6, 7, 8);

-- 15. Crear RECAP para torneo finalizado (Torneo 3)
INSERT INTO tournament_recaps (tournament_id, champion_team_id, final_standings, top_scorers, top_assistants, most_yellows, most_reds, champion_squad_stats) VALUES
(3, 1, '1. Los Halcones FC - 15 pts | 2. Rayos Veloces - 12 pts | 3. Gladiadores FC - 10 pts | 4. Espartanos United - 8 pts | 5. Vikingos SC - 5 pts | 6. Samuráis FC - 1 pt',
 '1. El Matador (Los Halcones) - 8 goles | 2. Sniper (Rayos Veloces) - 6 goles | 3. Tanque (Rayos Veloces) - 5 goles',
 '1. Magico (Gladiadores) - 7 asistencias | 2. Rayo (Los Halcones) - 5 asistencias | 3. Pulpo (Espartanos) - 4 asistencias',
 '1. Muro (Espartanos) - 4 amarillas | 2. Roca (Vikingos) - 3 amarillas | 3. Guerrero (Samuráis) - 3 amarillas',
 '1. Tanque (Rayos Veloces) - 1 roja | 2. Roca (Vikingos) - 1 roja',
 'El Matador: 8 goles, 2 asistencias, 10 partidos | Rayo: 3 goles, 5 asistencias, 10 partidos | Flecha: 1 gol, 3 asistencias, 9 partidos | JnR009: 5 atajadas, 10 partidos');

-- 16. Crear SEGUIMIENTOS (follows) de hinchas
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
-- Hincha 1 sigue torneo y equipo
(26, 1, NULL, NULL),  -- Sigue Torneo 1
(26, NULL, 1, NULL),  -- Sigue Equipo 1
-- Hincha 2 sigue jugadores
(27, NULL, NULL, 1),  -- Sigue a El Matador
(27, NULL, NULL, 2),  -- Sigue a Rayo
-- Hincha 3 sigue equipo
(28, NULL, 13, NULL); -- Sigue a Rayos Veloces

-- ============================================
-- CONFIRMACIÓN DE DATOS INSERTADOS
-- ============================================

SELECT '=== RESUMEN DE DATOS INSERTADOS ===' AS info;

SELECT 'USUARIOS' AS tabla, COUNT(*) AS cantidad FROM users
UNION ALL
SELECT 'ADMINISTRADORES', COUNT(*) FROM users WHERE role = 'ADMINISTRATOR'
UNION ALL
SELECT 'DELEGADOS', COUNT(*) FROM users WHERE role = 'DELEGATE'
UNION ALL
SELECT 'HINCHAS', COUNT(*) FROM users WHERE role = 'FAN'
UNION ALL
SELECT 'EQUIPOS', COUNT(*) FROM teams
UNION ALL
SELECT 'EQUIPOS REGISTRADOS (ER)', COUNT(*) FROM teams WHERE is_registered = TRUE
UNION ALL
SELECT 'EQUIPOS NO REGISTRADOS (EnR)', COUNT(*) FROM teams WHERE is_registered = FALSE
UNION ALL
SELECT 'TORNEOS', COUNT(*) FROM tournaments
UNION ALL
SELECT 'TORNEOS ACTIVOS', COUNT(*) FROM tournaments WHERE is_finished = FALSE
UNION ALL
SELECT 'JUGADORES', COUNT(*) FROM players
UNION ALL
SELECT 'JUGADORES REGISTRADOS (JR)', COUNT(*) FROM players WHERE is_registered = TRUE
UNION ALL
SELECT 'JUGADORES NO REGISTRADOS (JnR)', COUNT(*) FROM players WHERE is_registered = FALSE
UNION ALL
SELECT 'PARTIDOS', COUNT(*) FROM matches
UNION ALL
SELECT 'PARTIDOS FINALIZADOS', COUNT(*) FROM matches WHERE status = 'FINISHED'
UNION ALL
SELECT 'PARTIDOS EN CURSO', COUNT(*) FROM matches WHERE status = 'IN_PROGRESS'
UNION ALL
SELECT 'EVENTOS DE PARTIDO', COUNT(*) FROM match_events
UNION ALL
SELECT 'SEGUIDORES', COUNT(*) FROM follows;

SELECT '=== SEEDING COMPLETADO CON ÉXITO ===' AS finalizado;