-- ============================================
-- SEEDING - Población inicial de la base de datos
-- BASE - Sistema de Gestión de Fútbol Amateur
-- ============================================

-- 1. Crear 20 ADMINISTRADORES
INSERT INTO users (email, provider_id, auth_provider, name, surname, dni, role) VALUES
-- Administrador principal del sistema
('admin@basefutbol.com', NULL, 'LOCAL', 'Carlos', 'Rodríguez', 30123456, 'ADMINISTRATOR'),
-- Administradores de torneos
('martina.lopez@email.com', 'google_12345', 'GOOGLE', 'Martina', 'López', 28901234, 'ADMINISTRATOR'),
('juan.perez@email.com', NULL, 'LOCAL', 'Juan', 'Pérez', 32098765, 'ADMINISTRATOR'),
('sofia.garcia@email.com', 'google_67890', 'GOOGLE', 'Sofía', 'García', 34123456, 'ADMINISTRATOR'),
('diego.martinez@email.com', NULL, 'LOCAL', 'Diego', 'Martínez', 36789012, 'ADMINISTRATOR'),
('ana.torres@basefutbol.com', NULL, 'LOCAL', 'Ana', 'Torres', 28456789, 'ADMINISTRATOR'),
('luis.fernandez@email.com', 'google_54321', 'GOOGLE', 'Luis', 'Fernández', 31234567, 'ADMINISTRATOR'),
('maria.gomez@basefutbol.com', NULL, 'LOCAL', 'María', 'Gómez', 29567890, 'ADMINISTRATOR'),
('carlos.molina@email.com', 'github_abc123', 'GITHUB', 'Carlos', 'Molina', 33456789, 'ADMINISTRATOR'),
('laura.sanchez@basefutbol.com', NULL, 'LOCAL', 'Laura', 'Sánchez', 27654321, 'ADMINISTRATOR'),
('pablo.ramirez@email.com', 'google_98765', 'GOOGLE', 'Pablo', 'Ramírez', 35678901, 'ADMINISTRATOR'),
('elena.castro@basefutbol.com', NULL, 'LOCAL', 'Elena', 'Castro', 30112233, 'ADMINISTRATOR'),
('miguel.diaz@email.com', 'microsoft_xyz789', 'MICROSOFT', 'Miguel', 'Díaz', 37890123, 'ADMINISTRATOR'),
('claudia.ruiz@basefutbol.com', NULL, 'LOCAL', 'Claudia', 'Ruiz', 28887766, 'ADMINISTRATOR'),
('javier.herrera@email.com', 'google_24680', 'GOOGLE', 'Javier', 'Herrera', 39012345, 'ADMINISTRATOR'),
('patricia.vargas@basefutbol.com', NULL, 'LOCAL', 'Patricia', 'Vargas', 27445566, 'ADMINISTRATOR'),
('ricardo.mendoza@email.com', 'github_def456', 'GITHUB', 'Ricardo', 'Mendoza', 40123456, 'ADMINISTRATOR'),
('isabel.silva@basefutbol.com', NULL, 'LOCAL', 'Isabel', 'Silva', 28993344, 'ADMINISTRATOR'),
('oscar.rios@email.com', 'google_13579', 'GOOGLE', 'Óscar', 'Ríos', 41234567, 'ADMINISTRATOR'),
('gabriela.rios@basefutbol.com', NULL, 'LOCAL', 'Gabriela', 'Ríos', 27778899, 'ADMINISTRATOR');

-- 2. Crear 30 DELEGADOS (cada uno será delegado de un equipo)
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
('delegado20@email.com', NULL, 'LOCAL', 'Natalia', 'Fuentes', 59012345, 'DELEGATE'),
-- Delegados equipo 21-25 (ciudad E)
('delegado21@email.com', NULL, 'LOCAL', 'Sergio', 'Molina', 60123456, 'DELEGATE'),
('delegado22@email.com', NULL, 'LOCAL', 'Elena', 'Ríos', 61234567, 'DELEGATE'),
('delegado23@email.com', 'google_555', 'GOOGLE', 'Hugo', 'Delgado', 62345678, 'DELEGATE'),
('delegado24@email.com', NULL, 'LOCAL', 'Clara', 'Peña', 63456789, 'DELEGATE'),
('delegado25@email.com', NULL, 'LOCAL', 'Tomás', 'Cabrera', 64567890, 'DELEGATE'),
-- Delegados equipo 26-30 (ciudad F)
('delegado26@email.com', NULL, 'LOCAL', 'Verónica', 'Santos', 65678901, 'DELEGATE'),
('delegado27@email.com', 'google_666', 'GOOGLE', 'Gustavo', 'Miranda', 66789012, 'DELEGATE'),
('delegado28@email.com', NULL, 'LOCAL', 'Florencia', 'Córdoba', 67890123, 'DELEGATE'),
('delegado29@email.com', NULL, 'LOCAL', 'Leonardo', 'Montes', 68901234, 'DELEGATE'),
('delegado30@email.com', NULL, 'LOCAL', 'Adriana', 'Navarro', 69012345, 'DELEGATE');

-- 3. Crear algunos HINCHAS/FANS (para probar seguimiento)
INSERT INTO users (email, provider_id, auth_provider, name, surname, dni, role) VALUES
('fan1@email.com', NULL, 'LOCAL', 'Tomás', 'Reyes', 60123456, 'FAN'),
('fan2@email.com', 'google_555', 'GOOGLE', 'Julieta', 'Miranda', 61234567, 'FAN'),
('fan3@email.com', NULL, 'LOCAL', 'Ignacio', 'Guerrero', 62345678, 'FAN'),
('fan4@email.com', NULL, 'LOCAL', 'Valentina', 'Paz', 63456789, 'FAN'),
('fan5@email.com', 'google_556', 'GOOGLE', 'Matías', 'Solís', 64567890, 'FAN'),
('fan6@email.com', NULL, 'LOCAL', 'Renata', 'Vega', 65678901, 'FAN'),
('fan7@email.com', NULL, 'LOCAL', 'Bruno', 'Carmona', 66789012, 'FAN'),
('fan8@email.com', 'google_557', 'GOOGLE', 'Antonella', 'Lagos', 67890123, 'FAN'),
('fan9@email.com', NULL, 'LOCAL', 'Emilio', 'Bustos', 68901234, 'FAN'),
('fan10@email.com', NULL, 'LOCAL', 'Catalina', 'Tapia', 69012345, 'FAN'),
('fan11@email.com', 'google_558', 'GOOGLE', 'Thiago', 'Cáceres', 70123456, 'FAN'),
('fan12@email.com', NULL, 'LOCAL', 'Florencia', 'Sepúlveda', 71234567, 'FAN'),
('fan13@email.com', NULL, 'LOCAL', 'Bautista', 'Godoy', 72345678, 'FAN'),
('fan14@email.com', 'google_559', 'GOOGLE', 'Luciana', 'Venegas', 73456789, 'FAN'),
('fan15@email.com', NULL, 'LOCAL', 'Dylan', 'Zúñiga', 74567890, 'FAN'),
('fan16@email.com', NULL, 'LOCAL', 'Agustina', 'Maldonado', 75678901, 'FAN'),
('fan17@email.com', 'google_560', 'GOOGLE', 'Axel', 'Olivares', 76789012, 'FAN'),
('fan18@email.com', NULL, 'LOCAL', 'Emma', 'Contreras', 77890123, 'FAN'),
('fan19@email.com', NULL, 'LOCAL', 'Facundo', 'Aravena', 78901234, 'FAN'),
('fan20@email.com', 'google_561', 'GOOGLE', 'Isidora', 'Salinas', 79012345, 'FAN'),
('fan21@email.com', NULL, 'LOCAL', 'Lorenzo', 'Alarcón', 80123456, 'FAN'),
('fan22@email.com', NULL, 'LOCAL', 'Maite', 'Parra', 81234567, 'FAN'),
('fan23@email.com', 'google_562', 'GOOGLE', 'Nicolás', 'Acevedo', 82345678, 'FAN'),
('fan24@email.com', NULL, 'LOCAL', 'Sofía', 'Gallegos', 83456789, 'FAN'),
('fan25@email.com', NULL, 'LOCAL', 'Joaquín', 'Riquelme', 84567890, 'FAN'),
('fan26@email.com', 'google_563', 'GOOGLE', 'Martina', 'Barrientos', 85678901, 'FAN'),
('fan27@email.com', NULL, 'LOCAL', 'Benjamín', 'Carrasco', 86789012, 'FAN'),
('fan28@email.com', NULL, 'LOCAL', 'Amanda', 'Pizarro', 87890123, 'FAN'),
('fan29@email.com', 'google_564', 'GOOGLE', 'Vicente', 'Espinoza', 88901234, 'FAN'),
('fan30@email.com', NULL, 'LOCAL', 'Antonia', 'Valdivia', 89012345, 'FAN');

-- 4. Crear 40 EQUIPOS (ER - Equipos Registrados)
-- Cada equipo tiene un delegado (tomamos los primeros 20 delegados)
INSERT INTO teams (name, logo_url, city, is_registered, delegate_id) VALUES
-- Ciudad A (Equipos 1-5) - Buenos Aires
('Los Halcones FC', 'https://ejemplo.com/logos/halcones.png', 'Buenos Aires', TRUE, 6),
('Ciclón Deportivo', 'https://ejemplo.com/logos/ciclon.png', 'Buenos Aires', TRUE, 7),
('Estrellas Doradas', 'https://ejemplo.com/logos/estrellas.png', 'Buenos Aires', TRUE, 8),
('Toros Salvajes', 'https://ejemplo.com/logos/toros.png', 'Buenos Aires', TRUE, 9),
('Águilas Reales', 'https://ejemplo.com/logos/aguilas.png', 'Buenos Aires', TRUE, 10),
-- Ciudad B (Equipos 6-10) - Córdoba
('Leones del Sur', 'https://ejemplo.com/logos/leones.png', 'Córdoba', TRUE, 11),
('Tiburones Azules', 'https://ejemplo.com/logos/tiburones.png', 'Córdoba', TRUE, 12),
('Dragones FC', 'https://ejemplo.com/logos/dragones.png', 'Córdoba', TRUE, 13),
('Fénix United', 'https://ejemplo.com/logos/fenix.png', 'Córdoba', TRUE, 14),
('Cóndores Andinos', 'https://ejemplo.com/logos/condores.png', 'Córdoba', TRUE, 15),
-- Ciudad C (Equipos 11-15) - Rosario
('Rayos Veloces', 'https://ejemplo.com/logos/rayos.png', 'Rosario', TRUE, 16),
('Truenos FC', 'https://ejemplo.com/logos/truenos.png', 'Rosario', TRUE, 17),
('Relámpagos SC', 'https://ejemplo.com/logos/relampagos.png', 'Rosario', TRUE, 18),
('Huracán FC', 'https://ejemplo.com/logos/huracan.png', 'Rosario', TRUE, 19),
('Tornados Deportivos', 'https://ejemplo.com/logos/tornados.png', 'Rosario', TRUE, 20),
-- Ciudad D (Equipos 16-20) - Mendoza
('Gladiadores FC', 'https://ejemplo.com/logos/gladiadores.png', 'Mendoza', TRUE, 21),
('Espartanos United', 'https://ejemplo.com/logos/espartanos.png', 'Mendoza', TRUE, 22),
('Vikingos SC', 'https://ejemplo.com/logos/vikingos.png', 'Mendoza', TRUE, 23),
('Samuráis FC', 'https://ejemplo.com/logos/samurais.png', 'Mendoza', TRUE, 24),
('Centauros Deportivos', 'https://ejemplo.com/logos/centauros.png', 'Mendoza', TRUE, 25),
-- Ciudad E (Equipos 21-25) - Mar del Plata
('Atlántico FC', 'https://ejemplo.com/logos/atlantico.png', 'Mar del Plata', TRUE, 26),
('Marinos Club', 'https://ejemplo.com/logos/marinos.png', 'Mar del Plata', TRUE, 27),
('Delfines MDQ', 'https://ejemplo.com/logos/delfines.png', 'Mar del Plata', TRUE, 28),
('Olas Gigantes', 'https://ejemplo.com/logos/olas.png', 'Mar del Plata', TRUE, 29),
('Faros del Sur', 'https://ejemplo.com/logos/faros.png', 'Mar del Plata', TRUE, 30),
-- Ciudad F (Equipos 26-30) - La Plata
('Estudiantes LP', 'https://ejemplo.com/logos/estudiantes.png', 'La Plata', TRUE, 31),
('Gimnasia FC', 'https://ejemplo.com/logos/gimnasia.png', 'La Plata', TRUE, 32),
('Ciudad de las Diagonales', 'https://ejemplo.com/logos/diagonales.png', 'La Plata', TRUE, 33),
('Bosques FC', 'https://ejemplo.com/logos/bosques.png', 'La Plata', TRUE, 34),
('Platenses Unidos', 'https://ejemplo.com/logos/platenses.png', 'La Plata', TRUE, 35),
-- Ciudad G (Equipos 31-35) - San Miguel de Tucumán
('Tucumán FC', 'https://ejemplo.com/logos/tucuman.png', 'San Miguel de Tucumán', TRUE, 36),
('Los Alisos', 'https://ejemplo.com/logos/alisos.png', 'San Miguel de Tucumán', TRUE, 37),
('Cañaverales SC', 'https://ejemplo.com/logos/canaverales.png', 'San Miguel de Tucumán', TRUE, 38),
('Cerro San Javier', 'https://ejemplo.com/logos/cerro.png', 'San Miguel de Tucumán', TRUE, 39),
('Independiente Tucumán', 'https://ejemplo.com/logos/independiente.png', 'San Miguel de Tucumán', TRUE, 40),
-- Ciudad H (Equipos 36-40) - Salta
('Gauchos del Norte', 'https://ejemplo.com/logos/gauchos.png', 'Salta', TRUE, 41),
('Quebrada FC', 'https://ejemplo.com/logos/quebrada.png', 'Salta', TRUE, 42),
('Serranos SC', 'https://ejemplo.com/logos/serranos.png', 'Salta', TRUE, 43),
('Tren a las Nubes', 'https://ejemplo.com/logos/tren.png', 'Salta', TRUE, 44),
('Viñedos FC', 'https://ejemplo.com/logos/vinedos.png', 'Salta', TRUE, 45);

-- 5. Crear algunos Equipos No Registrados (EnR) para pruebas
INSERT INTO teams (name, city, is_registered) VALUES
('Club Amigos Unidos', 'Buenos Aires', FALSE),
('Deportivo Barrio Norte', 'Córdoba', FALSE),
('La Esperanza FC', 'Rosario', FALSE),
('Estrellas del Oeste', 'Mendoza', FALSE),
('Juventud del Sur', 'Mar del Plata', FALSE),
('Deportivo Los Pinos', 'La Plata', FALSE),
('Unión Deportiva', 'San Miguel de Tucumán', FALSE),
('Atlético Esperanza', 'Salta', FALSE),
('Club Deportivo Aurora', 'Buenos Aires', FALSE),
('Sportivo Nueva Generación', 'Córdoba', FALSE);

-- 6. Crear 10 TORNEOS
INSERT INTO tournaments (name, description, subs_limit, is_finished, format, type, tiebreaker1, tiebreaker2, tiebreaker3, start_date, end_date) VALUES
-- Torneo 1: Liga F11 en progreso
('Copa Amateur 2024', 'Torneo oficial de fútbol 11 amateur', 5, FALSE, 'F11', 'LEAGUE', 'GOALS_FOR', 'GOAL_DIFFERENCE', 'HEAD_TO_HEAD', '2024-03-01', '2024-06-30'),
-- Torneo 2: Playoff F7 en progreso
('Torneo Relámpago F7', 'Torneo rápido de fútbol 7', 3, FALSE, 'F7', 'PLAYOFF', 'HEAD_TO_HEAD', 'GOAL_DIFFERENCE', 'WINS', '2024-04-01', '2024-05-15'),
-- Torneo 3: F5 finalizado
('Campeonato Indoor 2023', 'Torneo de fútbol 5 bajo techo', NULL, TRUE, 'F5', 'LEAGUE', 'GOAL_DIFFERENCE', 'GOALS_FOR', NULL, '2023-10-01', '2023-12-20'),
-- Torneo 4: Liga F11 finalizado con sustituciones ilimitadas
('Liga Metropolitana 2023', 'Campeonato anual de fútbol 11 de la ciudad', NULL, TRUE, 'F11', 'LEAGUE', 'GOAL_DIFFERENCE', 'GOALS_FOR', 'HEAD_TO_HEAD', '2023-02-15', '2023-11-30'),
-- Torneo 5: Playoff F7 programado para futuro
('Copa Verano 2025', 'Torneo de verano de fútbol 7 playero', 4, FALSE, 'F7', 'PLAYOFF', 'HEAD_TO_HEAD', 'GOAL_DIFFERENCE', 'GOALS_FOR', '2025-01-10', '2025-02-28'),
-- Torneo 6: Liga F9 en progreso
('Torneo Intermedia F9', 'Competencia de fútbol 9 para categorías juveniles', 6, FALSE, 'F9', 'LEAGUE', 'WINS', 'GOAL_DIFFERENCE', 'GOALS_FOR', '2024-05-01', '2024-09-30'),
-- Torneo 7: Liga F5 finalizado recientemente
('Copa Indoor Invierno 2024', 'Torneo de invierno de fútbol 5 indoor', NULL, TRUE, 'F5', 'LEAGUE', 'GOALS_FOR', 'HEAD_TO_HEAD', 'GOAL_DIFFERENCE', '2024-06-01', '2024-08-31'),
-- Torneo 8: Playoff F11 con sustituciones limitadas
('Supercopa Nacional', 'Eliminatoria nacional entre campeones regionales', 3, FALSE, 'F11', 'PLAYOFF', 'AWAY_GOALS', 'GOAL_DIFFERENCE', 'PENALTIES', '2024-09-01', '2024-12-15'),
-- Torneo 9: Liga F7 mixto (femenino y masculino)
('Copa Inclusiva 2024', 'Torneo mixto de fútbol 7 para todas las categorías', 5, FALSE, 'F7', 'LEAGUE', 'FAIR_PLAY', 'GOAL_DIFFERENCE', 'GOALS_FOR', '2024-07-01', '2024-10-31'),
-- Torneo 10: Playoff F5 en progreso (torneo rápido)
('Torneo Express F5', 'Competencia rápida de fútbol 5', 2, FALSE, 'F5', 'PLAYOFF', 'HEAD_TO_HEAD', 'WINS', NULL, '2024-08-15', '2024-09-30');

-- 7. Asignar ADMINISTRADORES a los torneos (relación muchos a muchos)
INSERT INTO tournament_admins (tournament_id, user_id, is_main_admin) VALUES
-- Torneo 1: 3 administradores (Carlos principal)
(1, 1, TRUE),  -- Carlos Rodríguez (admin principal)
(1, 2, FALSE), -- Martina López
(1, 3, FALSE), -- Juan Pérez
-- Torneo 2: 2 administradores (Sofía principal)
(2, 4, TRUE),  -- Sofía García
(2, 5, FALSE), -- Diego Martínez
-- Torneo 3: 1 administrador (Diego principal)
(3, 5, TRUE),  -- Diego Martínez
-- Torneo 4: Liga F11 finalizado (3 administradores)
(4, 6, TRUE),  -- Ana Torres (principal)
(4, 7, FALSE), -- Luis Fernández
(4, 8, FALSE), -- María Gómez
-- Torneo 5: Playoff F7 programado futuro (2 administradores)
(5, 9, TRUE),  -- Carlos Molina (principal)
(5, 10, FALSE), -- Laura Sánchez
-- Torneo 6: Liga F9 en progreso (3 administradores)
(6, 11, TRUE),  -- Pablo Ramírez (principal)
(6, 12, FALSE), -- Elena Castro
(6, 13, FALSE), -- Miguel Díaz
-- Torneo 7: Liga F5 finalizado recientemente (2 administradores)
(7, 14, TRUE),  -- Claudia Ruiz (principal)
(7, 15, FALSE), -- Javier Herrera
-- Torneo 8: Playoff F11 importante (3 administradores)
(8, 16, TRUE),  -- Patricia Vargas (principal)
(8, 17, FALSE), -- Ricardo Mendoza
(8, 18, FALSE), -- Isabel Silva
-- Torneo 9: Liga F7 mixto (2 administradores)
(9, 19, TRUE),  -- Óscar Ríos (principal)
(9, 20, FALSE), -- Gabriela Ríos
-- Torneo 10: Playoff F5 rápido (2 administradores - reutilizando algunos)
(10, 1, TRUE),  -- Carlos Rodríguez (principal - también en torneo 1)
(10, 4, FALSE); -- Sofía García (también en torneo 2)

