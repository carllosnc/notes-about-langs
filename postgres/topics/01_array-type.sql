USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

DROP TABLE IF EXISTS accounts;

CREATE TABLE accounts (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v1(),
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phones TEXT[]
);

INSERT INTO accounts(name, email, phones) VALUES
  ('Cordell',  'Lela_Vandervort@yahoo.com', ARRAY['920-945-9011 x7548', '295-611-6359 x4413', '391-304-1728 x293']),
  ('Carroll',  'Lon21@gmail.com', ARRAY['(744) 843-3751 x8455', '227-685-2803', '(614) 319-4368']),
  ('Stephania',  'Hubert_Schuster@hotmail.com', ARRAY['(403) 942-4531', '1-455-769-7536 x118', '(872) 924-1073 x753']);

SELECT * FROM accounts;

SELECT phones[1] FROM accounts;
SELECT phones[2] FROM accounts;
SELECT phones[3] FROM accounts;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
