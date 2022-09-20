/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE animal_name LIKE '%mon%';
SELECT * FROM animals WHERE neutered = '1' AND escape_attempts < 3;
SELECT * FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = '1';
SELECT * FROM animals WHERE animal_name IN ('Agumon', 'Pikachu', 'Devimon');
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;