-- 8. Inscribir EQUIPOS en los torneos
-- Torneo 1 (F11 - Liga en progreso): 12 equipos
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6),
(1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12);

-- Torneo 2 (F7 - Playoff en progreso): 8 equipos
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (2, 20);

-- Torneo 3 (F5 - Liga finalizado): 6 equipos (incluye 3 no registrados)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(3, 1), (3, 6), (3, 11), (3, 21), (3, 22), (3, 23);

-- Torneo 4 (F11 - Liga finalizado): 16 equipos (torneo grande del 2023)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5),  -- Buenos Aires
(4, 6), (4, 7), (4, 8), (4, 9), (4, 10), -- Córdoba
(4, 11), (4, 12), (4, 13), (4, 14), (4, 15), -- Rosario
(4, 16); -- Mendoza (para completar 16)

-- Torneo 5 (F7 - Playoff futuro): 6 equipos (torneo playero 2025)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(5, 21), (5, 22), (5, 23), (5, 24), (5, 25), -- Mar del Plata (playa)
(5, 26); -- La Plata

-- Torneo 6 (F9 - Liga en progreso): 10 equipos (juvenil)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(6, 31), (6, 32), (6, 33), (6, 34), (6, 35), -- San Miguel de Tucumán
(6, 36), (6, 37), (6, 38), (6, 39), (6, 40); -- Salta

-- Torneo 7 (F5 - Liga finalizado): 8 equipos (indoor invierno)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(7, 16), (7, 17), (7, 18), (7, 19), (7, 20), -- Mendoza (invierno)
(7, 26), (7, 27), (7, 28); -- La Plata y Mar del Plata

-- Torneo 8 (F11 - Playoff importante): 8 equipos (campeones)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(8, 1), (8, 6), (8, 11), (8, 16), -- Campeones regionales
(8, 21), (8, 26), (8, 31), (8, 36); -- Campeones de otras ciudades

-- Torneo 9 (F7 - Liga mixto): 12 equipos (inclusivo)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(9, 2), (9, 7), (9, 12), (9, 17), (9, 22), (9, 27), -- Equipos pares
(9, 32), (9, 37), (9, 42), -- Equipos de diferentes ciudades
(9, 46), (9, 47), (9, 48); -- 3 equipos no registrados (para inclusión)

-- Torneo 10 (F5 - Playoff rápido): 6 equipos (express)
INSERT INTO tournament_teams (tournament_id, team_id) VALUES
(10, 3), (10, 8), (10, 13), -- Equipos impares
(10, 49), (10, 50), -- 2 equipos no registrados
(10, 23); -- Mar del Plata

-- 9. Crear JUGADORES (mezcla de JR y JnR)
INSERT INTO players (nickname, birth_date, id_code, description, is_registered, total_goals, total_assists, total_games, total_yellows, total_reds) VALUES
-- Jugadores registrados (equipos 1-40)
('El Tanque', '1995-03-15', 'ARG-950315-001', 'Defensor central fuerte y físico', TRUE, 12, 8, 85, 15, 2),
('Rayo', '1998-07-22', 'ARG-980722-002', 'Extremo izquierdo veloz', TRUE, 45, 32, 120, 8, 0),
('Pulpo', '1993-11-05', 'ARG-931105-003', 'Mediocampista recuperador', TRUE, 5, 18, 150, 22, 3),
('Sniper', '2000-01-30', 'ARG-000130-004', 'Delantero goleador preciso', TRUE, 68, 15, 95, 12, 1),
('Muro', '1992-09-14', 'ARG-920914-005', 'Arquero seguro bajo los palos', TRUE, 0, 2, 180, 3, 0),
('Magic', '1997-05-18', 'ARG-970518-006', 'Mediocampista creativo', TRUE, 25, 42, 110, 10, 0),
('Tormenta', '1999-08-08', 'ARG-990808-007', 'Extremo derecho desequilibrante', TRUE, 38, 28, 75, 14, 2),
('Roca', '1991-12-25', 'ARG-911225-008', 'Defensor experimentado', TRUE, 8, 12, 200, 25, 4),
('Flecha', '2001-02-14', 'ARG-010214-009', 'Delantero joven promesa', TRUE, 22, 10, 45, 5, 0),
('Cerebro', '1994-06-30', 'ARG-940630-010', 'Mediocampista organizador', TRUE, 15, 35, 130, 9, 1),
-- Jugadores no registrados (equipos 41-50)
('Novato', '2003-04-10', NULL, 'Jugador amateur sin registro', FALSE, 0, 0, 10, 1, 0),
('Amateur', '2002-11-20', NULL, 'Jugador de barrio', FALSE, 5, 3, 25, 4, 0),
('Pasión', '2004-01-15', NULL, 'Joven con mucho entusiasmo', FALSE, 2, 1, 15, 2, 0),
('Esperanza', '2001-07-05', NULL, 'Busca conseguir registro', FALSE, 8, 6, 30, 3, 1),
('Corazón', '2003-09-18', NULL, 'Juega por amor al deporte', FALSE, 3, 2, 20, 1, 0),
-- Más jugadores registrados
('Bomba', '1996-03-22', 'ARG-960322-011', 'Delantero potente', TRUE, 52, 18, 140, 18, 3),
('Halcón', '1999-10-11', 'ARG-991011-012', 'Defensor rápido', TRUE, 6, 9, 65, 11, 1),
('Fantasma', '1997-12-03', 'ARG-971203-013', 'Mediocampista de llegada', TRUE, 31, 20, 100, 7, 0),
('Titan', '1990-05-28', 'ARG-900528-014', 'Defensor veterano', TRUE, 18, 14, 220, 30, 5),
('Chispa', '2000-06-19', 'ARG-000619-015', 'Mediocampista ofensivo', TRUE, 29, 26, 70, 9, 1),
('Lobo', '1998-08-07', 'ARG-980807-016', 'Delantero oportunista', TRUE, 47, 12, 115, 16, 2),
('Mago', '1995-02-26', 'ARG-950226-017', 'Mediocampista técnico', TRUE, 21, 38, 125, 10, 0),
('Furia', '1993-04-17', 'ARG-930417-018', 'Defensor aguerrido', TRUE, 9, 7, 160, 28, 4),
('Cometa', '2001-11-09', 'ARG-011109-019', 'Extremo veloz', TRUE, 33, 19, 55, 6, 0),
('Guerrero', '1994-07-01', 'ARG-940701-020', 'Mediocampista de lucha', TRUE, 14, 16, 135, 20, 2),
-- Más jugadores no registrados
('Sueño', '2005-03-08', NULL, 'Joven aspirante', FALSE, 1, 0, 8, 0, 0),
('Barrial', '2002-05-25', NULL, 'Juega en potreros', FALSE, 7, 5, 22, 5, 0),
('Ilusión', '2004-08-12', NULL, 'Quiere ser profesional', FALSE, 4, 3, 18, 2, 0),
('Amigo', '2003-12-30', NULL, 'Juega con compañeros', FALSE, 2, 4, 16, 1, 0),
('Talent', '2001-06-14', NULL, 'Tiene condiciones naturales', FALSE, 9, 7, 28, 3, 1),
-- Continuación jugadores registrados
('Viento', '1999-09-23', 'ARG-990923-021', 'Extremo derecho veloz', TRUE, 41, 23, 80, 11, 1),
('Místico', '1996-01-08', 'ARG-960108-022', 'Mediocampista imaginativo', TRUE, 19, 31, 105, 8, 0),
('Coloso', '1992-11-19', 'ARG-921119-023', 'Defensor central alto', TRUE, 11, 5, 190, 21, 3),
('Huracán', '1997-07-04', 'ARG-970704-024', 'Delantero intenso', TRUE, 58, 14, 130, 17, 2),
('Sabio', '1991-03-27', 'ARG-910327-025', 'Mediocampista veterano', TRUE, 27, 45, 210, 15, 1),
('Relámpago', '2000-04-02', 'ARG-000402-026', 'Extremo izquierdo rápido', TRUE, 36, 21, 60, 7, 0),
('Fortaleza', '1993-08-16', 'ARG-930816-027', 'Defensor sólido', TRUE, 7, 11, 155, 19, 2),
('Goleador', '1998-12-11', 'ARG-981211-028', 'Delantero nato', TRUE, 65, 9, 90, 13, 1),
('Pivote', '1995-06-09', 'ARG-950609-029', 'Mediocampista defensivo', TRUE, 3, 22, 145, 24, 3),
('Águila', '1999-02-28', 'ARG-990228-030', 'Delantero alto', TRUE, 44, 16, 85, 10, 0),
-- Más jugadores no registrados
('Principiante', '2006-01-17', NULL, 'Recién comienza', FALSE, 0, 1, 5, 0, 0),
('Potrero', '2002-09-04', NULL, 'Creció jugando en la calle', FALSE, 6, 4, 20, 3, 0),
('Futuro', '2005-05-20', NULL, 'Promesa juvenil', FALSE, 3, 2, 12, 1, 0),
('Comunidad', '2003-10-31', NULL, 'Juega en equipo local', FALSE, 4, 6, 19, 2, 0),
('Natural', '2001-12-24', NULL, 'Tiene talento innato', FALSE, 10, 8, 26, 4, 0),
-- Últimos jugadores registrados de este lote
('Trueno', '1994-10-13', 'ARG-941013-031', 'Mediocampista potente', TRUE, 23, 29, 140, 16, 2),
('Sombra', '1997-01-21', 'ARG-970121-032', 'Defensor marcador', TRUE, 4, 8, 95, 14, 1),
('Artillero', '1996-08-05', 'ARG-960805-033', 'Delantero de gran remate', TRUE, 61, 11, 110, 15, 1),
('Piloto', '1992-06-18', 'ARG-920618-034', 'Mediocampista director', TRUE, 17, 40, 195, 12, 0),
('Gladiador', '1993-12-07', 'ARG-931207-035', 'Defensor combativo', TRUE, 10, 9, 170, 26, 3),
('Dinamita', '1998-04-29', 'ARG-980429-036', 'Delantero explosivo', TRUE, 49, 17, 100, 14, 2),
('Maestro', '1991-09-10', 'ARG-910910-037', 'Mediocampista experimentado', TRUE, 32, 50, 225, 18, 1),
('Flecha', '1999-07-16', 'ARG-990716-038', 'Extremo derecho veloz', TRUE, 39, 24, 75, 9, 0),
('Mole', '1995-11-02', 'ARG-951102-039', 'Defensor fuerte', TRUE, 13, 6, 135, 22, 4),
('As', '1996-02-14', 'ARG-960214-040', 'Mediocampista habilidoso', TRUE, 28, 33, 115, 11, 1),
-- Jugadores registrados (41-70)
('Tornado', '1998-03-25', 'ARG-980325-041', 'Extremo izquierdo desequilibrante', TRUE, 42, 25, 88, 12, 1),
('Muro Infranqueable', '1991-05-14', 'ARG-910514-042', 'Arquero seguro y experimentado', TRUE, 0, 3, 185, 2, 0),
('Cazador', '1997-11-08', 'ARG-971108-043', 'Delantero oportunista', TRUE, 55, 13, 125, 16, 2),
('General', '1993-09-30', 'ARG-930930-044', 'Mediocampista líder', TRUE, 18, 32, 165, 19, 1),
('Pantera', '1999-06-17', 'ARG-990617-045', 'Defensor rápido y ágil', TRUE, 7, 10, 70, 9, 0),
('Orquesta', '1995-04-22', 'ARG-950422-046', 'Mediocampista organizador', TRUE, 14, 37, 138, 11, 0),
('Cañón', '1996-12-05', 'ARG-961205-047', 'Delantero de potente remate', TRUE, 63, 10, 118, 17, 2),
('Escudo', '1992-07-19', 'ARG-920719-048', 'Defensor central seguro', TRUE, 9, 8, 178, 23, 3),
('Diamante', '2000-02-11', 'ARG-000211-049', 'Joven talento ofensivo', TRUE, 30, 18, 62, 7, 0),
('Ancla', '1994-08-03', 'ARG-940803-050', 'Mediocampista defensivo', TRUE, 5, 19, 142, 21, 2),
-- Jugadores no registrados (16-25)
('Estrella', '2003-04-18', NULL, 'Destaca en su barrio', FALSE, 6, 5, 24, 3, 0),
('Coraje', '2002-10-22', NULL, 'Juega con gran determinación', FALSE, 3, 4, 21, 2, 0),
('Alegría', '2004-07-09', NULL, 'Siempre positivo en la cancha', FALSE, 4, 2, 17, 1, 0),
('Esfuerzo', '2001-03-15', NULL, 'Se destaca por su trabajo', FALSE, 8, 6, 29, 4, 1),
('Veterano', '1998-11-28', NULL, 'Experiencia en torneos barriales', FALSE, 15, 12, 45, 8, 0),
-- Más registrados
('Torre', '1997-01-04', 'ARG-970104-051', 'Defensor alto y fuerte', TRUE, 10, 7, 102, 15, 1),
('Chispita', '2001-09-26', 'ARG-010926-052', 'Mediocampista joven y veloz', TRUE, 26, 20, 58, 6, 0),
('Baluarte', '1990-12-20', 'ARG-901220-053', 'Defensor veterano', TRUE, 16, 11, 198, 27, 4),
('Rifle', '1998-05-07', 'ARG-980507-054', 'Delantero de tiro preciso', TRUE, 59, 14, 108, 13, 1),
('Conductor', '1994-02-14', 'ARG-940214-055', 'Mediocampista director de juego', TRUE, 20, 41, 148, 14, 0),
('Jaguar', '1999-08-31', 'ARG-990831-056', 'Extremo derecho veloz', TRUE, 37, 22, 78, 10, 0),
('Sicario', '1995-11-23', 'ARG-951123-057', 'Delantero letal en el área', TRUE, 67, 9, 128, 18, 2),
('Faro', '1992-04-09', 'ARG-920409-058', 'Defensor líder de la zaga', TRUE, 8, 13, 172, 20, 2),
('Joyita', '2000-06-12', 'ARG-000612-059', 'Mediocampista joven promesa', TRUE, 24, 16, 53, 5, 0),
('Mole', '1993-10-05', 'ARG-931005-060', 'Defensor físico y fuerte', TRUE, 12, 6, 155, 24, 3),
-- Más no registrados
('Destino', '2005-02-08', NULL, 'Cree en su futuro futbolístico', FALSE, 1, 1, 9, 0, 0),
('Barrio', '2002-08-14', NULL, 'Representa a su comunidad', FALSE, 7, 8, 23, 4, 0),
('Sueños', '2004-05-30', NULL, 'Persigue su sueño futbolero', FALSE, 5, 3, 16, 2, 0),
('Amistad', '2003-12-11', NULL, 'Juega con sus amigos', FALSE, 3, 5, 18, 1, 0),
('Talento', '2001-09-03', NULL, 'Tiene condiciones naturales', FALSE, 11, 9, 31, 5, 0),
-- Continuación registrados
('Huracán', '1996-07-18', 'ARG-960718-061', 'Mediocampista de gran intensidad', TRUE, 22, 28, 132, 17, 1),
('Sombra', '1991-03-02', 'ARG-910302-062', 'Defensor marcador experto', TRUE, 6, 9, 188, 25, 3),
('Meteoro', '1998-12-27', 'ARG-981227-063', 'Delantero explosivo', TRUE, 51, 17, 96, 14, 2),
('Sabio', '1993-05-20', 'ARG-930520-064', 'Mediocampista inteligente', TRUE, 19, 35, 162, 13, 1),
('Coloso', '1997-09-11', 'ARG-970911-065', 'Defensor imponente', TRUE, 11, 8, 112, 16, 1),
('Rayito', '2001-01-24', 'ARG-010124-066', 'Extremo izquierdo joven', TRUE, 33, 19, 60, 8, 0),
('Muralla', '1990-08-07', 'ARG-900807-067', 'Arquero experimentado', TRUE, 0, 1, 205, 4, 0),
('Sniper', '1995-06-29', 'ARG-950629-068', 'Delantero preciso', TRUE, 58, 12, 122, 15, 1),
('Pívot', '1992-11-15', 'ARG-921115-069', 'Mediocampista defensivo', TRUE, 4, 23, 175, 22, 2),
('Águila', '1999-04-03', 'ARG-990403-070', 'Delantero de juego aéreo', TRUE, 46, 15, 82, 11, 0),
-- Más no registrados
('Principiante', '2006-03-19', NULL, 'Da sus primeros pasos', FALSE, 0, 0, 6, 0, 0),
('Tradición', '2002-06-25', NULL, 'Sigue la tradición familiar', FALSE, 8, 6, 25, 3, 0),
('Futuro', '2005-10-08', NULL, 'Aspira a ser profesional', FALSE, 2, 2, 11, 1, 0),
('Unión', '2003-07-14', NULL, 'Une al equipo', FALSE, 4, 7, 20, 2, 0),
('Don', '2001-11-29', NULL, 'Tiene don para el fútbol', FALSE, 12, 10, 28, 4, 1),
-- Últimos de este lote
('Trueno', '1994-12-01', 'ARG-941201-071', 'Mediocampista de potencia', TRUE, 25, 30, 145, 18, 2),
('Fantasma', '1996-09-16', 'ARG-960916-072', 'Delantero de movimientos inteligentes', TRUE, 49, 11, 105, 12, 1),
('Timonel', '1991-02-09', 'ARG-910209-073', 'Mediocampista director', TRUE, 16, 43, 192, 16, 1),
('Gladiador', '1993-07-22', 'ARG-930722-074', 'Defensor combativo', TRUE, 13, 10, 168, 26, 3),
('Dinamo', '1997-04-05', 'ARG-970405-075', 'Mediocampista energético', TRUE, 21, 26, 120, 15, 1),
('Flecha Veloz', '2000-10-18', 'ARG-001018-076', 'Extremo derecho rápido', TRUE, 40, 23, 72, 9, 0),
('Roca Sólida', '1995-03-28', 'ARG-950328-077', 'Defensor confiable', TRUE, 9, 7, 140, 21, 2),
('Asistente', '1998-08-11', 'ARG-980811-078', 'Mediocampista creativo', TRUE, 17, 38, 98, 10, 0),
('Goleador Nato', '1992-06-04', 'ARG-920604-079', 'Delantero histórico', TRUE, 72, 8, 155, 19, 2),
('Guardian', '1994-01-27', 'ARG-940127-080', 'Defensor atento', TRUE, 7, 12, 152, 23, 3),
-- Jugadores registrados (81-110)
('Matador', '1996-05-13', 'ARG-960513-081', 'Delantero letal en el área', TRUE, 64, 11, 130, 16, 2),
('Maestro', '1991-10-29', 'ARG-911029-082', 'Mediocampista con gran visión', TRUE, 22, 48, 210, 14, 1),
('Tanque', '1993-12-17', 'ARG-931217-083', 'Defensor imposible de superar', TRUE, 14, 6, 175, 28, 4),
('Duende', '1999-03-08', 'ARG-990308-084', 'Extremo zurdo habilidoso', TRUE, 35, 27, 90, 9, 0),
('Cóndor', '1997-08-22', 'ARG-970822-085', 'Delantero con gran salto', TRUE, 48, 14, 115, 13, 1),
('Reloj', '1992-01-11', 'ARG-920111-086', 'Mediocampista preciso', TRUE, 13, 36, 185, 17, 0),
('Mural', '1994-04-06', 'ARG-940406-087', 'Defensor central', TRUE, 5, 9, 160, 22, 2),
('Veloz', '2000-07-19', 'ARG-000719-088', 'Extremo rápido', TRUE, 41, 21, 68, 8, 0),
('Sargento', '1995-09-03', 'ARG-950903-089', 'Defensor ordenador', TRUE, 8, 10, 145, 20, 2),
('Arquitecto', '1993-02-28', 'ARG-930228-090', 'Mediocampista constructor', TRUE, 19, 39, 170, 15, 1),
-- Jugadores no registrados (31-40)
('Promesa', '2004-12-05', NULL, 'Joven con proyección', FALSE, 3, 2, 14, 1, 0),
('Barrilete', '2002-04-17', NULL, 'Jugador callejero', FALSE, 9, 7, 27, 5, 0),
('Luchador', '2003-11-23', NULL, 'Nunca se rinde', FALSE, 5, 4, 22, 4, 1),
('Latino', '2001-08-09', NULL, 'Talento natural', FALSE, 10, 11, 33, 3, 0),
('Callejero', '2005-01-30', NULL, 'Creció en potrero', FALSE, 2, 3, 12, 2, 0),
-- Más registrados
('Centinela', '1996-10-14', 'ARG-961014-091', 'Arquero seguro', TRUE, 0, 2, 125, 3, 0),
('Impacto', '1998-06-25', 'ARG-980625-092', 'Delantero potente', TRUE, 56, 13, 105, 15, 2),
('Zorro', '1991-07-07', 'ARG-910707-093', 'Mediocampista astuto', TRUE, 27, 44, 195, 12, 0),
('Titán', '1994-11-18', 'ARG-941118-094', 'Defensor fuerte', TRUE, 10, 8, 150, 24, 3),
('Candado', '1997-02-09', 'ARG-970209-095', 'Defensor cerrojo', TRUE, 4, 7, 110, 19, 2),
('Brujo', '1995-12-22', 'ARG-951222-096', 'Mediocampista mago', TRUE, 23, 34, 135, 11, 0),
('Gacela', '2000-05-15', 'ARG-000515-097', 'Extremo elegante', TRUE, 38, 24, 75, 7, 0),
('León', '1993-08-29', 'ARG-930829-098', 'Delantero corajudo', TRUE, 60, 10, 165, 21, 3),
('Timonel', '1992-03-03', 'ARG-920303-099', 'Mediocampista capitán', TRUE, 16, 41, 180, 13, 0),
('Muro', '1998-09-12', 'ARG-980912-100', 'Defensor infranqueable', TRUE, 6, 5, 95, 17, 1),
-- Más no registrados
('Esperanza', '2004-02-28', NULL, 'Ilusión deportiva', FALSE, 4, 1, 13, 0, 0),
('Fútbolista', '2002-07-31', NULL, 'Nació con la pelota', FALSE, 12, 8, 29, 4, 0),
('Pibe', '2003-05-16', NULL, 'Pibe de barrio', FALSE, 7, 6, 21, 3, 0),
('Pasión', '2001-10-04', NULL, 'Vive por el fútbol', FALSE, 9, 9, 30, 5, 1),
('Semilla', '2005-08-21', NULL, 'Futura estrella', FALSE, 1, 2, 8, 0, 0),
-- Continuación registrados
('Glaciar', '1990-09-17', 'ARG-900917-101', 'Defensor frío y calculador', TRUE, 7, 12, 200, 26, 3),
('Flecha', '1999-01-06', 'ARG-990106-102', 'Extremo veloz', TRUE, 44, 20, 85, 10, 0),
('Rey', '1996-03-30', 'ARG-960330-103', 'Delantero goleador', TRUE, 71, 8, 140, 14, 1),
('Baluarte', '1992-08-24', 'ARG-920824-104', 'Defensor histórico', TRUE, 9, 9, 190, 29, 4),
('Motor', '1997-11-07', 'ARG-971107-105', 'Mediocampista incansable', TRUE, 18, 27, 118, 16, 1),
('Diamante', '2001-04-12', 'ARG-010412-106', 'Joven joya', TRUE, 29, 19, 55, 5, 0),
('Vikingo', '1994-07-26', 'ARG-940726-107', 'Defensor guerrero', TRUE, 15, 7, 158, 23, 2),
('Mágico', '1995-01-19', 'ARG-950119-108', 'Mediocampista habilidoso', TRUE, 26, 37, 148, 12, 0),
('Halcón', '1998-04-02', 'ARG-980402-109', 'Delantero depredador', TRUE, 53, 15, 102, 13, 1),
('Acróbata', '1993-06-14', 'ARG-930614-110', 'Arquero ágil', TRUE, 0, 1, 168, 2, 0),
-- Últimos no registrados de este lote
('Orgullo', '2004-09-09', NULL, 'Orgullo del barrio', FALSE, 3, 4, 15, 2, 0),
('Ternero', '2002-12-03', NULL, 'Joven prometedor', FALSE, 8, 5, 24, 3, 0),
('Centenario', '2003-03-18', NULL, 'Jugador de equipo', FALSE, 6, 5, 19, 2, 0),
('Alma', '2001-05-27', NULL, 'Corazón del equipo', FALSE, 11, 8, 32, 4, 0),
('Camino', '2005-11-11', NULL, 'Comienza su camino', FALSE, 2, 1, 9, 1, 0),
-- Últimos registrados de este lote
('Centauro', '1996-11-20', 'ARG-961120-111', 'Mediocampista todoterreno', TRUE, 24, 33, 138, 18, 2),
('Guardián', '1992-05-05', 'ARG-920505-112', 'Defensor protector', TRUE, 6, 8, 182, 21, 2),
('Rematador', '1999-07-29', 'ARG-990729-113', 'Delantero definidor', TRUE, 62, 12, 88, 11, 1),
('Estratega', '1994-10-10', 'ARG-941010-114', 'Mediocampista táctico', TRUE, 20, 42, 155, 15, 0),
('Piedra', '1997-12-14', 'ARG-971214-115', 'Defensor duro', TRUE, 5, 6, 108, 27, 4),
('Chispa', '2000-09-01', 'ARG-000901-116', 'Extremo eléctrico', TRUE, 36, 25, 70, 8, 0),
('Gigante', '1993-01-08', 'ARG-930108-117', 'Defensor alto', TRUE, 12, 5, 163, 20, 2),
('Cerebro', '1995-08-27', 'ARG-950827-118', 'Mediocampista pensante', TRUE, 21, 40, 142, 14, 1),
('Potro', '1998-10-15', 'ARG-981015-119', 'Delantero joven y fuerte', TRUE, 50, 16, 98, 12, 1),
('Esmeralda', '1991-04-21', 'ARG-910421-120', 'Defensor fino', TRUE, 8, 11, 188, 16, 0),
-- Jugadores registrados (121-150)
('Emperador', '1992-12-09', 'ARG-921209-121', 'Líder de la defensa', TRUE, 11, 9, 195, 24, 2),
('Brujo', '1996-02-17', 'ARG-960217-122', 'Mediocampista con magia', TRUE, 28, 45, 136, 10, 0),
('Pantera Negra', '1999-10-30', 'ARG-991030-123', 'Extremo letal', TRUE, 47, 18, 92, 9, 0),
('RoboCop', '1993-09-08', 'ARG-930908-124', 'Defensor implacable', TRUE, 7, 6, 172, 31, 5),
('Clutch', '1997-06-21', 'ARG-970621-125', 'Delantero de los momentos clave', TRUE, 54, 13, 119, 15, 1),
-- Jugadores no registrados (46-50)
('Revelación', '2006-01-04', NULL, 'Sorprende a todos', FALSE, 1, 1, 7, 0, 0),
('Socio', '2003-02-14', NULL, 'Juega con su hermano', FALSE, 5, 6, 20, 2, 0),
('Vecino', '2002-09-27', NULL, 'Referente del barrio', FALSE, 10, 7, 31, 5, 0),
('Infancia', '2004-06-15', NULL, 'Juega desde niño', FALSE, 4, 3, 16, 2, 1),
('Quilmes', '2001-11-07', NULL, 'Orgullo del sur', FALSE, 13, 9, 35, 6, 0),
-- Más registrados
('Escarcha', '1995-07-31', 'ARG-950731-126', 'Defensor frío y preciso', TRUE, 6, 10, 147, 18, 1),
('Misil', '1998-01-18', 'ARG-980118-127', 'Delantero de potente remate', TRUE, 66, 11, 104, 14, 2),
('Batman', '1991-11-13', 'ARG-911113-128', 'Mediocampista salvador', TRUE, 23, 38, 203, 16, 0),
('Torre Eiffel', '1994-05-02', 'ARG-940502-129', 'Defensor espigado', TRUE, 9, 7, 157, 21, 2),
('Látigo', '2000-03-24', 'ARG-000324-130', 'Extremo rápido', TRUE, 39, 26, 73, 8, 0),
-- No registrados adicionales (necesitamos 5 más para completar 50 no registrados)
('Humilde', '2005-04-19', NULL, 'Juega con humildad', FALSE, 2, 2, 10, 1, 0),
('Gambeta', '2002-12-08', NULL, 'Habilidoso con la pelota', FALSE, 8, 10, 26, 3, 0),
('Barrial', '2003-08-22', NULL, 'Clásico jugador de potrero', FALSE, 7, 5, 23, 4, 1),
('Pibito', '2006-02-28', NULL, 'La promesa del club', FALSE, 0, 1, 5, 0, 0),
('Resistencia', '2004-10-11', NULL, 'Nunca se rinde', FALSE, 3, 2, 14, 1, 0),
-- Continuación registrados
('Tigre', '1996-09-05', 'ARG-960905-131', 'Delantero feroz', TRUE, 59, 14, 129, 17, 2),
('Capitán', '1992-03-16', 'ARG-920316-132', 'Líder del equipo', TRUE, 17, 29, 186, 19, 1),
('Obsidiana', '1997-12-01', 'ARG-971201-133', 'Defensor duro y negro', TRUE, 5, 8, 113, 26, 3),
('Pluma', '2001-06-09', 'ARG-010609-134', 'Extremo ligero', TRUE, 34, 22, 63, 6, 0),
('Cemento', '1993-10-27', 'ARG-931027-135', 'Defensor sólido', TRUE, 8, 5, 167, 25, 3),
-- Registrados continúan
('Fideo', '1998-07-03', 'ARG-980703-136', 'Extremo escurridizo', TRUE, 42, 28, 97, 11, 1),
('Profe', '1990-06-25', 'ARG-900625-137', 'Mediocampista enseñante', TRUE, 14, 46, 215, 12, 0),
('Mono', '1995-11-11', 'ARG-951111-138', 'Arquero ágil', TRUE, 0, 3, 144, 2, 0),
('Rambo', '1994-01-30', 'ARG-940130-139', 'Mediocampista combativo', TRUE, 20, 31, 153, 22, 3),
('Coral', '1999-05-19', 'ARG-990519-140', 'Defensor joven', TRUE, 4, 9, 83, 12, 1),
-- Últimos registrados
('Metralla', '1997-03-07', 'ARG-970307-141', 'Delantero rápido', TRUE, 57, 12, 111, 13, 1),
('Arcoíris', '1992-08-08', 'ARG-920808-142', 'Mediocampista creativo', TRUE, 25, 43, 179, 15, 0),
('Murciélago', '1996-12-18', 'ARG-961218-143', 'Defensor nocturno', TRUE, 7, 11, 134, 20, 2),
('Puma', '2000-11-02', 'ARG-001102-144', 'Delantero sigiloso', TRUE, 45, 17, 77, 9, 0),
('Blindado', '1993-04-13', 'ARG-930413-145', 'Defensor impenetrable', TRUE, 6, 7, 164, 27, 4),
-- Más registrados
('Ojo de Halcón', '1998-09-09', 'ARG-980909-146', 'Arquero con reflejos', TRUE, 0, 1, 101, 1, 0),
('Maquinola', '1991-01-22', 'ARG-910122-147', 'Mediocampista incansable', TRUE, 18, 40, 198, 17, 1),
('Alfil', '1995-04-04', 'ARG-950404-148', 'Defensor táctico', TRUE, 9, 12, 149, 19, 1),
('Tornado', '1999-08-16', 'ARG-990816-149', 'Extremo arrollador', TRUE, 43, 24, 89, 10, 0),
('Bombardero', '1994-09-21', 'ARG-940921-150', 'Delantero goleador', TRUE, 73, 9, 161, 18, 2),
-- Últimos registrados para completar 150 registrados
('Centella', '2001-12-13', 'ARG-011213-151', 'Extremo relámpago', TRUE, 37, 21, 59, 7, 0),
('Roble', '1996-04-26', 'ARG-960426-152', 'Defensor fuerte y estable', TRUE, 10, 8, 141, 23, 2),
('Ingeniero', '1993-07-08', 'ARG-930708-153', 'Mediocampista calculador', TRUE, 22, 44, 169, 14, 0),
('Soplete', '1998-02-14', 'ARG-980214-154', 'Delantero entrador', TRUE, 55, 15, 107, 16, 2),
('Leyenda', '1990-10-05', 'ARG-901005-155', 'Veterano del club', TRUE, 31, 35, 230, 20, 1),
-- Últimos 5 registrados
('Cancha', '1997-05-23', 'ARG-970523-156', 'Dueño del mediocampo', TRUE, 24, 36, 124, 13, 0),
('Fénix', '1995-08-08', 'ARG-950808-157', 'Renació futbolísticamente', TRUE, 48, 20, 146, 15, 1),
('Granito', '1992-11-30', 'ARG-921130-158', 'Defensor pequeño pero duro', TRUE, 5, 9, 183, 22, 2),
('Zurdito', '2000-01-17', 'ARG-000117-159', 'Zurdo habilidoso', TRUE, 40, 27, 69, 8, 0),
('Viejo Zorro', '1991-06-06', 'ARG-910606-160', 'Mediocampista experimentado', TRUE, 26, 47, 208, 16, 0);

