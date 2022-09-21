/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE animal_name LIKE '%mon%';
SELECT * FROM animals WHERE neutered = '1' AND escape_attempts < 3;
SELECT * FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = '1';
SELECT * FROM animals WHERE animal_name IN ('Agumon', 'Pikachu', 'Devimon');
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

-- transactions
BEGIN UPDATE animals SET species = 'digimon' WHERE animal_name LIKE '%mon%';
BEGIN UPDATE animals SET species = 'pokemon' WHERE animal_name IN ('Pikachu', 'Charmander', 'Squirtle', 'Blossom', 'Ditto');
BEGIN DELETE FROM animals;
SAVEPOINT after_jan22;
ROLLBACK TO after_jan22;
BEGIN UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg = -5.7;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg = -45;
UPDATE animals SET WHERE weight_kg = -11;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg = -12.13;
COMMIT;

SELECT COUNT(animal_name) FROM animals;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals GROUP BY neutered; -- results show that neutered animals have higher escape attempts.
SELECT MIN(weight_kg) FROM animals WHERE species LIKE '%poke%';
SELECT MAX(weight_kg) FROM animals WHERE species LIKE '%poke%';
SELECT MIN(weight_kg) FROM animals WHERE species LIKE '%digi%';
SELECT MAX(weight_kg) FROM animals WHERE species LIKE '%digi%';
