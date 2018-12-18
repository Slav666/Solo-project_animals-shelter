DROP TABLE animals;
DROP TABLE owners;


CREATE TABLE owners(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  city TEXT,
  phone_number INT8
);

CREATE TABLE animals(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  breed VARCHAR(255),
  admission_date VARCHAR(255) ,
  ready_adoption  BOOLEAN,
  owner_id INT8 REFERENCES owners(id)
  );
