-- Liga
INSERT INTO liga (liga_nombre, liga_fecha_inicio, liga_fecha_fin) VALUES ('liga1', TO_DATE('2019/01/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2019/12/31 23:59:59', 'yyyy/mm/dd hh24:mi:ss'));

-- Jornada
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (1, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (2, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (3, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (4, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (5, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (6, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (7, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (8, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (9, 1);
INSERT INTO jornada (jornada_numero, Liga_liga_id) VALUES (10, 1);

-- Equipo
INSERT INTO equipo (equipo_nombre) VALUES ('equipo_1');
INSERT INTO equipo (equipo_nombre) VALUES ('equipo_2');
INSERT INTO equipo (equipo_nombre) VALUES ('equipo_3');
INSERT INTO equipo (equipo_nombre) VALUES ('equipo_4');

-- Partido
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/01/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 0, 0, 1, 1, 2);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/01/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 0, 1, 1, 1, 3);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/02/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 0, 2, 2, 1, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/02/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 0, 2, 2, 3);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/03/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 1, 3, 2, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/03/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 2, 3, 3, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/04/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 0, 4, 1, 2);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/04/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 1, 4, 1, 3);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/05/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 2, 5, 1, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/05/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 0, 0, 5, 2, 3);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/06/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 0, 1, 6, 2, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/06/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 0, 2, 6, 3, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/07/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 0, 7, 1, 2);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/07/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 1, 7, 1, 3);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/08/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 2, 8, 1, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/08/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 0, 8, 2, 3);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/09/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 1, 9, 2, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/09/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 2, 9, 3, 4);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/10/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 0, 0, 10, 1, 2);
INSERT INTO partido (partido_fecha, partido_goles_local, partido_goles_visita, Jornada_jornada_id, Equipo_equipo_id, Equipo_equipo_id2) VALUES (TO_DATE('2019/10/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 0, 1, 10, 3, 4);

-- Jugador - Equipo 1
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_1', 5, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_2', 1, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_3', 2, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_4', 1, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_5', 0, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_6', 0, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_7', 0, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_8', 0, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_9', 0, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_10', 0, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_11', 0, 1, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_12', 0, 1, 1);

-- Jugador - Equipo 2
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_2_1', 5, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_2_2', 1, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_2_3', 2, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_4', 1, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_5', 0, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_6', 0, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_7', 0, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_8', 0, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_9', 0, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_10', 0, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_11', 0, 2, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_1_12', 0, 2, 1);

-- Jugador - Equipo 3
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_1', 5, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_2', 1, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_3', 2, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_4', 1, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_5', 0, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_6', 0, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_7', 0, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_8', 0, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_9', 0, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_10', 0, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_11', 0, 3, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_3_12', 0, 3, 1);

-- Jugador - Equipo 4
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_1', 5, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_2', 1, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_3', 2, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_4', 2, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_5', 0, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_6', 0, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_7', 0, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_8', 0, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_9', 0, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_10', 0, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_11', 0, 4, 1);
INSERT INTO jugador (jugador_nombre, jugador_goles, Equipo_equipo_id, Liga_liga_id) VALUES ('jugador_4_12', 0, 4, 1);

-- Show data
SELECT * FROM liga;
SELECT * FROM jornada;
SELECT * FROM equipo;
SELECT * FROM partido;
SELECT * FROM jugador;