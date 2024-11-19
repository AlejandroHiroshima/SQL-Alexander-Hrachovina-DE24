-- DDL Data definition language
CREATE SCHEMA IF NOT EXISTS database;

SELECT * FROM information_schema.schemata;
-- Skapar en sekvens som innehåller värde, startar från 1
CREATE SEQUENCE IF NOT EXISTS id_duckdb_sequence START 1;

SELECT * FROM pg_catalog.pg_sequences;
-- skapar tabell i schema database, så tabellen hamnar inte under main, utan under database
CREATE TABLE IF NOT EXISTS database.duckdb (
	id INTEGER DEFAULT nextval('id_duckdb_sequence'), -- DEFAULT är värdet som skrivs om man inte specar värde själv
	word STRING, --STRING, VARCHAR eller TEXT spelar ingen större roll
	description STRING
);

CREATE TABLE IF NOT EXISTS database.sql (
	word STRING,
	description STRING);

CREATE SCHEMA IF NOT EXISTS programming; -- SKAPAR NYTT SCHEMA


CREATE TABLE IF NOT EXISTS programming.python ( -- SKAPAR NY TABELL (PYTHON) I DEN NYA SCHEMAT VI SKAPADE OVAN
	word STRING,
	description STRING);
	
CREATE TABLE IF NOT EXISTS programming.c_sharp ( -- -- SKAPAR NY TABELL (CSHARP) I DEN NYA SCHEMAT VI SKAPADE OVAN
	word STRING,
	description STRING);