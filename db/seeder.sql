USE adlister_db;


INSERT INTO user (id, username, email, password) values
(2, 'username2', 'email2@email.com', 'password12345');

INSERT INTO ads (user_id, title, description) values
(2, 'This amazing title', 'An amazing description');