-- 10. Asignar JUGADORES a EQUIPOS por TORNEO (tournament_players)
-- ============================================
-- TORNEO 1 (Copa Amateur 2024 - F11 Liga) - 12 equipos
-- ============================================
-- Los Halcones FC (team_id 1)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 1, 1, TRUE, 4), (1, 1, 6, TRUE, 8), (1, 1, 11, TRUE, 15), (1, 1, 16, TRUE, 3), (1, 1, 21, TRUE, 10),
(1, 1, 26, TRUE, 7), (1, 1, 31, TRUE, 5), (1, 1, 36, TRUE, 2), (1, 1, 41, TRUE, 1), (1, 1, 46, TRUE, 6),
(1, 1, 51, TRUE, 9), (1, 1, 56, TRUE, 11), (1, 1, 61, TRUE, 12), (1, 1, 66, TRUE, 13), (1, 1, 71, TRUE, 14),
(1, 1, 76, TRUE, 16), (1, 1, 81, TRUE, 17), (1, 1, 86, TRUE, 18), (1, 1, 91, TRUE, 19), (1, 1, 96, TRUE, 20);

-- Ciclón Deportivo (team_id 2)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 2, 2, TRUE, 4), (1, 2, 7, TRUE, 8), (1, 2, 12, TRUE, 15), (1, 2, 17, TRUE, 3), (1, 2, 22, TRUE, 10),
(1, 2, 27, TRUE, 7), (1, 2, 32, TRUE, 5), (1, 2, 37, TRUE, 2), (1, 2, 42, TRUE, 1), (1, 2, 47, TRUE, 6),
(1, 2, 52, TRUE, 9), (1, 2, 57, TRUE, 11), (1, 2, 62, TRUE, 12), (1, 2, 67, TRUE, 13), (1, 2, 72, TRUE, 14),
(1, 2, 77, TRUE, 16), (1, 2, 82, TRUE, 17), (1, 2, 87, TRUE, 18), (1, 2, 92, TRUE, 19), (1, 2, 97, TRUE, 20);

-- Estrellas Doradas (team_id 3)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 3, 3, TRUE, 4), (1, 3, 8, TRUE, 8), (1, 3, 13, TRUE, 15), (1, 3, 18, TRUE, 3), (1, 3, 23, TRUE, 10),
(1, 3, 28, TRUE, 7), (1, 3, 33, TRUE, 5), (1, 3, 38, TRUE, 2), (1, 3, 43, TRUE, 1), (1, 3, 48, TRUE, 6),
(1, 3, 53, TRUE, 9), (1, 3, 58, TRUE, 11), (1, 3, 63, TRUE, 12), (1, 3, 68, TRUE, 13), (1, 3, 73, TRUE, 14),
(1, 3, 78, TRUE, 16), (1, 3, 83, TRUE, 17), (1, 3, 88, TRUE, 18), (1, 3, 93, TRUE, 19), (1, 3, 98, TRUE, 20);

-- Toros Salvajes (team_id 4)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 4, 4, TRUE, 4), (1, 4, 9, TRUE, 8), (1, 4, 14, TRUE, 15), (1, 4, 19, TRUE, 3), (1, 4, 24, TRUE, 10),
(1, 4, 29, TRUE, 7), (1, 4, 34, TRUE, 5), (1, 4, 39, TRUE, 2), (1, 4, 44, TRUE, 1), (1, 4, 49, TRUE, 6),
(1, 4, 54, TRUE, 9), (1, 4, 59, TRUE, 11), (1, 4, 64, TRUE, 12), (1, 4, 69, TRUE, 13), (1, 4, 74, TRUE, 14),
(1, 4, 79, TRUE, 16), (1, 4, 84, TRUE, 17), (1, 4, 89, TRUE, 18), (1, 4, 94, TRUE, 19), (1, 4, 99, TRUE, 20);

-- Águilas Reales (team_id 5)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 5, 5, TRUE, 4), (1, 5, 10, TRUE, 8), (1, 5, 15, TRUE, 15), (1, 5, 20, TRUE, 3), (1, 5, 25, TRUE, 10),
(1, 5, 30, TRUE, 7), (1, 5, 35, TRUE, 5), (1, 5, 40, TRUE, 2), (1, 5, 45, TRUE, 1), (1, 5, 50, TRUE, 6),
(1, 5, 55, TRUE, 9), (1, 5, 60, TRUE, 11), (1, 5, 65, TRUE, 12), (1, 5, 70, TRUE, 13), (1, 5, 75, TRUE, 14),
(1, 5, 80, TRUE, 16), (1, 5, 85, TRUE, 17), (1, 5, 90, TRUE, 18), (1, 5, 95, TRUE, 19), (1, 5, 100, TRUE, 20);

-- Leones del Sur (team_id 6)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 6, 101, TRUE, 4), (1, 6, 106, TRUE, 8), (1, 6, 111, TRUE, 15), (1, 6, 116, TRUE, 3), (1, 6, 121, TRUE, 10),
(1, 6, 126, TRUE, 7), (1, 6, 131, TRUE, 5), (1, 6, 136, TRUE, 2), (1, 6, 141, TRUE, 1), (1, 6, 146, TRUE, 6),
(1, 6, 151, TRUE, 9), (1, 6, 156, TRUE, 11), (1, 6, 161, TRUE, 12), (1, 6, 166, TRUE, 13), (1, 6, 171, TRUE, 14),
(1, 6, 176, TRUE, 16), (1, 6, 181, TRUE, 17), (1, 6, 186, TRUE, 18), (1, 6, 191, TRUE, 19), (1, 6, 196, TRUE, 20);

-- Tiburones Azules (team_id 7)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 7, 102, TRUE, 4), (1, 7, 107, TRUE, 8), (1, 7, 112, TRUE, 15), (1, 7, 117, TRUE, 3), (1, 7, 122, TRUE, 10),
(1, 7, 127, TRUE, 7), (1, 7, 132, TRUE, 5), (1, 7, 137, TRUE, 2), (1, 7, 142, TRUE, 1), (1, 7, 147, TRUE, 6),
(1, 7, 152, TRUE, 9), (1, 7, 157, TRUE, 11), (1, 7, 162, TRUE, 12), (1, 7, 167, TRUE, 13), (1, 7, 172, TRUE, 14),
(1, 7, 177, TRUE, 16), (1, 7, 182, TRUE, 17), (1, 7, 187, TRUE, 18), (1, 7, 192, TRUE, 19), (1, 7, 197, TRUE, 20);

