
CREATE TABLE owners(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  city TEXT,
  phone_number VARCHAR(25)
);

CREATE TABLE animals(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  breed VARCHAR(255),
  admission_date VARCHAR(255),
  status VARCHAR(255)
  );
