CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE rehearsals (
  id SERIAL PRIMARY KEY,
  datetime TIMESTAMP NOT NULL,
  location VARCHAR(255),
  created_by INTEGER REFERENCES users(id)
);
CREATE TABLE attendance (
  id SERIAL PRIMARY KEY,
  rehearsal_id INTEGER REFERENCES rehearsals(id),
  user_id INTEGER REFERENCES users(id),
  status VARCHAR(20)
);