-- Dragones FC (team_id 8)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 8, 103, TRUE, 4), (1, 8, 108, TRUE, 8), (1, 8, 113, TRUE, 15), (1, 8, 118, TRUE, 3), (1, 8, 123, TRUE, 10),
(1, 8, 128, TRUE, 7), (1, 8, 133, TRUE, 5), (1, 8, 138, TRUE, 2), (1, 8, 143, TRUE, 1), (1, 8, 148, TRUE, 6),
(1, 8, 153, TRUE, 9), (1, 8, 158, TRUE, 11), (1, 8, 163, TRUE, 12), (1, 8, 168, TRUE, 13), (1, 8, 173, TRUE, 14),
(1, 8, 178, TRUE, 16), (1, 8, 183, TRUE, 17), (1, 8, 188, TRUE, 18), (1, 8, 193, TRUE, 19), (1, 8, 198, TRUE, 20);

-- Fénix United (team_id 9)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 9, 104, TRUE, 4), (1, 9, 109, TRUE, 8), (1, 9, 114, TRUE, 15), (1, 9, 119, TRUE, 3), (1, 9, 124, TRUE, 10),
(1, 9, 129, TRUE, 7), (1, 9, 134, TRUE, 5), (1, 9, 139, TRUE, 2), (1, 9, 144, TRUE, 1), (1, 9, 149, TRUE, 6),
(1, 9, 154, TRUE, 9), (1, 9, 159, TRUE, 11), (1, 9, 164, TRUE, 12), (1, 9, 169, TRUE, 13), (1, 9, 174, TRUE, 14),
(1, 9, 179, TRUE, 16), (1, 9, 184, TRUE, 17), (1, 9, 189, TRUE, 18), (1, 9, 194, TRUE, 19), (1, 9, 199, TRUE, 20);

-- Cóndores Andinos (team_id 10)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 10, 105, TRUE, 4), (1, 10, 110, TRUE, 8), (1, 10, 115, TRUE, 15), (1, 10, 120, TRUE, 3), (1, 10, 125, TRUE, 10),
(1, 10, 130, TRUE, 7), (1, 10, 135, TRUE, 5), (1, 10, 140, TRUE, 2), (1, 10, 145, TRUE, 1), (1, 10, 150, TRUE, 6),
(1, 10, 155, TRUE, 9), (1, 10, 160, TRUE, 11), (1, 10, 165, TRUE, 12), (1, 10, 170, TRUE, 13), (1, 10, 175, TRUE, 14),
(1, 10, 180, TRUE, 16), (1, 10, 185, TRUE, 17), (1, 10, 190, TRUE, 18), (1, 10, 195, TRUE, 19), (1, 10, 200, TRUE, 20);

-- Rayos Veloces (team_id 11)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 11, 201, TRUE, 4), (1, 11, 206, TRUE, 8), (1, 11, 211, TRUE, 15), (1, 11, 216, TRUE, 3), (1, 11, 221, TRUE, 10),
(1, 11, 226, TRUE, 7), (1, 11, 231, TRUE, 5), (1, 11, 236, TRUE, 2), (1, 11, 241, TRUE, 1), (1, 11, 246, TRUE, 6),
(1, 11, 251, TRUE, 9), (1, 11, 256, TRUE, 11), (1, 11, 261, TRUE, 12), (1, 11, 266, TRUE, 13), (1, 11, 271, TRUE, 14),
(1, 11, 276, TRUE, 16), (1, 11, 281, TRUE, 17), (1, 11, 286, TRUE, 18), (1, 11, 291, TRUE, 19), (1, 11, 296, TRUE, 20);

-- Truenos FC (team_id 12)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(1, 12, 202, TRUE, 4), (1, 12, 207, TRUE, 8), (1, 12, 212, TRUE, 15), (1, 12, 217, TRUE, 3), (1, 12, 222, TRUE, 10),
(1, 12, 227, TRUE, 7), (1, 12, 232, TRUE, 5), (1, 12, 237, TRUE, 2), (1, 12, 242, TRUE, 1), (1, 12, 247, TRUE, 6),
(1, 12, 252, TRUE, 9), (1, 12, 257, TRUE, 11), (1, 12, 262, TRUE, 12), (1, 12, 267, TRUE, 13), (1, 12, 272, TRUE, 14),
(1, 12, 277, TRUE, 16), (1, 12, 282, TRUE, 17), (1, 12, 287, TRUE, 18), (1, 12, 292, TRUE, 19), (1, 12, 297, TRUE, 20);

-- ============================================
-- TORNEO 2 (Torneo Relámpago F7 - Playoff) - 8 equipos (F7: 15-18 jugadores)
-- ============================================
-- Relámpagos SC (team_id 13)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(2, 13, 13, TRUE, 7), (2, 13, 18, TRUE, 11), (2, 13, 23, TRUE, 5), (2, 13, 28, TRUE, 3), (2, 13, 33, TRUE, 9),
(2, 13, 38, TRUE, 1), (2, 13, 43, TRUE, 6), (2, 13, 48, TRUE, 8), (2, 13, 53, TRUE, 10), (2, 13, 58, TRUE, 4),
(2, 13, 63, TRUE, 2), (2, 13, 68, TRUE, 12), (2, 13, 73, TRUE, 13), (2, 13, 78, TRUE, 14), (2, 13, 83, TRUE, 15),
(2, 13, 88, TRUE, 16);

-- Huracán FC (team_id 14)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(2, 14, 14, TRUE, 7), (2, 14, 19, TRUE, 11), (2, 14, 24, TRUE, 5), (2, 14, 29, TRUE, 3), (2, 14, 34, TRUE, 9),
(2, 14, 39, TRUE, 1), (2, 14, 44, TRUE, 6), (2, 14, 49, TRUE, 8), (2, 14, 54, TRUE, 10), (2, 14, 59, TRUE, 4),
(2, 14, 64, TRUE, 2), (2, 14, 69, TRUE, 12), (2, 14, 74, TRUE, 13), (2, 14, 79, TRUE, 14), (2, 14, 84, TRUE, 15),
(2, 14, 89, TRUE, 16);

-- Tornados Deportivos (team_id 15)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(2, 15, 15, TRUE, 7), (2, 15, 20, TRUE, 11), (2, 15, 25, TRUE, 5), (2, 15, 30, TRUE, 3), (2, 15, 35, TRUE, 9),
(2, 15, 40, TRUE, 1), (2, 15, 45, TRUE, 6), (2, 15, 50, TRUE, 8), (2, 15, 55, TRUE, 10), (2, 15, 60, TRUE, 4),
(2, 15, 65, TRUE, 2), (2, 15, 70, TRUE, 12), (2, 15, 75, TRUE, 13), (2, 15, 80, TRUE, 14), (2, 15, 85, TRUE, 15),
(2, 15, 90, TRUE, 16);

-- Gladiadores FC (team_id 16)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(2, 16, 116, TRUE, 7), (2, 16, 121, TRUE, 11), (2, 16, 126, TRUE, 5), (2, 16, 131, TRUE, 3), (2, 16, 136, TRUE, 9),
(2, 16, 141, TRUE, 1), (2, 16, 146, TRUE, 6), (2, 16, 151, TRUE, 8), (2, 16, 156, TRUE, 10), (2, 16, 161, TRUE, 4),
(2, 16, 166, TRUE, 2), (2, 16, 171, TRUE, 12), (2, 16, 176, TRUE, 13), (2, 16, 181, TRUE, 14), (2, 16, 186, TRUE, 15),
(2, 16, 191, TRUE, 16);

-- Espartanos United (team_id 17)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(2, 17, 117, TRUE, 7), (2, 17, 122, TRUE, 11), (2, 17, 127, TRUE, 5), (2, 17, 132, TRUE, 3), (2, 17, 137, TRUE, 9),
(2, 17, 142, TRUE, 1), (2, 17, 147, TRUE, 6), (2, 17, 152, TRUE, 8), (2, 17, 157, TRUE, 10), (2, 17, 162, TRUE, 4),
(2, 17, 167, TRUE, 2), (2, 17, 172, TRUE, 12), (2, 17, 177, TRUE, 13), (2, 17, 182, TRUE, 14), (2, 17, 187, TRUE, 15),
(2, 17, 192, TRUE, 16);

-- Vikingos SC (team_id 18)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(2, 18, 118, TRUE, 7), (2, 18, 123, TRUE, 11), (2, 18, 128, TRUE, 5), (2, 18, 133, TRUE, 3), (2, 18, 138, TRUE, 9),
(2, 18, 143, TRUE, 1), (2, 18, 148, TRUE, 6), (2, 18, 153, TRUE, 8), (2, 18, 158, TRUE, 10), (2, 18, 163, TRUE, 4),
(2, 18, 168, TRUE, 2), (2, 18, 173, TRUE, 12), (2, 18, 178, TRUE, 13), (2, 18, 183, TRUE, 14), (2, 18, 188, TRUE, 15),
(2, 18, 193, TRUE, 16);

-- Samuráis FC (team_id 19)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(2, 19, 119, TRUE, 7), (2, 19, 124, TRUE, 11), (2, 19, 129, TRUE, 5), (2, 19, 134, TRUE, 3), (2, 19, 139, TRUE, 9),
(2, 19, 144, TRUE, 1), (2, 19, 149, TRUE, 6), (2, 19, 154, TRUE, 8), (2, 19, 159, TRUE, 10), (2, 19, 164, TRUE, 4),
(2, 19, 169, TRUE, 2), (2, 19, 174, TRUE, 12), (2, 19, 179, TRUE, 13), (2, 19, 184, TRUE, 14), (2, 19, 189, TRUE, 15),
(2, 19, 194, TRUE, 16);

-- Centauros Deportivos (team_id 20)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(2, 20, 120, TRUE, 7), (2, 20, 125, TRUE, 11), (2, 20, 130, TRUE, 5), (2, 20, 135, TRUE, 3), (2, 20, 140, TRUE, 9),
(2, 20, 145, TRUE, 1), (2, 20, 150, TRUE, 6), (2, 20, 155, TRUE, 8), (2, 20, 160, TRUE, 10), (2, 20, 165, TRUE, 4),
(2, 20, 170, TRUE, 2), (2, 20, 175, TRUE, 12), (2, 20, 180, TRUE, 13), (2, 20, 185, TRUE, 14), (2, 20, 190, TRUE, 15),
(2, 20, 195, TRUE, 16);

-- ============================================
-- TORNEO 3 (Campeonato Indoor 2023 - F5 Liga) - 6 equipos (F5: 9-10 jugadores)
-- ============================================
-- Los Halcones FC (team_id 1)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(3, 1, 1, TRUE, 5), (3, 1, 6, TRUE, 9), (3, 1, 11, TRUE, 3), (3, 1, 16, TRUE, 7), (3, 1, 21, TRUE, 1),
(3, 1, 26, TRUE, 6), (3, 1, 31, TRUE, 2), (3, 1, 36, TRUE, 8), (3, 1, 41, TRUE, 4), (3, 1, 46, TRUE, 10);

-- Leones del Sur (team_id 6)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(3, 6, 101, TRUE, 5), (3, 6, 106, TRUE, 9), (3, 6, 111, TRUE, 3), (3, 6, 116, TRUE, 7), (3, 6, 121, TRUE, 1),
(3, 6, 126, TRUE, 6), (3, 6, 131, TRUE, 2), (3, 6, 136, TRUE, 8), (3, 6, 141, TRUE, 4), (3, 6, 146, TRUE, 10);

-- Rayos Veloces (team_id 11)
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(3, 11, 201, TRUE, 5), (3, 11, 206, TRUE, 9), (3, 11, 211, TRUE, 3), (3, 11, 216, TRUE, 7), (3, 11, 221, TRUE, 1),
(3, 11, 226, TRUE, 6), (3, 11, 231, TRUE, 2), (3, 11, 236, TRUE, 8), (3, 11, 241, TRUE, 4), (3, 11, 246, TRUE, 10);

-- Atlántico FC (team_id 21) - Equipo no registrado
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(3, 21, 301, TRUE, 5), (3, 21, 302, TRUE, 9), (3, 21, 303, TRUE, 3), (3, 21, 304, TRUE, 7), (3, 21, 305, TRUE, 1),
(3, 21, 306, TRUE, 6), (3, 21, 307, TRUE, 2), (3, 21, 308, TRUE, 8), (3, 21, 309, TRUE, 4), (3, 21, 310, TRUE, 10);

-- Marinos Club (team_id 22) - Equipo no registrado
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(3, 22, 311, TRUE, 5), (3, 22, 312, TRUE, 9), (3, 22, 313, TRUE, 3), (3, 22, 314, TRUE, 7), (3, 22, 315, TRUE, 1),
(3, 22, 316, TRUE, 6), (3, 22, 317, TRUE, 2), (3, 22, 318, TRUE, 8), (3, 22, 319, TRUE, 4), (3, 22, 320, TRUE, 10);

-- Delfines MDQ (team_id 23) - Equipo no registrado
INSERT INTO tournament_players (tournament_id, team_id, player_id, is_active, jersey_number) VALUES
(3, 23, 321, TRUE, 5), (3, 23, 322, TRUE, 9), (3, 23, 323, TRUE, 3), (3, 23, 324, TRUE, 7), (3, 23, 325, TRUE, 1),
(3, 23, 326, TRUE, 6), (3, 23, 327, TRUE, 2), (3, 23, 328, TRUE, 8), (3, 23, 329, TRUE, 4), (3, 23, 330, TRUE, 10);

-- 11. Crear algunos PARTIDOS de ejemplo
INSERT INTO matches (tournament_id, local_team_id, visitor_team_id, local_score, visitor_score, date, status, win_method, round, stadium) VALUES

-- ============================================
-- TORNEO 1 (Copa Amateur 2024 - F11 Liga) - 10 partidos
-- ============================================
-- Fecha 1
(1, 1, 2, 2, 1, '2024-03-02 16:00:00', 'FINALIZED', 'REGULAR', 'Fecha 1', 'Estadio Municipal de Buenos Aires'),
(1, 3, 4, 1, 1, '2024-03-02 18:00:00', 'FINALIZED', 'REGULAR', 'Fecha 1', 'Estadio Dorado'),
(1, 5, 6, 3, 0, '2024-03-03 16:30:00', 'FINALIZED', 'REGULAR', 'Fecha 1', 'Estadio Águila'),
(1, 7, 8, 0, 2, '2024-03-03 18:30:00', 'FINALIZED', 'REGULAR', 'Fecha 1', 'Estadio del Sur'),
-- Fecha 2
(1, 2, 3, 2, 2, '2024-03-09 16:00:00', 'FINALIZED', 'REGULAR', 'Fecha 2', 'Estadio Ciclón'),
(1, 4, 1, 1, 3, '2024-03-09 18:00:00', 'FINALIZED', 'REGULAR', 'Fecha 2', 'Estadio Toro'),
(1, 6, 7, 2, 1, '2024-03-10 16:30:00', 'FINALIZED', 'REGULAR', 'Fecha 2', 'Estadio León'),
-- Fecha 3
(1, 8, 5, 0, 4, '2024-03-16 16:00:00', 'FINALIZED', 'REGULAR', 'Fecha 3', 'Estadio Dragón'),
(1, 9, 10, 2, 0, '2024-03-16 18:00:00', 'FINALIZED', 'WALKOVER', 'Fecha 3', 'Estadio Fénix'),
(1, 11, 12, 1, 2, '2024-03-17 17:00:00', 'FINALIZED', 'REGULAR', 'Fecha 3', 'Estadio Rayo'),

-- ============================================
-- TORNEO 2 (Torneo Relámpago F7 - Playoff) - 10 partidos (fase de grupos + playoffs)
-- ============================================
-- Fase de grupos - Grupo A
(2, 13, 14, 3, 2, '2024-04-05 19:00:00', 'FINALIZED', 'REGULAR', 'Grupo A - Fecha 1', 'Cancha Relámpago'),
(2, 15, 16, 1, 1, '2024-04-05 20:30:00', 'FINALIZED', 'REGULAR', 'Grupo A - Fecha 1', 'Polideportivo Tornado'),
(2, 13, 15, 4, 1, '2024-04-12 19:00:00', 'FINALIZED', 'REGULAR', 'Grupo A - Fecha 2', 'Cancha Relámpago'),
(2, 14, 16, 2, 2, '2024-04-12 20:30:00', 'FINALIZED', 'REGULAR', 'Grupo A - Fecha 2', 'Estadio Huracán'),
-- Fase de grupos - Grupo B
(2, 17, 18, 2, 3, '2024-04-06 19:00:00', 'FINALIZED', 'REGULAR', 'Grupo B - Fecha 1', 'Coliseo Espartano'),
(2, 19, 20, 5, 1, '2024-04-06 20:30:00', 'FINALIZED', 'REGULAR', 'Grupo B - Fecha 1', 'Dojo Samurái'),
(2, 17, 19, 1, 2, '2024-04-13 19:00:00', 'FINALIZED', 'REGULAR', 'Grupo B - Fecha 2', 'Coliseo Espartano'),
(2, 18, 20, 4, 0, '2024-04-13 20:30:00', 'FINALIZED', 'REGULAR', 'Grupo B - Fecha 2', 'Estadio Vikingo'),
-- Semifinales
(2, 13, 19, 2, 1, '2024-04-20 19:30:00', 'FINALIZED', 'REGULAR', 'Semifinal 1', 'Cancha Relámpago'),
(2, 18, 14, 3, 3, '2024-04-20 21:00:00', 'FINALIZED', 'PENALTIES', 'Semifinal 2', 'Estadio Vikingo'),

-- ============================================
-- TORNEO 3 (Campeonato Indoor 2023 - F5 Liga) - 10 partidos (torneo finalizado 2023)
-- ============================================
-- Fecha 1 (Octubre 2023)
(3, 1, 6, 5, 2, '2023-10-07 20:00:00', 'FINALIZED', 'REGULAR', 'Fecha 1', 'Gimnasio Cubierto Halcones'),
(3, 11, 21, 8, 1, '2023-10-07 21:30:00', 'FINALIZED', 'REGULAR', 'Fecha 1', 'Complejo Indoor Rayos'),
(3, 22, 23, 4, 4, '2023-10-08 20:00:00', 'FINALIZED', 'REGULAR', 'Fecha 1', 'Polideportivo Mar del Plata'),
-- Fecha 2 (Octubre 2023)
(3, 6, 11, 3, 6, '2023-10-14 20:00:00', 'FINALIZED', 'REGULAR', 'Fecha 2', 'Gimnasio León'),
(3, 1, 22, 7, 2, '2023-10-14 21:30:00', 'FINALIZED', 'REGULAR', 'Fecha 2', 'Gimnasio Cubierto Halcones'),
(3, 21, 23, 2, 3, '2023-10-15 20:00:00', 'FINALIZED', 'REGULAR', 'Fecha 2', 'Complejo Deportivo'),
-- Fecha 3 (Noviembre 2023)
(3, 11, 1, 4, 4, '2023-11-04 20:00:00', 'FINALIZED', 'REGULAR', 'Fecha 3', 'Complejo Indoor Rayos'),
(3, 6, 22, 5, 3, '2023-11-04 21:30:00', 'FINALIZED', 'REGULAR', 'Fecha 3', 'Gimnasio León'),
(3, 23, 21, 6, 2, '2023-11-05 20:00:00', 'FINALIZED', 'REGULAR', 'Fecha 3', 'Polideportivo Mar del Plata'),
-- Fecha 4 (Noviembre 2023)
(3, 1, 23, 9, 1, '2023-11-18 21:00:00', 'FINALIZED', 'REGULAR', 'Fecha 4', 'Gimnasio Cubierto Halcones');

-- 12. Crear EVENTOS de partido
-- ============================================
-- TORNEO 1 - PARTIDOS
-- ============================================

