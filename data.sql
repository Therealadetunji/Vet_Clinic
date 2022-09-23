/* Populate database with sample data. */

INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', date '2020-02-03', 0, '1', 10.23);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', date '2018-11-15', 2, '1', 8);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', date '2021-01-7', 1, '0', 15.04);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', date '2017-05-12', 5, '1', 11);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', date '2020-02-08', 0, '0', -11);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', date '2021-12-15', 2, '1', -5.7);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle', date '1993-04-02', 3, '0', -12.13);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', date '2005-06-12', 1, '1', -45);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', date '2005-06-07', 7, '1', 20.4);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', date '1998-10-13', 3, '1', 17);
INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditto', date '2022-05-14', 4, '1', 22);


INSERT INTO owners (full_name, age) VALUES ('Sam smith', 34);
INSERT INTO owners ( full_name, age) VALUES ('Jennifer Orwell', 19); 
INSERT INTO owners ( full_name, age) VALUES ('Bob', 45); 
INSERT INTO owners ( full_name, age) VALUES ('Melody Pond', 77); 
INSERT INTO owners ( full_name, age) VALUES ('Dean Winchester', 14); 
INSERT INTO owners ( full_name, age) VALUES ('Jodie Whittaker', 38); 
INSERT INTO species ( name) VALUES ('Pokemon');
INSERT INTO species ( name) VALUES ('Digimon');

UPDATE animals SET species_id = 2 WHERE animal_name LIKE '%mon%';
UPDATE animals SET species_id = 1 WHERE animal_name IN ('Pikachu', 'Charmander', 'Squirtle', 'Blossom', 'Ditto');

UPDATE animals SET owner_id = 1 WHERE id = 1;
UPDATE animals SET owner_id = 2 WHERE id = 2 OR id = 3;
UPDATE animals SET owner_id = 3 WHERE id = 4 OR id = 6;
UPDATE animals SET owner_id = 4 WHERE id = 5 OR id = 7 OR id = 10;
UPDATE animals SET owner_id = 5 WHERE id = 8 OR id = 9;