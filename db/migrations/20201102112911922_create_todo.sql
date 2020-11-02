-- +micrate Up
CREATE TABLE todos (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR,
  description VARCHAR,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS todos;
