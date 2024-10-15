-- Intermediate SQL Queries for the Countries Table
-- Aggregation, grouping, subqueries, filtering, and different SQL functions

-- 1. Retrieve the distinct number of continents.
SELECT DISTINCT Continent
FROM Countries;

-- 2. Get countries with a population greater than 10 million and their rank by population.
SELECT CountryName, Population, RANK() OVER (ORDER BY Population DESC) AS PopulationRank
FROM Countries
WHERE Population > 10;

-- 3. Select the smallest country by population per continent.
SELECT CountryName, Population, Continent
FROM Countries AS c
WHERE Population = (
    SELECT MIN(Population)
    FROM Countries
    WHERE Continent = c.Continent
)
ORDER BY Continent;

-- 4. List countries whose phone code starts with '3'.
SELECT CountryName, PhoneCode
FROM Countries
WHERE PhoneCode LIKE '+3%';

-- 5. Count all the countries that do not use 'Euro' or 'Dollar' as currency.
SELECT COUNT(*) AS CountryCount
FROM Countries
WHERE Currency <> 'Euro' AND Currency <> 'Dollar';

-- 6. Select countries where population is between 1 and 10 million.
SELECT CountryName, Population
FROM Countries
WHERE Population BETWEEN 1 AND 10;

-- 7. Find countries and the continent where the population is within 90% of the highest population (greater than 144.10 mln)
SELECT CountryName, Continent, Population
FROM Countries
WHERE Population >= (SELECT MAX(Population) * 0.1 FROM Countries);

-- 8. Get the number of countries on each continent with number of countries greater than 30
SELECT Continent, COUNT(CountryName) AS NumberOfCountries
FROM Countries
GROUP BY Continent
HAVING COUNT(CountryName) > 30;



