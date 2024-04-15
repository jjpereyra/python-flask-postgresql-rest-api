-- Movies
--CREATE OR REPLACE FUNCTION sp_listMovies() RETURNS TABLE (id INT, name VARCHAR(20)) AS $$
--BEGIN
--    RETURN QUERY SELECT id, name FROM movies ORDER BY name ASC;
--END;
--$$ LANGUAGE plpgsql;

-- User
--CREATE OR REPLACE FUNCTION sp_addUser(pUsername VARCHAR(20), pPassword VARCHAR(20), pFullname VARCHAR(50)) RETURNS VOID AS $$
--BEGIN
--    INSERT INTO "user" (username, password, fullname)
--    VALUES (pUsername, crypt(pPassword, gen_salt('bf')), pFullname);
--END;
--$$ LANGUAGE plpgsql;

--CREATE OR REPLACE FUNCTION sp_verifyIdentity(pUsername VARCHAR(20), pPassword VARCHAR(20)) RETURNS TABLE (id INT, username VARCHAR(20), fullname VARCHAR(50)) AS $$
--BEGIN
--    RETURN QUERY SELECT id, username, fullname FROM "user" WHERE username = pUsername AND password = crypt(pPassword, password);
--END;
--$$ LANGUAGE plpgsql;
