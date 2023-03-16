USE adlister_db;

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS ads;

CREATE TABLE user (
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                      username VARCHAR(55) NOT NULL,
                      email VARCHAR(55) NOT NULL,
                      password VARCHAR(55) NOT NULL
);



CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR(55) NOT NULL,
                     description VARCHAR(255) NOT NULL,
                     FOREIGN KEY (user_id) REFERENCES user (id)
);


