USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE posts(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,

  user_id INT NOT NULL,
  FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO users(name, email) VALUES
  ('Isobel', 'Greta80@yahoo.com'),
  ('Patience', 'Norris51@hotmail.com'),
  ('Zoila', 'Mauricio.Moore@gmail.com');

INSERT INTO posts(title, content, user_id) VALUES
  /* 1 */
  ('eos impedit similique', 'molestiae exercitationem provident', (SELECT id FROM users WHERE name = 'Isobel')),
  ('soluta qui similique', 'deserunt dolor tempora', (SELECT id FROM users WHERE name = 'Isobel')),
  ('quidem sunt quod', 'velit dicta velit', (SELECT id FROM users WHERE name = 'Isobel')),

  /* 2 */
  ('molestiae voluptatum eos', 'harum explicabo cupiditate', (SELECT id FROM users WHERE name = 'Patience')),
  ('id hic magnam', 'aliquid rem et', (SELECT id FROM users WHERE name = 'Patience')),
  ('omnis accusamus et', 'quidem sit corrupti', (SELECT id FROM users WHERE name = 'Patience')),

  /* 3 */
  ('laboriosam et qui', 'non iure molestias', (SELECT id FROM users WHERE name = 'Zoila')),
  ('voluptatem laboriosam nesciunt', 'ut eos voluptates', (SELECT id FROM users WHERE name = 'Zoila')),
  ('repellendus nobis tenetur', 'distinctio laudantium sed', (SELECT id FROM users WHERE name = 'Zoila'));

SELECT * FROM users;
SELECT * FROM posts;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
