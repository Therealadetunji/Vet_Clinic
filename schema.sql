/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
     animal_name TEXT,
     DATE_OF_BIRTH DATE,
     ESCAPE_ATTEMPTS INT,
     NEUTERED BIT,
     WEIGHT_KG DECIMAL,
     PRIMARY KEY (id)
);

ALTER TABLE animals ADD species varchar(250);


