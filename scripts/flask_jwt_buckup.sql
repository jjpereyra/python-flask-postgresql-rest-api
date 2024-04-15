-- phpPGAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2023 a las 03:54:55
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

--SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
--START TRANSACTION;
--SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flask_jwt`
--

-- Tabla movies
--CREATE TABLE IF NOT EXISTS movies (
--    id SERIAL PRIMARY KEY,
--    name VARCHAR(20) NOT NULL
--);

-- Datos de la tabla movies
--INSERT INTO movies (name) VALUES
--('Python'),
--('Java'),
--('C#'),
--('PHP'),
--('JavaScript'),
--('Kotlin');

-- Tabla user
--CREATE TABLE IF NOT EXISTS "user" (
--    id SERIAL PRIMARY KEY,
--    username VARCHAR(20) NOT NULL,
--    password VARCHAR(200) NOT NULL,
--    fullname VARCHAR(50) NOT NULL
--);

-- Datos de la tabla user
--INSERT INTO "user" (username, password, fullname) VALUES
--('USKOKRUM', crypt('password123', gen_salt('bf')), 'Oscar García');

-- Procedimientos

--CREATE OR REPLACE FUNCTION sp_addUser(pUsername VARCHAR(20), pPassword VARCHAR(20), pFullname VARCHAR(50)) RETURNS VOID AS $$
--BEGIN
--    INSERT INTO "user" (username, password, fullname)
--    VALUES (pUsername, crypt(pPassword, gen_salt('bf')), pFullname);
--END;
--$$ LANGUAGE plpgsql;

--CREATE OR REPLACE FUNCTION sp_listMovies() RETURNS TABLE (id SERIAL, name VARCHAR(20)) AS $$
--BEGIN
--    RETURN QUERY SELECT id, name FROM movies ORDER BY name ASC;
--END;
--$$ LANGUAGE plpgsql;

--CREATE OR REPLACE FUNCTION sp_verifyIdentity(pUsername VARCHAR(20), pPassword VARCHAR(20)) RETURNS TABLE (id INT, username VARCHAR(20), fullname VARCHAR(50)) AS $$
--BEGIN
--    RETURN QUERY SELECT id, username, fullname FROM "user" WHERE username = pUsername AND password = crypt(pPassword, password);
--END;
--$$ LANGUAGE plpgsql;

--COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