-- Partido 1: (1, 1, 2) Los Halcones FC vs Ciclón Deportivo (2-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(1, 'GOAL', 23, 11, NULL, 1),  -- Gol de Los Halcones (player_id 11)
(1, 'GOAL', 45, 27, NULL, 2),  -- Gol de Ciclón (player_id 27)
(1, 'YELLOW_CARD', 52, 16, NULL, 1),  -- Amarilla para Halcones
(1, 'GOAL', 78, 6, 1, 1),  -- Gol de Halcones (player_id 6) asistido por player_id 1
(1, 'YELLOW_CARD', 82, 32, NULL, 2),  -- Amarilla para Ciclón
(1, 'SUBSTITUTION', 85, 21, 26, 1);  -- Cambio en Halcones: entra 21, sale 26

-- Partido 2: (1, 3, 4) Estrellas Doradas vs Toros Salvajes (1-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(2, 'GOAL', 15, 33, NULL, 4),  -- Gol de Toros (player_id 33)
(2, 'YELLOW_CARD', 28, 38, NULL, 3),  -- Amarilla para Estrellas
(2, 'YELLOW_CARD', 42, 44, NULL, 4),  -- Amarilla para Toros
(2, 'GOAL', 67, 13, 8, 3),  -- Gol de Estrellas (player_id 13) asistido por player_id 8
(2, 'SUBSTITUTION', 70, 18, 23, 3),  -- Cambio en Estrellas
(2, 'SUBSTITUTION', 75, 39, 34, 4);  -- Cambio en Toros

-- Partido 3: (1, 5, 6) Águilas Reales vs Leones del Sur (3-0)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(3, 'GOAL', 12, 25, 20, 5),  -- Gol de Águilas
(3, 'GOAL', 34, 30, 25, 5),  -- Gol de Águilas
(3, 'YELLOW_CARD', 41, 111, NULL, 6),  -- Amarilla para Leones
(3, 'GOAL', 52, 20, 15, 5),  -- Gol de Águilas
(3, 'RED_CARD', 67, 116, NULL, 6),  -- Roja para Leones
(3, 'SUBSTITUTION', 70, 35, 40, 5);  -- Cambio en Águilas

-- Partido 4: (1, 7, 8) Tiburones Azules vs Dragones FC (0-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(4, 'YELLOW_CARD', 22, 117, NULL, 7),
(4, 'GOAL', 31, 143, NULL, 8),
(4, 'YELLOW_CARD', 45, 138, NULL, 8),
(4, 'GOAL', 58, 148, 143, 8),
(4, 'YELLOW_CARD', 73, 122, NULL, 7),
(4, 'SUBSTITUTION', 80, 132, 127, 7);

-- Partido 5: (1, 2, 3) Ciclón Deportivo vs Estrellas Doradas (2-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(5, 'GOAL', 8, 7, 2, 2),
(5, 'GOAL', 17, 13, 18, 3),
(5, 'GOAL', 36, 12, 7, 2),
(5, 'GOAL', 62, 8, 3, 3),
(5, 'YELLOW_CARD', 70, 22, NULL, 2),
(5, 'YELLOW_CARD', 75, 23, NULL, 3),
(5, 'SUBSTITUTION', 82, 27, 32, 2);

-- Partido 6: (1, 4, 1) Toros Salvajes vs Los Halcones FC (1-3)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(6, 'GOAL', 11, 1, 6, 1),
(6, 'GOAL', 19, 44, 39, 4),
(6, 'GOAL', 33, 11, 1, 1),
(6, 'YELLOW_CARD', 41, 49, NULL, 4),
(6, 'GOAL', 58, 6, 11, 1),
(6, 'RED_CARD', 77, 34, NULL, 4),
(6, 'SUBSTITUTION', 80, 21, 26, 1);

-- Partido 7: (1, 6, 7) Leones del Sur vs Tiburones Azules (2-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(7, 'GOAL', 14, 112, NULL, 7),
(7, 'GOAL', 29, 106, 101, 6),
(7, 'YELLOW_CARD', 53, 121, NULL, 6),
(7, 'GOAL', 71, 111, 106, 6),
(7, 'YELLOW_CARD', 82, 127, NULL, 7),
(7, 'SUBSTITUTION', 85, 131, 136, 6);

-- Partido 8: (1, 8, 5) Dragones FC vs Águilas Reales (0-4)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(8, 'GOAL', 9, 20, 15, 5),
(8, 'GOAL', 21, 25, 30, 5),
(8, 'YELLOW_CARD', 35, 138, NULL, 8),
(8, 'GOAL', 44, 30, 25, 5),
(8, 'GOAL', 67, 15, 20, 5),
(8, 'RED_CARD', 75, 143, NULL, 8),
(8, 'SUBSTITUTION', 80, 35, 40, 5);

-- Partido 9: (1, 9, 10) Fénix United vs Cóndores Andinos (2-0) - WALKOVER
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(9, 'GOAL', 0, NULL, NULL, 9),  -- Gol por WALKOVER
(9, 'GOAL', 0, NULL, NULL, 9);  -- Segundo gol por WALKOVER

-- Partido 10: (1, 11, 12) Rayos Veloces vs Truenos FC (1-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(10, 'GOAL', 27, 212, NULL, 12),
(10, 'GOAL', 43, 221, 216, 11),
(10, 'YELLOW_CARD', 56, 226, NULL, 11),
(10, 'GOAL', 79, 217, 212, 12),
(10, 'YELLOW_CARD', 88, 232, NULL, 12),
(10, 'SUBSTITUTION', 90, 211, 206, 11);

-- ============================================
-- TORNEO 2 - PARTIDOS (Playoff F7)
-- ============================================

-- Partido 11: (2, 13, 14) Relámpagos SC vs Huracán FC (3-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(11, 'GOAL', 8, 18, 13, 13),
(11, 'GOAL', 15, 29, 24, 14),
(11, 'GOAL', 22, 23, 18, 13),
(11, 'GOAL', 31, 24, 29, 14),
(11, 'YELLOW_CARD', 44, 38, NULL, 13),
(11, 'GOAL', 52, 13, 23, 13),
(11, 'SUBSTITUTION', 60, 33, 43, 13);

-- Partido 12: (2, 15, 16) Tornados Deportivos vs Gladiadores FC (1-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(12, 'GOAL', 19, 136, 131, 16),
(12, 'YELLOW_CARD', 33, 45, NULL, 15),
(12, 'GOAL', 42, 25, 20, 15),
(12, 'YELLOW_CARD', 58, 151, NULL, 16),
(12, 'RED_CARD', 75, 40, NULL, 15),
(12, 'SUBSTITUTION', 80, 141, 146, 16);

-- Partido 13: (2, 13, 15) Relámpagos SC vs Tornados Deportivos (4-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(13, 'GOAL', 5, 18, 13, 13),
(13, 'GOAL', 12, 23, 28, 13),
(13, 'GOAL', 21, 20, 15, 15),
(13, 'GOAL', 30, 13, 18, 13),
(13, 'YELLOW_CARD', 42, 58, NULL, 13),
(13, 'GOAL', 55, 28, 23, 13),
(13, 'SUBSTITUTION', 65, 33, 38, 13);

-- Partido 14: (2, 14, 16) Huracán FC vs Gladiadores FC (2-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(14, 'GOAL', 17, 131, 126, 16),
(14, 'GOAL', 23, 19, 14, 14),
(14, 'YELLOW_CARD', 35, 39, NULL, 14),
(14, 'GOAL', 48, 126, 131, 16),
(14, 'GOAL', 62, 14, 19, 14),
(14, 'YELLOW_CARD', 78, 161, NULL, 16),
(14, 'SUBSTITUTION', 83, 29, 34, 14);

-- Partido 15: (2, 17, 18) Espartanos United vs Vikingos SC (2-3)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(15, 'GOAL', 11, 142, 137, 17),
(15, 'GOAL', 18, 168, 163, 18),
(15, 'GOAL', 27, 173, 168, 18),
(15, 'GOAL', 35, 137, 142, 17),
(15, 'GOAL', 58, 158, 153, 18),
(15, 'YELLOW_CARD', 72, 172, NULL, 18),
(15, 'SUBSTITUTION', 80, 157, 152, 17);

-- Partido 16: (2, 19, 20) Samuráis FC vs Centauros Deportivos (5-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(16, 'GOAL', 7, 124, 119, 19),
(16, 'GOAL', 14, 129, 124, 19),
(16, 'GOAL', 22, 165, 160, 20),
(16, 'GOAL', 30, 119, 129, 19),
(16, 'GOAL', 41, 134, 139, 19),
(16, 'GOAL', 53, 139, 124, 19),
(16, 'YELLOW_CARD', 67, 175, NULL, 20),
(16, 'SUBSTITUTION', 75, 144, 149, 19);

-- Partido 17: (2, 17, 19) Espartanos United vs Samuráis FC (1-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(17, 'GOAL', 22, 134, 129, 19),
(17, 'YELLOW_CARD', 36, 152, NULL, 17),
(17, 'GOAL', 44, 137, 142, 17),
(17, 'YELLOW_CARD', 51, 159, NULL, 19),
(17, 'GOAL', 67, 119, 124, 19),
(17, 'RED_CARD', 82, 157, NULL, 17),
(17, 'SUBSTITUTION', 85, 149, 144, 19);

-- Partido 18: (2, 18, 20) Vikingos SC vs Centauros Deportivos (4-0)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(18, 'GOAL', 13, 153, 158, 18),
(18, 'GOAL', 21, 168, 163, 18),
(18, 'YELLOW_CARD', 34, 170, NULL, 18),
(18, 'GOAL', 42, 158, 153, 18),
(18, 'GOAL', 56, 163, 168, 18),
(18, 'YELLOW_CARD', 68, 185, NULL, 20),
(18, 'SUBSTITUTION', 75, 173, 178, 18);

-- Partido 19: (2, 13, 19) Relámpagos SC vs Samuráis FC - Semifinal 1 (2-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(19, 'GOAL', 19, 129, 124, 19),
(19, 'GOAL', 33, 13, 18, 13),
(19, 'YELLOW_CARD', 41, 38, NULL, 13),
(19, 'YELLOW_CARD', 52, 144, NULL, 19),
(19, 'GOAL', 68, 23, 13, 13),
(19, 'SUBSTITUTION', 75, 33, 28, 13),
(19, 'RED_CARD', 89, 134, NULL, 19);

-- Partido 20: (2, 18, 14) Vikingos SC vs Huracán FC - Semifinal 2 (3-3, gana Vikingos por penales)
-- Eventos del partido
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(20, 'GOAL', 8, 19, 14, 14),
(20, 'GOAL', 17, 158, 153, 18),
(20, 'GOAL', 26, 14, 19, 14),
(20, 'YELLOW_CARD', 35, 163, NULL, 18),
(20, 'GOAL', 44, 153, 158, 18),
(20, 'GOAL', 59, 24, 19, 14),
(20, 'YELLOW_CARD', 63, 29, NULL, 14),
(20, 'GOAL', 78, 168, 163, 18),
-- Eventos de penales
(20, 'PENALTY', 95, 158, NULL, 18),
(20, 'PENALTY', 96, 19, NULL, 14),
(20, 'PENALTY', 97, 153, NULL, 18),
(20, 'PENALTY', 98, 14, NULL, 14),
(20, 'PENALTY', 99, 163, NULL, 18),
(20, 'PENALTY', 100, 29, NULL, 14),
(20, 'PENALTY_MISS', 101, 168, NULL, 18),
(20, 'PENALTY', 102, 24, NULL, 14),
(20, 'PENALTY', 103, 173, NULL, 18);

-- ============================================
-- TORNEO 3 - PARTIDOS (F5 Indoor 2023)
-- ============================================

-- Partido 21: (3, 1, 6) Los Halcones FC vs Leones del Sur (5-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(21, 'GOAL', 4, 11, 6, 1),
(21, 'GOAL', 9, 101, 106, 6),
(21, 'GOAL', 13, 1, 11, 1),
(21, 'GOAL', 19, 6, 1, 1),
(21, 'GOAL', 28, 106, 101, 6),
(21, 'YELLOW_CARD', 32, 21, NULL, 1),
(21, 'GOAL', 36, 16, 11, 1),
(21, 'GOAL', 44, 26, 21, 1),
(21, 'SUBSTITUTION', 50, 31, 36, 1);

-- Partido 22: (3, 11, 21) Rayos Veloces vs Atlántico FC (8-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(22, 'GOAL', 3, 221, 216, 11),
(22, 'GOAL', 7, 226, 221, 11),
(22, 'GOAL', 12, 306, NULL, 21),
(22, 'GOAL', 16, 216, 221, 11),
(22, 'GOAL', 21, 211, 206, 11),
(22, 'GOAL', 27, 221, 226, 11),
(22, 'GOAL', 33, 206, 211, 11),
(22, 'GOAL', 40, 236, 231, 11),
(22, 'YELLOW_CARD', 45, 304, NULL, 21),
(22, 'GOAL', 48, 231, 236, 11);

-- Partido 23: (3, 22, 23) Marinos Club vs Delfines MDQ (4-4)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(23, 'GOAL', 6, 323, 322, 23),
(23, 'GOAL', 12, 312, 311, 22),
(23, 'GOAL', 19, 317, 312, 22),
(23, 'GOAL', 25, 322, 323, 23),
(23, 'GOAL', 31, 327, 326, 23),
(23, 'GOAL', 38, 311, 317, 22),
(23, 'YELLOW_CARD', 42, 314, NULL, 22),
(23, 'GOAL', 44, 326, 327, 23),
(23, 'GOAL', 49, 321, 322, 23),
(23, 'YELLOW_CARD', 52, 324, NULL, 23);

-- Partido 24: (3, 6, 11) Leones del Sur vs Rayos Veloces (3-6)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(24, 'GOAL', 5, 221, 226, 11),
(24, 'GOAL', 11, 106, 101, 6),
(24, 'GOAL', 17, 216, 221, 11),
(24, 'GOAL', 22, 101, 106, 6),
(24, 'GOAL', 26, 226, 221, 11),
(24, 'GOAL', 31, 231, 236, 11),
(24, 'GOAL', 37, 111, 116, 6),
(24, 'GOAL', 41, 211, 206, 11),
(24, 'YELLOW_CARD', 45, 126, NULL, 6),
(24, 'GOAL', 48, 236, 231, 11);

-- Partido 25: (3, 1, 22) Los Halcones FC vs Marinos Club (7-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(25, 'GOAL', 4, 1, 6, 1),
(25, 'GOAL', 9, 11, 1, 1),
(25, 'GOAL', 14, 312, 311, 22),
(25, 'GOAL', 18, 6, 11, 1),
(25, 'GOAL', 23, 16, 21, 1),
(25, 'GOAL', 28, 317, 312, 22),
(25, 'GOAL', 33, 21, 16, 1),
(25, 'GOAL', 39, 26, 21, 1),
(25, 'YELLOW_CARD', 42, 314, NULL, 22),
(25, 'GOAL', 47, 31, 36, 1);

-- Partido 26: (3, 21, 23) Atlántico FC vs Delfines MDQ (2-3)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(26, 'GOAL', 8, 326, 327, 23),
(26, 'GOAL', 16, 306, 301, 21),
(26, 'GOAL', 24, 321, 322, 23),
(26, 'YELLOW_CARD', 31, 308, NULL, 21),
(26, 'GOAL', 37, 301, 306, 21),
(26, 'GOAL', 43, 322, 321, 23),
(26, 'YELLOW_CARD', 46, 324, NULL, 23),
(26, 'RED_CARD', 50, 304, NULL, 21);

-- Partido 27: (3, 11, 1) Rayos Veloces vs Los Halcones FC (4-4)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(27, 'GOAL', 3, 1, 6, 1),
(27, 'GOAL', 7, 221, 216, 11),
(27, 'GOAL', 12, 11, 1, 1),
(27, 'GOAL', 16, 226, 221, 11),
(27, 'GOAL', 22, 6, 11, 1),
(27, 'GOAL', 27, 216, 221, 11),
(27, 'GOAL', 33, 21, 16, 1),
(27, 'GOAL', 39, 231, 226, 11),
(27, 'YELLOW_CARD', 44, 26, NULL, 1),
(27, 'YELLOW_CARD', 48, 236, NULL, 11);

-- Partido 28: (3, 6, 22) Leones del Sur vs Marinos Club (5-3)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(28, 'GOAL', 5, 106, 101, 6),
(28, 'GOAL', 11, 312, 311, 22),
(28, 'GOAL', 16, 111, 106, 6),
(28, 'GOAL', 22, 317, 312, 22),
(28, 'GOAL', 27, 101, 111, 6),
(28, 'GOAL', 33, 116, 121, 6),
(28, 'GOAL', 38, 311, 317, 22),
(28, 'GOAL', 44, 121, 116, 6),
(28, 'YELLOW_CARD', 47, 126, NULL, 6);

-- Partido 29: (3, 23, 21) Delfines MDQ vs Atlántico FC (6-2)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(29, 'GOAL', 4, 322, 321, 23),
(29, 'GOAL', 9, 327, 326, 23),
(29, 'GOAL', 15, 301, 306, 21),
(29, 'GOAL', 19, 321, 322, 23),
(29, 'GOAL', 25, 326, 327, 23),
(29, 'GOAL', 31, 306, 301, 21),
(29, 'GOAL', 36, 323, 322, 23),
(29, 'GOAL', 42, 324, 321, 23),
(29, 'YELLOW_CARD', 45, 304, NULL, 21),
(29, 'SUBSTITUTION', 48, 325, 320, 23);

-- Partido 30: (3, 1, 23) Los Halcones FC vs Delfines MDQ (9-1)
INSERT INTO match_events (match_id, type, minute, primary_player_id, secondary_player_id, team_id) VALUES
(30, 'GOAL', 2, 1, 6, 1),
(30, 'GOAL', 5, 11, 1, 1),
(30, 'GOAL', 8, 16, 11, 1),
(30, 'GOAL', 12, 322, 321, 23),
(30, 'GOAL', 15, 6, 16, 1),
(30, 'GOAL', 19, 21, 26, 1),
(30, 'GOAL', 23, 26, 21, 1),
(30, 'GOAL', 28, 31, 36, 1),
(30, 'GOAL', 33, 36, 31, 1),
(30, 'GOAL', 38, 41, 46, 1),
(30, 'GOAL', 44, 46, 41, 1),
(30, 'YELLOW_CARD', 47, 324, NULL, 23);

-- 13. Crear ALINEACIONES para algunos partidos
-- ============================================
-- TORNEO 1 - 5 PARTIDOS
-- ============================================

-- PARTIDO 1: Los Halcones FC (team_id 1) vs Ciclón Deportivo (team_id 2)
-- Alineación Los Halcones FC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(1, 1, 1, TRUE, 'MED'),   -- Cerebro - Mediocampista
(1, 1, 6, TRUE, 'DEL'),   -- Magic - Delantero
(1, 1, 11, TRUE, 'DEL'),  -- El Tanque - Delantero
(1, 1, 16, TRUE, 'DEF'),  -- Tormenta - Defensor
(1, 1, 21, TRUE, 'MED'),  -- Bomba - Mediocampista
(1, 1, 26, TRUE, 'DEF'),  -- Halcón - Defensor
(1, 1, 31, TRUE, 'GK'),   -- Muro - Arquero
(1, 1, 36, TRUE, 'DEF'),  -- Fantasma - Defensor
(1, 1, 41, TRUE, 'MED'),  -- Titan - Mediocampista
(1, 1, 46, TRUE, 'DEL'),  -- Chispa - Delantero
(1, 1, 51, FALSE, 'MED'), -- Lobo - Suplente
(1, 1, 56, FALSE, 'DEF'), -- Mago - Suplente
(1, 1, 61, FALSE, 'DEL'); -- Furia - Suplente

-- Alineación Ciclón Deportivo
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(1, 2, 2, TRUE, 'DEL'),   -- Rayo - Delantero
(1, 2, 7, TRUE, 'MED'),   -- Pulpo - Mediocampista
(1, 2, 12, TRUE, 'DEF'),  -- Sniper - Defensor
(1, 2, 17, TRUE, 'MED'),  -- Roca - Mediocampista
(1, 2, 22, TRUE, 'DEL'),  -- Flecha - Delantero
(1, 2, 27, TRUE, 'DEF'),  -- Cerebro - Defensor
(1, 2, 32, TRUE, 'GK'),   -- Muro Infranqueable - Arquero
(1, 2, 37, TRUE, 'MED'),  -- Cazador - Mediocampista
(1, 2, 42, TRUE, 'DEF'),  -- General - Defensor
(1, 2, 47, TRUE, 'DEL'),  -- Pantera - Delantero
(1, 2, 52, FALSE, 'MED'), -- Orquesta - Suplente
(1, 2, 57, FALSE, 'DEL'), -- Cañón - Suplente
(1, 2, 62, FALSE, 'DEF'); -- Escudo - Suplente

-- PARTIDO 3: Águilas Reales (team_id 5) vs Leones del Sur (team_id 6)
-- Alineación Águilas Reales
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(3, 5, 5, TRUE, 'MED'),   -- Muro - Mediocampista
(3, 5, 10, TRUE, 'DEL'),  -- Magic - Delantero
(3, 5, 15, TRUE, 'DEF'),  -- Tormenta - Defensor
(3, 5, 20, TRUE, 'DEL'),  -- Roca - Delantero
(3, 5, 25, TRUE, 'MED'),  -- Flecha - Mediocampista
(3, 5, 30, TRUE, 'DEF'),  -- Cerebro - Defensor
(3, 5, 35, TRUE, 'GK'),   -- Halcón - Arquero
(3, 5, 40, TRUE, 'MED'),  -- Fantasma - Mediocampista
(3, 5, 45, TRUE, 'DEF'),  -- Titan - Defensor
(3, 5, 50, TRUE, 'DEL'),  -- Chispa - Delantero
(3, 5, 55, FALSE, 'MED'), -- Lobo - Suplente
(3, 5, 60, FALSE, 'DEF'); -- Mago - Suplente

-- Alineación Leones del Sur
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(3, 6, 101, TRUE, 'MED'), -- El Tanque - Mediocampista
(3, 6, 106, TRUE, 'DEL'), -- Rayo - Delantero
(3, 6, 111, TRUE, 'DEF'), -- Pulpo - Defensor
(3, 6, 116, TRUE, 'MED'), -- Sniper - Mediocampista
(3, 6, 121, TRUE, 'GK'),  -- Muro - Arquero
(3, 6, 126, TRUE, 'DEF'), -- Magic - Defensor
(3, 6, 131, TRUE, 'MED'), -- Tormenta - Mediocampista
(3, 6, 136, TRUE, 'DEL'), -- Roca - Delantero
(3, 6, 141, TRUE, 'DEF'), -- Flecha - Defensor
(3, 6, 146, TRUE, 'MED'), -- Cerebro - Mediocampista
(3, 6, 151, FALSE, 'DEL'), -- Bomba - Suplente
(3, 6, 156, FALSE, 'DEF'); -- Halcón - Suplente

-- PARTIDO 5: Ciclón Deportivo (team_id 2) vs Estrellas Doradas (team_id 3)
-- Alineación Ciclón Deportivo (visitante en este partido)
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(5, 2, 2, TRUE, 'DEL'),   -- Rayo - Delantero
(5, 2, 7, TRUE, 'MED'),   -- Pulpo - Mediocampista
(5, 2, 12, TRUE, 'DEF'),  -- Sniper - Defensor
(5, 2, 17, TRUE, 'MED'),  -- Roca - Mediocampista
(5, 2, 22, TRUE, 'DEL'),  -- Flecha - Delantero
(5, 2, 27, TRUE, 'DEF'),  -- Cerebro - Defensor
(5, 2, 32, TRUE, 'GK'),   -- Muro Infranqueable - Arquero
(5, 2, 37, TRUE, 'MED'),  -- Cazador - Mediocampista
(5, 2, 42, TRUE, 'DEF'),  -- General - Defensor
(5, 2, 47, TRUE, 'DEL'),  -- Pantera - Delantero
(5, 2, 52, FALSE, 'MED'), -- Orquesta - Suplente
(5, 2, 57, FALSE, 'DEF'); -- Cañón - Suplente

-- Alineación Estrellas Doradas
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(5, 3, 3, TRUE, 'MED'),   -- El Tanque - Mediocampista
(5, 3, 8, TRUE, 'DEL'),   -- Rayo - Delantero
(5, 3, 13, TRUE, 'DEF'),  -- Pulpo - Defensor
(5, 3, 18, TRUE, 'MED'),  -- Sniper - Mediocampista
(5, 3, 23, TRUE, 'GK'),   -- Muro - Arquero
(5, 3, 28, TRUE, 'DEF'),  -- Magic - Defensor
(5, 3, 33, TRUE, 'MED'),  -- Tormenta - Mediocampista
(5, 3, 38, TRUE, 'DEL'),  -- Roca - Delantero
(5, 3, 43, TRUE, 'DEF'),  -- Flecha - Defensor
(5, 3, 48, TRUE, 'MED'),  -- Cerebro - Mediocampista
(5, 3, 53, FALSE, 'DEL'), -- Bomba - Suplente
(5, 3, 58, FALSE, 'MED'); -- Halcón - Suplente

-- PARTIDO 7: Leones del Sur (team_id 6) vs Tiburones Azules (team_id 7)
-- Alineación Leones del Sur (local)
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(7, 6, 101, TRUE, 'MED'), -- El Tanque - Mediocampista
(7, 6, 106, TRUE, 'DEL'), -- Rayo - Delantero
(7, 6, 111, TRUE, 'DEF'), -- Pulpo - Defensor
(7, 6, 116, TRUE, 'MED'), -- Sniper - Mediocampista
(7, 6, 121, TRUE, 'GK'),  -- Muro - Arquero
(7, 6, 126, TRUE, 'DEF'), -- Magic - Defensor
(7, 6, 131, TRUE, 'MED'), -- Tormenta - Mediocampista
(7, 6, 136, TRUE, 'DEL'), -- Roca - Delantero
(7, 6, 141, TRUE, 'DEF'), -- Flecha - Defensor
(7, 6, 146, TRUE, 'MED'), -- Cerebro - Mediocampista
(7, 6, 151, FALSE, 'DEL'), -- Bomba - Suplente
(7, 6, 156, FALSE, 'DEF'); -- Halcón - Suplente

-- Alineación Tiburones Azules
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(7, 7, 102, TRUE, 'MED'), -- Rayo - Mediocampista
(7, 7, 107, TRUE, 'DEL'), -- Pulpo - Delantero
(7, 7, 112, TRUE, 'DEF'), -- Sniper - Defensor
(7, 7, 117, TRUE, 'MED'), -- Roca - Mediocampista
(7, 7, 122, TRUE, 'GK'),  -- Flecha - Arquero
(7, 7, 127, TRUE, 'DEF'), -- Cerebro - Defensor
(7, 7, 132, TRUE, 'MED'), -- Muro Infranqueable - Mediocampista
(7, 7, 137, TRUE, 'DEL'), -- Cazador - Delantero
(7, 7, 142, TRUE, 'DEF'), -- General - Defensor
(7, 7, 147, TRUE, 'MED'), -- Pantera - Mediocampista
(7, 7, 152, FALSE, 'DEL'), -- Orquesta - Suplente
(7, 7, 157, FALSE, 'DEF'); -- Cañón - Suplente

-- PARTIDO 10: Rayos Veloces (team_id 11) vs Truenos FC (team_id 12)
-- Alineación Rayos Veloces
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(10, 11, 201, TRUE, 'MED'), -- El Tanque - Mediocampista
(10, 11, 206, TRUE, 'DEL'), -- Rayo - Delantero
(10, 11, 211, TRUE, 'DEF'), -- Pulpo - Defensor
(10, 11, 216, TRUE, 'MED'), -- Sniper - Mediocampista
(10, 11, 221, TRUE, 'GK'),  -- Muro - Arquero
(10, 11, 226, TRUE, 'DEF'), -- Magic - Defensor
(10, 11, 231, TRUE, 'MED'), -- Tormenta - Mediocampista
(10, 11, 236, TRUE, 'DEL'), -- Roca - Delantero
(10, 11, 241, TRUE, 'DEF'), -- Flecha - Defensor
(10, 11, 246, TRUE, 'MED'), -- Cerebro - Mediocampista
(10, 11, 251, FALSE, 'DEL'), -- Bomba - Suplente
(10, 11, 256, FALSE, 'MED'); -- Halcón - Suplente

-- Alineación Truenos FC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(10, 12, 202, TRUE, 'MED'), -- Rayo - Mediocampista
(10, 12, 207, TRUE, 'DEL'), -- Pulpo - Delantero
(10, 12, 212, TRUE, 'DEF'), -- Sniper - Defensor
(10, 12, 217, TRUE, 'MED'), -- Roca - Mediocampista
(10, 12, 222, TRUE, 'GK'),  -- Flecha - Arquero
(10, 12, 227, TRUE, 'DEF'), -- Cerebro - Defensor
(10, 12, 232, TRUE, 'MED'), -- Muro Infranqueable - Mediocampista
(10, 12, 237, TRUE, 'DEL'), -- Cazador - Delantero
(10, 12, 242, TRUE, 'DEF'), -- General - Defensor
(10, 12, 247, TRUE, 'MED'), -- Pantera - Mediocampista
(10, 12, 252, FALSE, 'DEL'), -- Orquesta - Suplente
(10, 12, 257, FALSE, 'DEF'); -- Cañón - Suplente

-- ============================================
-- TORNEO 2 - 5 PARTIDOS
-- ============================================

-- PARTIDO 11: Relámpagos SC (team_id 13) vs Huracán FC (team_id 14)
-- Alineación Relámpagos SC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(11, 13, 13, TRUE, 'DEL'), -- El Tanque - Delantero
(11, 13, 18, TRUE, 'MED'), -- Rayo - Mediocampista
(11, 13, 23, TRUE, 'DEF'), -- Pulpo - Defensor
(11, 13, 28, TRUE, 'MED'), -- Sniper - Mediocampista
(11, 13, 33, TRUE, 'GK'),  -- Muro - Arquero
(11, 13, 38, TRUE, 'DEF'), -- Magic - Defensor
(11, 13, 43, TRUE, 'MED'), -- Tormenta - Mediocampista
(11, 13, 48, TRUE, 'DEL'), -- Roca - Delantero
(11, 13, 53, TRUE, 'DEF'), -- Flecha - Defensor
(11, 13, 58, TRUE, 'MED'), -- Cerebro - Mediocampista
(11, 13, 63, FALSE, 'DEL'), -- Bomba - Suplente
(11, 13, 68, FALSE, 'MED'); -- Halcón - Suplente

-- Alineación Huracán FC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(11, 14, 14, TRUE, 'MED'), -- Rayo - Mediocampista
(11, 14, 19, TRUE, 'DEL'), -- Pulpo - Delantero
(11, 14, 24, TRUE, 'DEF'), -- Sniper - Defensor
(11, 14, 29, TRUE, 'MED'), -- Roca - Mediocampista
(11, 14, 34, TRUE, 'GK'),  -- Flecha - Arquero
(11, 14, 39, TRUE, 'DEF'), -- Cerebro - Defensor
(11, 14, 44, TRUE, 'MED'), -- Muro Infranqueable - Mediocampista
(11, 14, 49, TRUE, 'DEL'), -- Cazador - Delantero
(11, 14, 54, TRUE, 'DEF'), -- General - Defensor
(11, 14, 59, TRUE, 'MED'), -- Pantera - Mediocampista
(11, 14, 64, FALSE, 'DEL'), -- Orquesta - Suplente
(11, 14, 69, FALSE, 'DEF'); -- Cañón - Suplente

-- PARTIDO 13: Relámpagos SC (team_id 13) vs Tornados Deportivos (team_id 15)
-- Alineación Relámpagos SC (local)
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(13, 13, 13, TRUE, 'DEL'), -- El Tanque - Delantero
(13, 13, 18, TRUE, 'MED'), -- Rayo - Mediocampista
(13, 13, 23, TRUE, 'DEF'), -- Pulpo - Defensor
(13, 13, 28, TRUE, 'MED'), -- Sniper - Mediocampista
(13, 13, 33, TRUE, 'GK'),  -- Muro - Arquero
(13, 13, 38, TRUE, 'DEF'), -- Magic - Defensor
(13, 13, 43, TRUE, 'MED'), -- Tormenta - Mediocampista
(13, 13, 48, TRUE, 'DEL'), -- Roca - Delantero
(13, 13, 53, TRUE, 'DEF'), -- Flecha - Defensor
(13, 13, 58, TRUE, 'MED'), -- Cerebro - Mediocampista
(13, 13, 63, FALSE, 'DEL'), -- Bomba - Suplente
(13, 13, 68, FALSE, 'MED'); -- Halcón - Suplente

-- Alineación Tornados Deportivos
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(13, 15, 15, TRUE, 'DEL'), -- Roca - Delantero
(13, 15, 20, TRUE, 'MED'), -- Flecha - Mediocampista
(13, 15, 25, TRUE, 'DEF'), -- Cerebro - Defensor
(13, 15, 30, TRUE, 'MED'), -- Muro Infranqueable - Mediocampista
(13, 15, 35, TRUE, 'GK'),  -- Cazador - Arquero
(13, 15, 40, TRUE, 'DEF'), -- General - Defensor
(13, 15, 45, TRUE, 'MED'), -- Pantera - Mediocampista
(13, 15, 50, TRUE, 'DEL'), -- Orquesta - Delantero
(13, 15, 55, TRUE, 'DEF'), -- Cañón - Defensor
(13, 15, 60, TRUE, 'MED'), -- Escudo - Mediocampista
(13, 15, 65, FALSE, 'DEL'), -- Diamante - Suplente
(13, 15, 70, FALSE, 'DEF'); -- Ancla - Suplente

-- PARTIDO 15: Espartanos United (team_id 17) vs Vikingos SC (team_id 18)
-- Alineación Espartanos United
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(15, 17, 117, TRUE, 'MED'), -- Roca - Mediocampista
(15, 17, 122, TRUE, 'DEL'), -- Flecha - Delantero
(15, 17, 127, TRUE, 'DEF'), -- Cerebro - Defensor
(15, 17, 132, TRUE, 'MED'), -- Muro Infranqueable - Mediocampista
(15, 17, 137, TRUE, 'GK'),  -- Cazador - Arquero
(15, 17, 142, TRUE, 'DEF'), -- General - Defensor
(15, 17, 147, TRUE, 'MED'), -- Pantera - Mediocampista
(15, 17, 152, TRUE, 'DEL'), -- Orquesta - Delantero
(15, 17, 157, TRUE, 'DEF'), -- Cañón - Defensor
(15, 17, 162, TRUE, 'MED'), -- Escudo - Mediocampista
(15, 17, 167, FALSE, 'DEL'), -- Diamante - Suplente
(15, 17, 172, FALSE, 'DEF'); -- Ancla - Suplente

-- Alineación Vikingos SC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(15, 18, 118, TRUE, 'MED'), -- Tormenta - Mediocampista
(15, 18, 123, TRUE, 'DEL'), -- Roca - Delantero
(15, 18, 128, TRUE, 'DEF'), -- Flecha - Defensor
(15, 18, 133, TRUE, 'MED'), -- Cerebro - Mediocampista
(15, 18, 138, TRUE, 'GK'),  -- Muro Infranqueable - Arquero
(15, 18, 143, TRUE, 'DEF'), -- Cazador - Defensor
(15, 18, 148, TRUE, 'MED'), -- General - Mediocampista
(15, 18, 153, TRUE, 'DEL'), -- Pantera - Delantero
(15, 18, 158, TRUE, 'DEF'), -- Orquesta - Defensor
(15, 18, 163, TRUE, 'MED'), -- Cañón - Mediocampista
(15, 18, 168, FALSE, 'DEL'), -- Escudo - Suplente
(15, 18, 173, FALSE, 'DEF'); -- Diamante - Suplente

-- PARTIDO 17: Espartanos United (team_id 17) vs Samuráis FC (team_id 19)
-- Alineación Espartanos United (local)
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(17, 17, 117, TRUE, 'MED'), -- Roca - Mediocampista
(17, 17, 122, TRUE, 'DEL'), -- Flecha - Delantero
(17, 17, 127, TRUE, 'DEF'), -- Cerebro - Defensor
(17, 17, 132, TRUE, 'MED'), -- Muro Infranqueable - Mediocampista
(17, 17, 137, TRUE, 'GK'),  -- Cazador - Arquero
(17, 17, 142, TRUE, 'DEF'), -- General - Defensor
(17, 17, 147, TRUE, 'MED'), -- Pantera - Mediocampista
(17, 17, 152, TRUE, 'DEL'), -- Orquesta - Delantero
(17, 17, 157, TRUE, 'DEF'), -- Cañón - Defensor
(17, 17, 162, TRUE, 'MED'), -- Escudo - Mediocampista
(17, 17, 167, FALSE, 'DEL'), -- Diamante - Suplente
(17, 17, 172, FALSE, 'DEF'); -- Ancla - Suplente

-- Alineación Samuráis FC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(17, 19, 119, TRUE, 'MED'), -- Tormenta - Mediocampista
(17, 19, 124, TRUE, 'DEL'), -- Roca - Delantero
(17, 19, 129, TRUE, 'DEF'), -- Flecha - Defensor
(17, 19, 134, TRUE, 'MED'), -- Cerebro - Mediocampista
(17, 19, 139, TRUE, 'GK'),  -- Muro Infranqueable - Arquero
(17, 19, 144, TRUE, 'DEF'), -- Cazador - Defensor
(17, 19, 149, TRUE, 'MED'), -- General - Mediocampista
(17, 19, 154, TRUE, 'DEL'), -- Pantera - Delantero
(17, 19, 159, TRUE, 'DEF'), -- Orquesta - Defensor
(17, 19, 164, TRUE, 'MED'), -- Cañón - Mediocampista
(17, 19, 169, FALSE, 'DEL'), -- Escudo - Suplente
(17, 19, 174, FALSE, 'DEF'); -- Diamante - Suplente

-- PARTIDO 20: Vikingos SC (team_id 18) vs Huracán FC (team_id 14) - Semifinal
-- Alineación Vikingos SC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(20, 18, 118, TRUE, 'MED'), -- Tormenta - Mediocampista
(20, 18, 123, TRUE, 'DEL'), -- Roca - Delantero
(20, 18, 128, TRUE, 'DEF'), -- Flecha - Defensor
(20, 18, 133, TRUE, 'MED'), -- Cerebro - Mediocampista
(20, 18, 138, TRUE, 'GK'),  -- Muro Infranqueable - Arquero
(20, 18, 143, TRUE, 'DEF'), -- Cazador - Defensor
(20, 18, 148, TRUE, 'MED'), -- General - Mediocampista
(20, 18, 153, TRUE, 'DEL'), -- Pantera - Delantero
(20, 18, 158, TRUE, 'DEF'), -- Orquesta - Defensor
(20, 18, 163, TRUE, 'MED'), -- Cañón - Mediocampista
(20, 18, 168, FALSE, 'DEL'), -- Escudo - Suplente
(20, 18, 173, FALSE, 'DEF'); -- Diamante - Suplente

-- Alineación Huracán FC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(20, 14, 14, TRUE, 'MED'), -- Rayo - Mediocampista
(20, 14, 19, TRUE, 'DEL'), -- Pulpo - Delantero
(20, 14, 24, TRUE, 'DEF'), -- Sniper - Defensor
(20, 14, 29, TRUE, 'MED'), -- Roca - Mediocampista
(20, 14, 34, TRUE, 'GK'),  -- Flecha - Arquero
(20, 14, 39, TRUE, 'DEF'), -- Cerebro - Defensor
(20, 14, 44, TRUE, 'MED'), -- Muro Infranqueable - Mediocampista
(20, 14, 49, TRUE, 'DEL'), -- Cazador - Delantero
(20, 14, 54, TRUE, 'DEF'), -- General - Defensor
(20, 14, 59, TRUE, 'MED'), -- Pantera - Mediocampista
(20, 14, 64, FALSE, 'DEL'), -- Orquesta - Suplente
(20, 14, 69, FALSE, 'DEF'); -- Cañón - Suplente

-- ============================================
-- TORNEO 3 - 5 PARTIDOS
-- ============================================

-- PARTIDO 21: Los Halcones FC (team_id 1) vs Leones del Sur (team_id 6) - F5
-- Alineación Los Halcones FC (F5)
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(21, 1, 1, TRUE, 'MED'),   -- Cerebro - Mediocampista
(21, 1, 6, TRUE, 'DEL'),   -- Magic - Delantero
(21, 1, 11, TRUE, 'DEL'),  -- El Tanque - Delantero
(21, 1, 16, TRUE, 'DEF'),  -- Tormenta - Defensor
(21, 1, 21, TRUE, 'GK'),   -- Bomba - Arquero
(21, 1, 26, FALSE, 'MED'), -- Halcón - Suplente
(21, 1, 31, FALSE, 'DEF'); -- Muro - Suplente

-- Alineación Leones del Sur (F5)
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(21, 6, 101, TRUE, 'MED'), -- El Tanque - Mediocampista
(21, 6, 106, TRUE, 'DEL'), -- Rayo - Delantero
(21, 6, 111, TRUE, 'DEF'), -- Pulpo - Defensor
(21, 6, 116, TRUE, 'MED'), -- Sniper - Mediocampista
(21, 6, 121, TRUE, 'GK'),  -- Muro - Arquero
(21, 6, 126, FALSE, 'DEF'), -- Magic - Suplente
(21, 6, 131, FALSE, 'MED'); -- Tormenta - Suplente

-- PARTIDO 23: Marinos Club (team_id 22) vs Delfines MDQ (team_id 23) - F5 no registrados
-- Alineación Marinos Club
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(23, 22, 311, TRUE, 'MED'), -- Estrella - Mediocampista
(23, 22, 312, TRUE, 'DEL'), -- Coraje - Delantero
(23, 22, 313, TRUE, 'DEF'), -- Alegría - Defensor
(23, 22, 314, TRUE, 'MED'), -- Esfuerzo - Mediocampista
(23, 22, 315, TRUE, 'GK'),  -- Veterano - Arquero
(23, 22, 316, FALSE, 'DEL'), -- Destino - Suplente
(23, 22, 317, FALSE, 'DEF'); -- Barrio - Suplente

-- Alineación Delfines MDQ
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(23, 23, 321, TRUE, 'MED'), -- Sueños - Mediocampista
(23, 23, 322, TRUE, 'DEL'), -- Amistad - Delantero
(23, 23, 323, TRUE, 'DEF'), -- Talento - Defensor
(23, 23, 324, TRUE, 'MED'), -- Principiante - Mediocampista
(23, 23, 325, TRUE, 'GK'),  -- Tradición - Arquero
(23, 23, 326, FALSE, 'DEL'), -- Futuro - Suplente
(23, 23, 327, FALSE, 'DEF'); -- Unión - Suplente

-- PARTIDO 25: Los Halcones FC (team_id 1) vs Marinos Club (team_id 22)
-- Alineación Los Halcones FC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(25, 1, 1, TRUE, 'MED'),   -- Cerebro - Mediocampista
(25, 1, 6, TRUE, 'DEL'),   -- Magic - Delantero
(25, 1, 11, TRUE, 'DEL'),  -- El Tanque - Delantero
(25, 1, 16, TRUE, 'DEF'),  -- Tormenta - Defensor
(25, 1, 21, TRUE, 'GK'),   -- Bomba - Arquero
(25, 1, 26, FALSE, 'MED'), -- Halcón - Suplente
(25, 1, 31, FALSE, 'DEF'); -- Muro - Suplente

-- Alineación Marinos Club
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(25, 22, 311, TRUE, 'MED'), -- Estrella - Mediocampista
(25, 22, 312, TRUE, 'DEL'), -- Coraje - Delantero
(25, 22, 313, TRUE, 'DEF'), -- Alegría - Defensor
(25, 22, 314, TRUE, 'MED'), -- Esfuerzo - Mediocampista
(25, 22, 315, TRUE, 'GK'),  -- Veterano - Arquero
(25, 22, 316, FALSE, 'DEL'), -- Destino - Suplente
(25, 22, 317, FALSE, 'DEF'); -- Barrio - Suplente

-- PARTIDO 27: Rayos Veloces (team_id 11) vs Los Halcones FC (team_id 1)
-- Alineación Rayos Veloces (F5)
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(27, 11, 201, TRUE, 'MED'), -- El Tanque - Mediocampista
(27, 11, 206, TRUE, 'DEL'), -- Rayo - Delantero
(27, 11, 211, TRUE, 'DEF'), -- Pulpo - Defensor
(27, 11, 216, TRUE, 'MED'), -- Sniper - Mediocampista
(27, 11, 221, TRUE, 'GK'),  -- Muro - Arquero
(27, 11, 226, FALSE, 'DEF'), -- Magic - Suplente
(27, 11, 231, FALSE, 'MED'); -- Tormenta - Suplente

-- Alineación Los Halcones FC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(27, 1, 1, TRUE, 'MED'),   -- Cerebro - Mediocampista
(27, 1, 6, TRUE, 'DEL'),   -- Magic - Delantero
(27, 1, 11, TRUE, 'DEL'),  -- El Tanque - Delantero
(27, 1, 16, TRUE, 'DEF'),  -- Tormenta - Defensor
(27, 1, 21, TRUE, 'GK'),   -- Bomba - Arquero
(27, 1, 26, FALSE, 'MED'), -- Halcón - Suplente
(27, 1, 31, FALSE, 'DEF'); -- Muro - Suplente

-- PARTIDO 30: Los Halcones FC (team_id 1) vs Delfines MDQ (team_id 23)
-- Alineación Los Halcones FC
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(30, 1, 1, TRUE, 'MED'),   -- Cerebro - Mediocampista
(30, 1, 6, TRUE, 'DEL'),   -- Magic - Delantero
(30, 1, 11, TRUE, 'DEL'),  -- El Tanque - Delantero
(30, 1, 16, TRUE, 'DEF'),  -- Tormenta - Defensor
(30, 1, 21, TRUE, 'GK'),   -- Bomba - Arquero
(30, 1, 26, FALSE, 'MED'), -- Halcón - Suplente
(30, 1, 31, FALSE, 'DEF'), -- Muro - Suplente
(30, 1, 36, FALSE, 'DEL'); -- Fantasma - Suplente

-- Alineación Delfines MDQ
INSERT INTO lineups (match_id, team_id, player_id, is_starter, position) VALUES
(30, 23, 321, TRUE, 'MED'), -- Sueños - Mediocampista
(30, 23, 322, TRUE, 'DEL'), -- Amistad - Delantero
(30, 23, 323, TRUE, 'DEF'), -- Talento - Defensor
(30, 23, 324, TRUE, 'MED'), -- Principiante - Mediocampista
(30, 23, 325, TRUE, 'GK'),  -- Tradición - Arquero
(30, 23, 326, FALSE, 'DEL'), -- Futuro - Suplente
(30, 23, 327, FALSE, 'DEF'), -- Unión - Suplente
(30, 23, 328, FALSE, 'MED'); -- Don - Suplente

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

-- 15. Crear RECAP para torneo finalizado
-- ============================================
-- TORNEO 3: Campeonato Indoor 2023 (F5) - FINALIZADO
-- ============================================
INSERT INTO tournament_recaps (
    tournament_id, 
    champion_team_id, 
    final_standings, 
    top_scorers, 
    top_assistants, 
    most_yellows, 
    most_reds, 
    champion_squad_stats
) VALUES
(
    3,  -- Torneo 3 (Campeonato Indoor 2023)
    1,  -- Campeón: Los Halcones FC (team_id 1)
    -- Final Standings (JSON)
    '[
        {"position": 1, "team_id": 1, "team_name": "Los Halcones FC", "points": 22, "played": 10, "won": 7, "drawn": 1, "lost": 2, "goals_for": 45, "goals_against": 18},
        {"position": 2, "team_id": 11, "team_name": "Rayos Veloces", "points": 20, "played": 10, "won": 6, "drawn": 2, "lost": 2, "goals_for": 42, "goals_against": 22},
        {"position": 3, "team_id": 6, "team_name": "Leones del Sur", "points": 16, "played": 10, "won": 5, "drawn": 1, "lost": 4, "goals_for": 32, "goals_against": 35},
        {"position": 4, "team_id": 23, "team_name": "Delfines MDQ", "points": 13, "played": 10, "won": 4, "drawn": 1, "lost": 5, "goals_for": 28, "goals_against": 41},
        {"position": 5, "team_id": 22, "team_name": "Marinos Club", "points": 8, "played": 10, "won": 2, "drawn": 2, "lost": 6, "goals_for": 24, "goals_against": 44},
        {"position": 6, "team_id": 21, "team_name": "Atlántico FC", "points": 7, "played": 10, "won": 2, "drawn": 1, "lost": 7, "goals_for": 19, "goals_against": 42}
    ]'::jsonb,
    -- Top Scorers (JSON)
    '[
        {"player_id": 11, "player_name": "El Tanque", "team_id": 1, "team_name": "Los Halcones FC", "goals": 14},
        {"player_id": 221, "player_name": "Muro", "team_id": 11, "team_name": "Rayos Veloces", "goals": 12},
        {"player_id": 322, "player_name": "Amistad", "team_id": 23, "team_name": "Delfines MDQ", "goals": 9},
        {"player_id": 1, "player_name": "Cerebro", "team_id": 1, "team_name": "Los Halcones FC", "goals": 8},
        {"player_id": 106, "player_name": "Rayo", "team_id": 6, "team_name": "Leones del Sur", "goals": 8},
        {"player_id": 6, "player_name": "Magic", "team_id": 1, "team_name": "Los Halcones FC", "goals": 7}
    ]'::jsonb,
    -- Top Assistants (JSON)
    '[
        {"player_id": 1, "player_name": "Cerebro", "team_id": 1, "team_name": "Los Halcones FC", "assists": 10},
        {"player_id": 221, "player_name": "Muro", "team_id": 11, "team_name": "Rayos Veloces", "assists": 8},
        {"player_id": 322, "player_name": "Amistad", "team_id": 23, "team_name": "Delfines MDQ", "assists": 7},
        {"player_id": 11, "player_name": "El Tanque", "team_id": 1, "team_name": "Los Halcones FC", "assists": 6},
        {"player_id": 216, "player_name": "Sniper", "team_id": 11, "team_name": "Rayos Veloces", "assists": 6},
        {"player_id": 321, "player_name": "Sueños", "team_id": 23, "team_name": "Delfines MDQ", "assists": 5}
    ]'::jsonb,
    -- Most Yellows (JSON)
    '[
        {"player_id": 324, "player_name": "Principiante", "team_id": 23, "team_name": "Delfines MDQ", "yellow_cards": 5},
        {"player_id": 16, "player_name": "Tormenta", "team_id": 1, "team_name": "Los Halcones FC", "yellow_cards": 4},
        {"player_id": 314, "player_name": "Esfuerzo", "team_id": 22, "team_name": "Marinos Club", "yellow_cards": 4},
        {"player_id": 126, "player_name": "Magic", "team_id": 6, "team_name": "Leones del Sur", "yellow_cards": 3},
        {"player_id": 226, "player_name": "Magic", "team_id": 11, "team_name": "Rayos Veloces", "yellow_cards": 3}
    ]'::jsonb,
    -- Most Reds (JSON)
    '[
        {"player_id": 304, "player_name": "Futuro", "team_id": 21, "team_name": "Atlántico FC", "red_cards": 2},
        {"player_id": 324, "player_name": "Principiante", "team_id": 23, "team_name": "Delfines MDQ", "red_cards": 1},
        {"player_id": 308, "player_name": "Don", "team_id": 21, "team_name": "Atlántico FC", "red_cards": 1}
    ]'::jsonb,
    -- Champion Squad Stats (JSON) - Los Halcones FC
    '[
        {"player_id": 1, "player_name": "Cerebro", "position": "MED", "goals": 8, "assists": 10, "yellow_cards": 2, "red_cards": 0, "matches_played": 10},
        {"player_id": 6, "player_name": "Magic", "position": "DEL", "goals": 7, "assists": 5, "yellow_cards": 1, "red_cards": 0, "matches_played": 10},
        {"player_id": 11, "player_name": "El Tanque", "position": "DEL", "goals": 14, "assists": 6, "yellow_cards": 0, "red_cards": 0, "matches_played": 10},
        {"player_id": 16, "player_name": "Tormenta", "position": "DEF", "goals": 3, "assists": 4, "yellow_cards": 4, "red_cards": 0, "matches_played": 9},
        {"player_id": 21, "player_name": "Bomba", "position": "GK", "goals": 0, "assists": 1, "yellow_cards": 1, "red_cards": 0, "matches_played": 8},
        {"player_id": 26, "player_name": "Halcón", "position": "MED", "goals": 5, "assists": 3, "yellow_cards": 2, "red_cards": 0, "matches_played": 8},
        {"player_id": 31, "player_name": "Muro", "position": "DEF", "goals": 1, "assists": 0, "yellow_cards": 0, "red_cards": 0, "matches_played": 6},
        {"player_id": 36, "player_name": "Fantasma", "position": "MED", "goals": 3, "assists": 2, "yellow_cards": 0, "red_cards": 0, "matches_played": 5},
        {"player_id": 41, "player_name": "Titan", "position": "DEF", "goals": 4, "assists": 1, "yellow_cards": 2, "red_cards": 0, "matches_played": 4}
    ]'::jsonb
);

-- ============================================
-- TORNEO 4: Liga Metropolitana 2023 (F11) - FINALIZADO
-- ============================================
INSERT INTO tournament_recaps (
    tournament_id, 
    champion_team_id, 
    final_standings, 
    top_scorers, 
    top_assistants, 
    most_yellows, 
    most_reds, 
    champion_squad_stats
) VALUES
(
    4,  -- Torneo 4 (Liga Metropolitana 2023)
    5,  -- Campeón: Águilas Reales (team_id 5)
    -- Final Standings (JSON)
    '[
        {"position": 1, "team_id": 5, "team_name": "Águilas Reales", "points": 42, "played": 30, "won": 13, "drawn": 3, "lost": 2, "goals_for": 48, "goals_against": 21},
        {"position": 2, "team_id": 1, "team_name": "Los Halcones FC", "points": 38, "played": 30, "won": 11, "drawn": 5, "lost": 2, "goals_for": 45, "goals_against": 23},
        {"position": 3, "team_id": 3, "team_name": "Estrellas Doradas", "points": 35, "played": 30, "won": 10, "drawn": 5, "lost": 3, "goals_for": 42, "goals_against": 28},
        {"position": 4, "team_id": 8, "team_name": "Dragones FC", "points": 32, "played": 30, "won": 9, "drawn": 5, "lost": 4, "goals_for": 38, "goals_against": 30},
        {"position": 5, "team_id": 11, "team_name": "Rayos Veloces", "points": 30, "played": 30, "won": 8, "drawn": 6, "lost": 4, "goals_for": 35, "goals_against": 29},
        {"position": 6, "team_id": 2, "team_name": "Ciclón Deportivo", "points": 28, "played": 30, "won": 8, "drawn": 4, "lost": 6, "goals_for": 34, "goals_against": 33},
        {"position": 7, "team_id": 7, "team_name": "Tiburones Azules", "points": 26, "played": 30, "won": 7, "drawn": 5, "lost": 6, "goals_for": 31, "goals_against": 32},
        {"position": 8, "team_id": 10, "team_name": "Cóndores Andinos", "points": 24, "played": 30, "won": 6, "drawn": 6, "lost": 6, "goals_for": 29, "goals_against": 33},
        {"position": 9, "team_id": 4, "team_name": "Toros Salvajes", "points": 22, "played": 30, "won": 5, "drawn": 7, "lost": 6, "goals_for": 27, "goals_against": 32},
        {"position": 10, "team_id": 6, "team_name": "Leones del Sur", "points": 20, "played": 30, "won": 5, "drawn": 5, "lost": 8, "goals_for": 26, "goals_against": 36},
        {"position": 11, "team_id": 9, "team_name": "Fénix United", "points": 18, "played": 30, "won": 4, "drawn": 6, "lost": 8, "goals_for": 24, "goals_against": 37},
        {"position": 12, "team_id": 12, "team_name": "Truenos FC", "points": 16, "played": 30, "won": 4, "drawn": 4, "lost": 10, "goals_for": 22, "goals_against": 40},
        {"position": 13, "team_id": 14, "team_name": "Huracán FC", "points": 14, "played": 30, "won": 3, "drawn": 5, "lost": 10, "goals_for": 20, "goals_against": 41},
        {"position": 14, "team_id": 15, "team_name": "Tornados Deportivos", "points": 12, "played": 30, "won": 2, "drawn": 6, "lost": 10, "goals_for": 19, "goals_against": 39},
        {"position": 15, "team_id": 13, "team_name": "Relámpagos SC", "points": 10, "played": 30, "won": 2, "drawn": 4, "lost": 12, "goals_for": 17, "goals_against": 44},
        {"position": 16, "team_id": 16, "team_name": "Gladiadores FC", "points": 8, "played": 30, "won": 1, "drawn": 5, "lost": 12, "goals_for": 15, "goals_against": 42}
    ]'::jsonb,
    -- Top Scorers (JSON)
    '[
        {"player_id": 25, "player_name": "Flecha", "team_id": 5, "team_name": "Águilas Reales", "goals": 18},
        {"player_id": 20, "player_name": "Roca", "team_id": 5, "team_name": "Águilas Reales", "goals": 15},
        {"player_id": 1, "player_name": "Cerebro", "team_id": 1, "team_name": "Los Halcones FC", "goals": 14},
        {"player_id": 3, "player_name": "El Tanque", "team_id": 3, "team_name": "Estrellas Doradas", "goals": 13},
        {"player_id": 11, "player_name": "El Tanque", "team_id": 1, "team_name": "Los Halcones FC", "goals": 12},
        {"player_id": 8, "player_name": "Rayo", "team_id": 3, "team_name": "Estrellas Doradas", "goals": 11},
        {"player_id": 30, "player_name": "Cerebro", "team_id": 5, "team_name": "Águilas Reales", "goals": 10},
        {"player_id": 143, "player_name": "Cazador", "team_id": 8, "team_name": "Dragones FC", "goals": 9}
    ]'::jsonb,
    -- Top Assistants (JSON)
    '[
        {"player_id": 1, "player_name": "Cerebro", "team_id": 1, "team_name": "Los Halcones FC", "assists": 15},
        {"player_id": 25, "player_name": "Flecha", "team_id": 5, "team_name": "Águilas Reales", "assists": 14},
        {"player_id": 8, "player_name": "Rayo", "team_id": 3, "team_name": "Estrellas Doradas", "assists": 12},
        {"player_id": 20, "player_name": "Roca", "team_id": 5, "team_name": "Águilas Reales", "assists": 11},
        {"player_id": 6, "player_name": "Magic", "team_id": 1, "team_name": "Los Halcones FC", "assists": 10},
        {"player_id": 15, "player_name": "Tormenta", "team_id": 5, "team_name": "Águilas Reales", "assists": 9},
        {"player_id": 143, "player_name": "Cazador", "team_id": 8, "team_name": "Dragones FC", "assists": 8}
    ]'::jsonb,
    -- Most Yellows (JSON)
    '[
        {"player_id": 39, "player_name": "General", "team_id": 14, "team_name": "Huracán FC", "yellow_cards": 8},
        {"player_id": 16, "player_name": "Tormenta", "team_id": 1, "team_name": "Los Halcones FC", "yellow_cards": 7},
        {"player_id": 34, "player_name": "Muro Infranqueable", "team_id": 4, "team_name": "Toros Salvajes", "yellow_cards": 7},
        {"player_id": 111, "player_name": "Pulpo", "team_id": 6, "team_name": "Leones del Sur", "yellow_cards": 6},
        {"player_id": 138, "player_name": "Muro Infranqueable", "team_id": 8, "team_name": "Dragones FC", "yellow_cards": 6},
        {"player_id": 44, "player_name": "Cazador", "team_id": 4, "team_name": "Toros Salvajes", "yellow_cards": 5}
    ]'::jsonb,
    -- Most Reds (JSON)
    '[
        {"player_id": 34, "player_name": "Muro Infranqueable", "team_id": 4, "team_name": "Toros Salvajes", "red_cards": 2},
        {"player_id": 116, "player_name": "Sniper", "team_id": 6, "team_name": "Leones del Sur", "red_cards": 1},
        {"player_id": 138, "player_name": "Muro Infranqueable", "team_id": 8, "team_name": "Dragones FC", "red_cards": 1},
        {"player_id": 143, "player_name": "Cazador", "team_id": 8, "team_name": "Dragones FC", "red_cards": 1},
        {"player_id": 39, "player_name": "General", "team_id": 14, "team_name": "Huracán FC", "red_cards": 1}
    ]'::jsonb,
    -- Champion Squad Stats (JSON) - Águilas Reales
    '[
        {"player_id": 5, "player_name": "Muro", "position": "MED", "goals": 5, "assists": 8, "yellow_cards": 2, "red_cards": 0, "matches_played": 28},
        {"player_id": 10, "player_name": "Magic", "position": "DEL", "goals": 6, "assists": 7, "yellow_cards": 1, "red_cards": 0, "matches_played": 26},
        {"player_id": 15, "player_name": "Tormenta", "position": "DEF", "goals": 2, "assists": 9, "yellow_cards": 3, "red_cards": 0, "matches_played": 30},
        {"player_id": 20, "player_name": "Roca", "position": "DEL", "goals": 15, "assists": 11, "yellow_cards": 2, "red_cards": 0, "matches_played": 29},
        {"player_id": 25, "player_name": "Flecha", "position": "MED", "goals": 18, "assists": 14, "yellow_cards": 1, "red_cards": 0, "matches_played": 30},
        {"player_id": 30, "player_name": "Cerebro", "position": "DEF", "goals": 10, "assists": 6, "yellow_cards": 4, "red_cards": 0, "matches_played": 27},
        {"player_id": 35, "player_name": "Halcón", "position": "GK", "goals": 0, "assists": 2, "yellow_cards": 1, "red_cards": 0, "matches_played": 25},
        {"player_id": 40, "player_name": "Fantasma", "position": "MED", "goals": 4, "assists": 5, "yellow_cards": 2, "red_cards": 0, "matches_played": 22},
        {"player_id": 45, "player_name": "Titan", "position": "DEF", "goals": 1, "assists": 3, "yellow_cards": 5, "red_cards": 0, "matches_played": 24},
        {"player_id": 50, "player_name": "Chispa", "position": "DEL", "goals": 7, "assists": 4, "yellow_cards": 1, "red_cards": 0, "matches_played": 18}
    ]'::jsonb
);

-- ============================================
-- TORNEO 7: Copa Indoor Invierno 2024 (F5) - FINALIZADO RECIENTEMENTE
-- ============================================
INSERT INTO tournament_recaps (
    tournament_id, 
    champion_team_id, 
    final_standings, 
    top_scorers, 
    top_assistants, 
    most_yellows, 
    most_reds, 
    champion_squad_stats
) VALUES
(
    7,  -- Torneo 7 (Copa Indoor Invierno 2024)
    20,  -- Campeón: Centauros Deportivos (team_id 20)
    -- Final Standings (JSON)
    '[
        {"position": 1, "team_id": 20, "team_name": "Centauros Deportivos", "points": 19, "played": 14, "won": 6, "drawn": 1, "lost": 1, "goals_for": 42, "goals_against": 24},
        {"position": 2, "team_id": 17, "team_name": "Espartanos United", "points": 17, "played": 14, "won": 5, "drawn": 2, "lost": 1, "goals_for": 38, "goals_against": 26},
        {"position": 3, "team_id": 19, "team_name": "Samuráis FC", "points": 15, "played": 14, "won": 4, "drawn": 3, "lost": 1, "goals_for": 35, "goals_against": 27},
        {"position": 4, "team_id": 16, "team_name": "Gladiadores FC", "points": 13, "played": 14, "won": 4, "drawn": 1, "lost": 3, "goals_for": 32, "goals_against": 30},
        {"position": 5, "team_id": 27, "team_name": "Gimnasia FC", "points": 10, "played": 14, "won": 3, "drawn": 1, "lost": 4, "goals_for": 28, "goals_against": 34},
        {"position": 6, "team_id": 26, "team_name": "Estudiantes LP", "points": 8, "played": 14, "won": 2, "drawn": 2, "lost": 4, "goals_for": 24, "goals_against": 32},
        {"position": 7, "team_id": 28, "team_name": "Ciudad de las Diagonales", "points": 5, "played": 14, "won": 1, "drawn": 2, "lost": 5, "goals_for": 20, "goals_against": 37},
        {"position": 8, "team_id": 18, "team_name": "Vikingos SC", "points": 3, "played": 14, "won": 1, "drawn": 0, "lost": 7, "goals_for": 18, "goals_against": 47}
    ]'::jsonb,
    -- Top Scorers (JSON)
    '[
        {"player_id": 160, "player_name": "Cerebro", "team_id": 20, "team_name": "Centauros Deportivos", "goals": 16},
        {"player_id": 142, "player_name": "General", "team_id": 17, "team_name": "Espartanos United", "goals": 14},
        {"player_id": 154, "player_name": "Pantera", "team_id": 19, "team_name": "Samuráis FC", "goals": 12},
        {"player_id": 165, "player_name": "Cañón", "team_id": 20, "team_name": "Centauros Deportivos", "goals": 10},
        {"player_id": 127, "player_name": "Cerebro", "team_id": 16, "team_name": "Gladiadores FC", "goals": 9},
        {"player_id": 152, "player_name": "Orquesta", "team_id": 17, "team_name": "Espartanos United", "goals": 8}
    ]'::jsonb,
    -- Top Assistants (JSON)
    '[
        {"player_id": 165, "player_name": "Cañón", "team_id": 20, "team_name": "Centauros Deportivos", "assists": 12},
        {"player_id": 160, "player_name": "Cerebro", "team_id": 20, "team_name": "Centauros Deportivos", "assists": 10},
        {"player_id": 137, "player_name": "Cazador", "team_id": 17, "team_name": "Espartanos United", "assists": 9},
        {"player_id": 154, "player_name": "Pantera", "team_id": 19, "team_name": "Samuráis FC", "assists": 8},
        {"player_id": 149, "player_name": "General", "team_id": 19, "team_name": "Samuráis FC", "assists": 7},
        {"player_id": 132, "player_name": "Muro Infranqueable", "team_id": 16, "team_name": "Gladiadores FC", "assists": 6}
    ]'::jsonb,
    -- Most Yellows (JSON)
    '[
        {"player_id": 132, "player_name": "Muro Infranqueable", "team_id": 16, "team_name": "Gladiadores FC", "yellow_cards": 6},
        {"player_id": 172, "player_name": "Ancla", "team_id": 17, "team_name": "Espartanos United", "yellow_cards": 5},
        {"player_id": 158, "player_name": "Orquesta", "team_id": 20, "team_name": "Centauros Deportivos", "yellow_cards": 4},
        {"player_id": 148, "player_name": "General", "team_id": 18, "team_name": "Vikingos SC", "yellow_cards": 4},
        {"player_id": 173, "player_name": "Diamante", "team_id": 18, "team_name": "Vikingos SC", "yellow_cards": 3},
        {"player_id": 178, "player_name": "Escudo", "team_id": 18, "team_name": "Vikingos SC", "yellow_cards": 3}
    ]'::jsonb,
    -- Most Reds (JSON)
    '[
        {"player_id": 172, "player_name": "Ancla", "team_id": 17, "team_name": "Espartanos United", "red_cards": 2},
        {"player_id": 148, "player_name": "General", "team_id": 18, "team_name": "Vikingos SC", "red_cards": 1},
        {"player_id": 158, "player_name": "Orquesta", "team_id": 20, "team_name": "Centauros Deportivos", "red_cards": 1},
        {"player_id": 178, "player_name": "Escudo", "team_id": 18, "team_name": "Vikingos SC", "red_cards": 1}
    ]'::jsonb,
    -- Champion Squad Stats (JSON) - Centauros Deportivos
    '[
        {"player_id": 160, "player_name": "Cerebro", "position": "DEL", "goals": 16, "assists": 10, "yellow_cards": 2, "red_cards": 0, "matches_played": 14},
        {"player_id": 165, "player_name": "Cañón", "position": "MED", "goals": 10, "assists": 12, "yellow_cards": 1, "red_cards": 0, "matches_played": 14},
        {"player_id": 155, "player_name": "Diamante", "position": "DEL", "goals": 7, "assists": 5, "yellow_cards": 2, "red_cards": 0, "matches_played": 13},
        {"player_id": 150, "player_name": "Ancla", "position": "DEF", "goals": 2, "assists": 4, "yellow_cards": 3, "red_cards": 0, "matches_played": 14},
        {"player_id": 145, "player_name": "Faro", "position": "GK", "goals": 0, "assists": 1, "yellow_cards": 0, "red_cards": 0, "matches_played": 12},
        {"player_id": 170, "player_name": "Pívot", "position": "DEF", "goals": 1, "assists": 2, "yellow_cards": 4, "red_cards": 0, "matches_played": 14},
        {"player_id": 175, "player_name": "Águila", "position": "MED", "goals": 3, "assists": 3, "yellow_cards": 1, "red_cards": 0, "matches_played": 10},
        {"player_id": 180, "player_name": "Trueno", "position": "MED", "goals": 3, "assists": 2, "yellow_cards": 0, "red_cards": 1, "matches_played": 8},
        {"player_id": 158, "player_name": "Orquesta", "position": "DEF", "goals": 0, "assists": 2, "yellow_cards": 4, "red_cards": 1, "matches_played": 12}
    ]'::jsonb
);

