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


CREATE TABLE owners (id INT GENERATED ALWAYS AS IDENTITY, FULL_NAME VARCHAR(250), AGE INT, PRIMARY KEY (id));
CREATE TABLE species (id INT GENERATED ALWAYS AS IDENTITY, NAME VARCHAR (250), PRIMARY KEY (id));
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species(ID);
ALTER TABLE animals ADD CONSTRAINT fk_owners FOREIGN KEY (owner_id) REFERENCES owners(ID);