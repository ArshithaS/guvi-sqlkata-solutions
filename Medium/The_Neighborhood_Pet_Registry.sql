/*
Problem: The Neighborhood Pet Registry
Difficulty: Medium
Platform: HCL GUVI SQLKata

Q1: Count the total number of registered pets.
Q2: Find Fluffy's current age.
Q3: Update Buddy's age to 6 and display Buddy's details.
Q4: Add Shelly to the registry and display Grace's pets.
*/

-- Q1
SELECT COUNT(*) AS total_pets
FROM pets;

-- Q2
SELECT age
FROM pets
WHERE pet_name = 'Fluffy';

-- Q3
UPDATE pets
SET age = 6
WHERE pet_name = 'Buddy';

SELECT *
FROM pets
WHERE pet_name = 'Buddy';

-- Q4
INSERT INTO pets (id, pet_name, species, age, owner)
VALUES (6, 'Shelly', 'Turtle', 10, 'Grace');

SELECT *
FROM pets
WHERE owner = 'Grace';
