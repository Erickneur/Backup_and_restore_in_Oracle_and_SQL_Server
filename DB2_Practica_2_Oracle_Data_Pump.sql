--------------------------
-- Data Pump --
--------------------------

-- Exec SQLPlus and enter: SHOW user; 

-- Grant Data Pump privileges
GRANT datapump_exp_full_database TO db2_practica_2;

--------------------------
-- Export full database --
--------------------------

-- Create dir with a existing location
CREATE DIRECTORY orcl_full AS '/home/oracle/db2/db2_p2/full_export';

-- If not is a dedicated user, grant privileges
GRANT read, write ON DIRECTORY orcl_full TO db2_practica_2;

-- Go to bash and exec: expdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = orcl_fullDUMPFILE=orclfull.dmp    LOGFILE=full_exp.log    FULL=YES;

-----------------------
-- Export tablespace --
-----------------------

-- Show all tablespace
SELECT name FROM v$tablespace;

-- Create dir with a existing location
CREATE DIRECTORY exp_tblsp AS '/home/oracle/db2/db2_p2/tablespace_export';

-- If not is a dedicated user, grant privileges
GRANT read, write ON DIRECTORY exp_tblsp TO db2_practica_2;

-- Go to bash and exec: expdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = exp_tblsp DUMPFILE=tablespace.dmp    LOGFILE = tblsp_log.log    TABLESPACES = USERS,TEMP;

-------------------
-- Export schema --
-------------------

-- Show users
SELECT * FROM dba_users;

-- Create dir with a existing location
CREATE DIRECTORY exp_schema AS '/home/oracle/db2/db2_p2/schema_export';

-- If not is a dedicated user, grant privileges
GRANT read, write ON DIRECTORY exp_schema TO db2_practica_2;

-- Go to bash and exec: expdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = exp_schema DUMPFILE=exp_schm.dmp    LOGFILE = exp_schm.log    SCHEMAS = db2_practica_2;

-------------------
-- Export tables --
-------------------

-- Create dir with a existing location
CREATE DIRECTORY exp_table AS '/home/oracle/db2/db2_p2/table_export';

-- If not is a dedicated user, grant privileges
GRANT read, write ON DIRECTORY table_schema TO db2_practica_2;

-- Go to bash and exec: expdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = exp_table DUMPFILE=db2_practica_2_table.dmp    LOGFILE = table_lg.log    TABLES = jugador,equipo;
-- Alternative: make PARFILE and exec: expdp    db2_practica_2/db2_practica_2@ORCLCDB    PARFILE = '/home/oracle/db2/table.par'

-------------------------------------------------
-- Import and rename tables in the same scheme --
-------------------------------------------------

-- Show data in tables
SELECT * FROM jugador;
SELECT * FROM equipo;

-- Drop table
DROP TABLE jugador;
-- DROP SEQUENCE jugador_jugador_id_seq;
-- CREATE SEQUENCE jugador_jugador_id_seq START WITH 1 NOCACHE ORDER;

-- Go to bash and exec: impdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = exp_table DUMPFILE=db2_practica_2_table.dmp    LOGFILE = table_lg.log    TABLES = jugador

-- Show data in tables again
SELECT * FROM jugador;

-- Rename exported table
-- Go to bash and exec: impdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = exp_table DUMPFILE=db2_practica_2_table.dmp    LOGFILE = table_lg.log    TABLES = jugador    REMAP_TABLE = db2_practica_2.jugador:jugador_copy
-- Go to bash and exec: impdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = exp_table DUMPFILE=db2_practica_2_table.dmp    LOGFILE = table_lg.log    TABLES = jugador,equipo    REMAP_TABLE = db2_practica_2.jugador:jugador_copy,db2_practica_2.equipo:equipo_copy

-- Show data in tables again
SELECT * FROM jugador_copy;
SELECT * FROM equipo_copy;

DROP TABLE jugador_copy;
DROP TABLE equipo_copy;

-----------------------------------
-- Import tables in other scheme --
-----------------------------------

-- Go to bash and exec: impdp    db2_practica_2_equipos/db2_practica_2@ORCLCDB    DIRECTORY = exp_table DUMPFILE=db2_practica_2_table.dmp    LOGFILE = table_lg.log    TABLES = 'db2_practica_2.jugador','db2_practica_2.equipo'    REMAP_SCHEMA = db2_practica_2:db2_practica_2_equipos
-- Go to bash and exec: impdp    db2_practica_2_equipos/db2_practica_2@ORCLCDB    DIRECTORY = exp_table DUMPFILE=db2_practica_2_table.dmp    LOGFILE = table_lg.log    REMAP_SCHEMA = db2_practica_2:db2_practica_2_equipos

---------------------------------------------------------
-- Export jugador and equipo tables without data --
---------------------------------------------------------

-- Create dir with a existing location
CREATE DIRECTORY exp_db2_practica_2_equipos AS '/home/oracle/db2/db2_p2/db2_p2_equipos';

-- If not is a dedicated user, grant privileges
GRANT read, write ON DIRECTORY exp_db2_practica_2_equipos TO db2_practica_2;

-- Go to bash and exec: expdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = exp_db2_practica_2_equipos DUMPFILE = db2_practica_2_equipos.dmp    LOGFILE = db2_practica_2_equipos.log    TABLES = jugador,equipo    CONTENT=metadata_only

------------------------------------------------------------------------------------
-- Import jugador and equipo tables in db2_practica_2_equipos scheme without data --
------------------------------------------------------------------------------------

-- Go to bash and exec: impdp    db2_practica_2_equipos/db2_practica_2@ORCLCDB    DIRECTORY = exp_db2_practica_2_equipos DUMPFILE=db2_practica_2_equipos.dmp    LOGFILE = db2_practica_2_equipos.log    TABLES = 'db2_practica_2.jugador','db2_practica_2.equipo'    REMAP_SCHEMA = db2_practica_2:db2_practica_2_equipos

----------------------------------------------
-- Export liga and jornada tables with data --
----------------------------------------------

-- Create dir with a existing location
CREATE DIRECTORY exp_db2_practica_2_jornadas AS '/home/oracle/db2/db2_p2/db2_p2_jornadas';

-- If not is a dedicated user, grant privileges
GRANT read, write ON DIRECTORY exp_db2_practica_2_jornadas TO db2_practica_2;

-- Go to bash and exec: expdp    db2_practica_2/db2_practica_2@ORCLCDB    DIRECTORY = exp_db2_practica_2_jornadas DUMPFILE = db2_practica_2_jornadas.dmp    LOGFILE = db2_practica_2_jornadas.log    TABLES = liga,jornada

--------------------------------------------------------------------------------
-- Import liga and jornada tables in db2_practica_2_jornadas scheme with data --
--------------------------------------------------------------------------------

-- Go to bash and exec: impdp    db2_practica_2_jornadas/db2_practica_2@ORCLCDB    DIRECTORY = exp_db2_practica_2_jornadas DUMPFILE=db2_practica_2_jornadas.dmp    LOGFILE = db2_practica_2_jornadas.log    TABLES = 'db2_practica_2.liga','db2_practica_2.jornada'    REMAP_SCHEMA = db2_practica_2:db2_practica_2_jornadas