-- 16. Crear SEGUIMIENTOS (follows) de hinchas
-- Distribución: cada hincha sigue al menos 1 equipo, algunos siguen torneos y jugadores también

-- ============================================
-- FAN 1: Tomás Reyes (user_id 21) - Hincha de Los Halcones FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(21, NULL, 1, NULL),  -- Sigue al equipo Los Halcones FC
(21, 1, NULL, NULL),  -- Sigue el torneo Copa Amateur 2024
(21, NULL, NULL, 11); -- Sigue al jugador "El Tanque" (ídolo)

-- ============================================
-- FAN 2: Julieta Miranda (user_id 22) - Hincha de Ciclón Deportivo
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(22, NULL, 2, NULL),  -- Sigue al equipo Ciclón Deportivo
(22, 1, NULL, NULL),  -- Sigue el torneo Copa Amateur 2024
(22, NULL, NULL, 7);  -- Sigue al jugador "Pulpo"

-- ============================================
-- FAN 3: Ignacio Guerrero (user_id 23) - Hincha de Estrellas Doradas
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(23, NULL, 3, NULL),  -- Sigue al equipo Estrellas Doradas
(23, 2, NULL, NULL),  -- Sigue el torneo Torneo Relámpago F7
(23, NULL, NULL, 13); -- Sigue al jugador "Pulpo" de Estrellas

