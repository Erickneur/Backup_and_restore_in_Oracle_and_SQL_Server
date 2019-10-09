---------------
-- As sys --
---------------

-- Show data
SELECT * FROM db2_practica_2.jugador;
SELECT * FROM db2_practica_2.equipos;
SELECT * FROM db2_practica_2.liga;
SELECT * FROM db2_practica_2.jornada;
SELECT * FROM db2_practica_2.partido;

-----------------------
-- As db2_practica_2 --
-----------------------

-- Show data
SELECT * FROM jugador;
SELECT * FROM equipos;
SELECT * FROM liga;
SELECT * FROM jornada;
SELECT * FROM partido;

-------------------------------
-- As db2_practica_2_equipos --
-------------------------------

-- Show description
DESC jugador;
DESC equipo;

-- Show data
SELECT * FROM jugador;
SELECT * FROM equipo;
SELECT j.jugador_nombre, e.equipo_nombre FROM jugador j, equipo e WHERE e.equipo_id = j.Equipo_equipo_id;

-- Remove tables
DROP TABLE jugador;
DROP TABLE equipo;

-- Before insert data, remove sequences and remake it
DROP SEQUENCE equipo_equipo_id_seq;
DROP SEQUENCE jugador_jugador_id_seq;
CREATE SEQUENCE equipo_equipo_id_seq START WITH 1 NOCACHE ORDER;
CREATE SEQUENCE jugador_jugador_id_seq START WITH 1 NOCACHE ORDER;

-- Insert data ...

--------------------------------
-- As db2_practica_2_jornadas --
-------------------------------

-- Show data
SELECT * FROM liga;
SELECT * FROM jornada;