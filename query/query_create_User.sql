DROP TABLE IF EXISTS user;

CREATE TABLE user (
    id_user int AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(15) NOT NULL 
);