-- ============================================
-- FAN 4: Valentina Paz (user_id 24) - Hincha de Toros Salvajes
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(24, NULL, 4, NULL),  -- Sigue al equipo Toros Salvajes
(24, 1, NULL, NULL),  -- Sigue el torneo Copa Amateur 2024
(24, NULL, NULL, 34); -- Sigue al jugador "Muro Infranqueable"

-- ============================================
-- FAN 5: Matías Solís (user_id 25) - Hincha de Águilas Reales
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(25, NULL, 5, NULL),  -- Sigue al equipo Águilas Reales
(25, 4, NULL, NULL),  -- Sigue el torneo Liga Metropolitana 2023 (finalizado)
(25, NULL, NULL, 25); -- Sigue al jugador "Flecha" (goleador)

-- ============================================
-- FAN 6: Renata Vega (user_id 26) - Hincha de Leones del Sur
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(26, NULL, 6, NULL),  -- Sigue al equipo Leones del Sur
(26, 3, NULL, NULL),  -- Sigue el torneo Campeonato Indoor 2023
(26, NULL, NULL, 111); -- Sigue al jugador "Pulpo"

-- ============================================
-- FAN 7: Bruno Carmona (user_id 27) - Hincha de Tiburones Azules
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(27, NULL, 7, NULL),  -- Sigue al equipo Tiburones Azules
(27, 1, NULL, NULL),  -- Sigue el torneo Copa Amateur 2024
(27, NULL, NULL, 112); -- Sigue al jugador "Sniper"

