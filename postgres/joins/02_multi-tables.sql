USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

CREATE TABLE users(
  id SERIAL PRIMARY KEY UNIQUE NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE posts(
  id SERIAL PRIMARY KEY UNIQUE NOT NULL,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,

  user_id INT,
  FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments(
  id SERIAL PRIMARY KEY UNIQUE NOT NULL,
  comment_date TIMESTAMP NOT NULL,
  comment_content TEXT NOT NULL,

  post_id INT,
  FOREIGN KEY(post_id) REFERENCES posts(id)
);

-- Insert values

INSERT INTO users(name, email) VALUES
  ('Kayley', 'Jacinthe.Powlowski@hotmail.com'),
  ('Leslie', 'Taya61@gmail.com'),
  ('Zelma', 'Abdul_Wintheiser@yahoo.com');

INSERT INTO posts(title, content, user_id) VALUES
  ('nam', 'Commodi quis quasi quaerat temporibus.', (SELECT id FROM users WHERE name = 'Kayley')),
  ('placeat', 'Et dolores laudantium ea consequatur a debitis repudiandae sit.', (SELECT id FROM users WHERE name = 'Leslie')),
  ('vel', 'Recusandae commodi voluptas sunt eum.', (SELECT id FROM users WHERE name = 'Zelma'));

INSERT INTO comments(comment_date, comment_content, post_id) VALUES
  (current_timestamp, 'Dolor qui laudantium et aperiam dolor et dolor consequuntur.', (SELECT id FROM posts WHERE title = 'nam')),
  (current_timestamp, 'Voluptate quia odit molestiae quos ut fugit aliquid dolor.', (SELECT id FROM posts WHERE title = 'placeat')),
  (current_timestamp, 'Itaque qui voluptatem ut sint quia nisi cum eaque.', (SELECT id FROM posts WHERE title = 'vel'));

SELECT * FROM users;
SELECT * FROM posts;
SELECT * FROM comments;

SELECT * FROM users
  INNER JOIN posts ON users.id = posts.user_id
  INNER JOIN comments ON posts.id = comments.post_id;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
