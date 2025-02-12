CREATE USER 'user1'@'localhost' IDENTIFIED BY 'user1';

GRANT SELECT, INSERT, UPDATE ON loki.* TO 'user1'@'localhost';

GRANT ALL PRIVILEGES ON loki.* TO 'user1'@'localhost';

REVOKE INSERT, UPDATE ON loki.* FROM 'user1'@'localhost';

DROP USER 'user1'@'localhost';

