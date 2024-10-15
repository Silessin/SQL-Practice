-- Basic Queries for the Countries table

-- 1. Select all countries
SELECT * FROM Countries;

-- 2. Select country names and capitals
SELECT CountryName, Capital FROM Countries;

-- 3. Find countries in Europe
SELECT CountryName FROM Countries WHERE Continent = 'Europe';

-- 4. Count the number of countries
SELECT COUNT(*) FROM Countries;

-- 5. Find countries with a population greater than 50 million
SELECT CountryName, Population FROM Countries WHERE Population > 50;

-- 6. Get the average population of all countries
SELECT AVG(Population) FROM Countries;

-- 7. Get the highest population of all countries
SELECT MAX(Population) FROM Countries;

-- 8. List all the unique currencies of the countries
SELECT DISTINCT Currency FROM Countries;

-- 9. Find the country with the highest population
SELECT CountryName, Population FROM Countries ORDER BY Population DESC LIMIT 1;
