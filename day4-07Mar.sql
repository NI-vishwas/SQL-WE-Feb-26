-- Creating a user
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'userpass1';
-- Giving Permissions
-- SELECT - Read ONLY
-- ALL - Permissions
-- INDERT, UPDATE, DELETE, DROP
GRANT SELECT ON demo.* TO 'user1'@'localhost';

-- Apply those permissions 
FLUSH PRIVILEGES;
-- Revoking the permissions
REVOKE SELECT ON demo.* FROM 'user1'@'localhost';