-- ============================================
-- FAN 8: Antonella Lagos (user_id 28) - Hincha de Dragones FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(28, NULL, 8, NULL),  -- Sigue al equipo Dragones FC
(28, 2, NULL, NULL),  -- Sigue el torneo Torneo Relámpago F7
(28, NULL, NULL, 143); -- Sigue al jugador "Cazador"

-- ============================================
-- FAN 9: Emilio Bustos (user_id 29) - Hincha de Fénix United
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(29, NULL, 9, NULL),  -- Sigue al equipo Fénix United
(29, 8, NULL, NULL),  -- Sigue la Supercopa Nacional
(29, NULL, NULL, 114); -- Sigue al jugador "General"

-- ============================================
-- FAN 10: Catalina Tapia (user_id 30) - Hincha de Cóndores Andinos
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(30, NULL, 10, NULL), -- Sigue al equipo Cóndores Andinos
(30, 1, NULL, NULL),  -- Sigue el torneo Copa Amateur 2024
(30, NULL, NULL, 125); -- Sigue al jugador "Cerebro"

-- ============================================
-- FAN 11: Thiago Cáceres (user_id 31) - Hincha de Rayos Veloces
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(31, NULL, 11, NULL), -- Sigue al equipo Rayos Veloces
(31, 3, NULL, NULL),  -- Sigue el torneo Campeonato Indoor 2023
(31, NULL, NULL, 221); -- Sigue al jugador "Muro" (arquero)

-- ============================================
-- FAN 12: Florencia Sepúlveda (user_id 32) - Hincha de Truenos FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(32, NULL, 12, NULL), -- Sigue al equipo Truenos FC
(32, 6, NULL, NULL),  -- Sigue el torneo Intermedia F9 (juvenil)
(32, NULL, NULL, 222); -- Sigue al jugador "Flecha"

-- ============================================
-- FAN 13: Bautista Godoy (user_id 33) - Hincha de Relámpagos SC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(33, NULL, 13, NULL), -- Sigue al equipo Relámpagos SC
(33, 2, NULL, NULL),  -- Sigue el torneo Torneo Relámpago F7
(33, NULL, NULL, 13); -- Sigue al jugador "El Tanque"

-- ============================================
-- FAN 14: Luciana Venegas (user_id 34) - Hincha de Huracán FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(34, NULL, 14, NULL), -- Sigue al equipo Huracán FC
(34, 2, NULL, NULL),  -- Sigue el torneo Torneo Relámpago F7
(34, NULL, NULL, 29); -- Sigue al jugador "Roca"

-- ============================================
-- FAN 15: Dylan Zúñiga (user_id 35) - Hincha de Tornados Deportivos
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(35, NULL, 15, NULL), -- Sigue al equipo Tornados Deportivos
(35, 5, NULL, NULL),  -- Sigue el torneo Copa Verano 2025 (futuro)
(35, NULL, NULL, 40); -- Sigue al jugador "General"

-- ============================================
-- FAN 16: Agustina Maldonado (user_id 36) - Hincha de Gladiadores FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(36, NULL, 16, NULL), -- Sigue al equipo Gladiadores FC
(36, 7, NULL, NULL),  -- Sigue el torneo Copa Indoor Invierno 2024
(36, NULL, NULL, 136); -- Sigue al jugador "Roca"

-- ============================================
-- FAN 17: Axel Olivares (user_id 37) - Hincha de Espartanos United
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(37, NULL, 17, NULL), -- Sigue al equipo Espartanos United
(37, 7, NULL, NULL),  -- Sigue el torneo Copa Indoor Invierno 2024
(37, NULL, NULL, 142); -- Sigue al jugador "General"

-- ============================================
-- FAN 18: Emma Contreras (user_id 38) - Hincha de Vikingos SC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(38, NULL, 18, NULL), -- Sigue al equipo Vikingos SC
(38, 2, NULL, NULL),  -- Sigue el torneo Torneo Relámpago F7
(38, NULL, NULL, 168); -- Sigue al jugador "Escudo"

-- ============================================
-- FAN 19: Facundo Aravena (user_id 39) - Hincha de Samuráis FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(39, NULL, 19, NULL), -- Sigue al equipo Samuráis FC
(39, 7, NULL, NULL),  -- Sigue el torneo Copa Indoor Invierno 2024
(39, NULL, NULL, 154); -- Sigue al jugador "Pantera"

-- ============================================
-- FAN 20: Isidora Salinas (user_id 40) - Hincha de Centauros Deportivos
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(40, NULL, 20, NULL), -- Sigue al equipo Centauros Deportivos (campeón)
(40, 7, NULL, NULL),  -- Sigue el torneo Copa Indoor Invierno 2024
(40, NULL, NULL, 160); -- Sigue al jugador "Cerebro" (goleador)

-- ============================================
-- FAN 21: Lorenzo Alarcón (user_id 41) - Hincha de Atlántico FC (equipo no registrado)
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(41, NULL, 21, NULL), -- Sigue al equipo Atlántico FC
(41, 3, NULL, NULL),  -- Sigue el torneo Campeonato Indoor 2023
(41, NULL, NULL, 306); -- Sigue al jugador "Futuro"

-- ============================================
-- FAN 22: Maite Parra (user_id 42) - Hincha de Marinos Club (equipo no registrado)
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(42, NULL, 22, NULL), -- Sigue al equipo Marinos Club
(42, 3, NULL, NULL),  -- Sigue el torneo Campeonato Indoor 2023
(42, NULL, NULL, 312); -- Sigue al jugador "Coraje"

-- ============================================
-- FAN 23: Nicolás Acevedo (user_id 43) - Hincha de Delfines MDQ (equipo no registrado)
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(43, NULL, 23, NULL), -- Sigue al equipo Delfines MDQ
(43, 3, NULL, NULL),  -- Sigue el torneo Campeonato Indoor 2023
(43, NULL, NULL, 322); -- Sigue al jugador "Amistad"

-- ============================================
-- FAN 24: Sofía Gallegos (user_id 44) - Hincha de Estudiantes LP
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(44, NULL, 26, NULL), -- Sigue al equipo Estudiantes LP
(44, 5, NULL, NULL),  -- Sigue el torneo Copa Verano 2025
(44, NULL, NULL, 270); -- Sigue a un jugador de Estudiantes

-- ============================================
-- FAN 25: Joaquín Riquelme (user_id 45) - Hincha de Gimnasia FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(45, NULL, 27, NULL), -- Sigue al equipo Gimnasia FC
(45, 7, NULL, NULL),  -- Sigue el torneo Copa Indoor Invierno 2024
(45, NULL, NULL, 280); -- Sigue a un jugador de Gimnasia

-- ============================================
-- FAN 26: Martina Barrientos (user_id 46) - Hincha de Ciudad de las Diagonales
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(46, NULL, 28, NULL), -- Sigue al equipo Ciudad de las Diagonales
(46, 7, NULL, NULL),  -- Sigue el torneo Copa Indoor Invierno 2024
(46, NULL, NULL, 290); -- Sigue a un jugador de Ciudad de las Diagonales

-- ============================================
-- FAN 27: Benjamín Carrasco (user_id 47) - Hincha de Bosques FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(47, NULL, 29, NULL), -- Sigue al equipo Bosques FC
(47, 9, NULL, NULL),  -- Sigue el torneo Copa Inclusiva 2024 (F7 mixto)
(47, NULL, NULL, 300); -- Sigue a un jugador de Bosques FC

-- ============================================
-- FAN 28: Amanda Pizarro (user_id 48) - Hincha de Platenses Unidos
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(48, NULL, 30, NULL), -- Sigue al equipo Platenses Unidos
(48, 9, NULL, NULL),  -- Sigue el torneo Copa Inclusiva 2024
(48, NULL, NULL, 310); -- Sigue a un jugador de Platenses Unidos

-- ============================================
-- FAN 29: Vicente Espinoza (user_id 49) - Hincha de Tucumán FC
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(49, NULL, 31, NULL), -- Sigue al equipo Tucumán FC
(49, 6, NULL, NULL),  -- Sigue el torneo Intermedia F9 (juvenil)
(49, NULL, NULL, 320); -- Sigue a un jugador de Tucumán FC

-- ============================================
-- FAN 30: Antonia Valdivia (user_id 50) - Hincha de Los Alisos
-- ============================================
INSERT INTO follows (user_id, tournament_id, team_id, player_id) VALUES
(50, NULL, 32, NULL), -- Sigue al equipo Los Alisos
(50, 6, NULL, NULL),  -- Sigue el torneo Intermedia F9 (juvenil)
(50, NULL, NULL, 330), -- Sigue a un jugador de Los Alisos
(50, 8, NULL, NULL);  -- También sigue la Supercopa Nacional (playoff importante)