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

SELECT animal_name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT animal_name FROM animals INNER JOIN species ON animals.species_id = species.id WHERE species.name ='Pokemon';
SELECT species.name, COUNT(animals.animal_name) FROM animals INNER JOIN species ON animals.species_id = species_id GROUP BY species.name;
SELECT animals.animal_name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Jennifer Orwell';
SELECT owners.full_name, COUNT(animals.animal_name) FROM owners LEFT JOIN animals ON owners.id = animals.owner_id GROUP BY owners.full_name ORDER BY COUNT(animals.animal_name) DESC;


SELECT animals.animal_name FROM animals INNER JOIN visits ON visits.animal_name = animals.animal_name WHERE visits.name = 'William Tatcher' ORDER BY date_of_visit DESC LIMIT 1;
SELECT COUNT(animals.animal_name) FROM animals INNER JOIN visits ON visits.animal_name = animals.animal_name WHERE visits.name = 'Stephanie Mendez' ;
SELECT animals.animal_name FROM animals INNER JOIN visits ON visits.animal_name = animals.animal_name WHERE visits.name = 'Stephanie Mendez' AND visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';
SELECT animals.animal_name FROM animals INNER JOIN visits ON visits.animal_name = animals.animal_name WHERE visits.name = 'Maisy Smith' ORDER BY visits.date_of_visit ASC LIMIT 1;
SELECT COUNT(visits.animal_name), specialities.vet_name FROM visits JOIN animals ON visits.animal_name = animals.animal_name JOIN specialities ON animals.species_id = specialities.species_id WHERE visits.name = 'Maisy Smith' GROUP BY specialities.vet_name ORDER BY COUNT (animals.animal_name) DESC LIMIT 1;