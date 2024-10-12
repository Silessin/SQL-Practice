-- Intermediate SQL Queries for the Countries Table
-- Aggregation, grouping, subqueries, filtering, and different SQL functions

-- 1. Retrieve the distinct number of continents.
SELECT DISTINCT Continent
FROM Countries;

-- 2. Get countries with a population greater than 10 million and their rank by population.
SELECT CountryName, Population, RANK() OVER (ORDER BY Population DESC) AS PopulationRank
FROM Countries
WHERE Population > 10;

-- 3. Select countries ordered by population, skipping the top 3 largest.
SELECT CountryName, Population
FROM Countries
ORDER BY Population DESC
OFFSET 3 ROWS;

-- 4. Retrieve the median population across all countries (using window functions).
SELECT CountryName, Population, NTILE(2) OVER (ORDER BY Population) AS PopulationMedian
FROM Countries;

-- 5. Select the smallest country by population per continent.
SELECT CountryName, Continent, MIN(Population) OVER (PARTITION BY Continent) AS SmallestPopulation
FROM Countries;

-- 6. List countries whose phone code starts with '3'.
SELECT CountryName, PhoneCode
FROM Countries
WHERE PhoneCode LIKE '3%';

-- 7. Retrieve countries that do not have 'Euro' or 'Dollar' as currency.
SELECT CountryName, Currency
FROM Countries
WHERE Currency NOT IN ('Euro', 'Dollar');

-- 8. Select countries where population is between 1 and 10 million.
SELECT CountryName, Population
FROM Countries
WHERE Population BETWEEN 1 AND 10;

-- 9. Find countries and the continent where the population is within 10% of the highest population.
SELECT CountryName, Continent
FROM Countries
WHERE Population >= (SELECT MAX(Population) * 0.9 FROM Countries);

-- 10. Get the sum of populations for continents with more than 3 countries.
SELECT Continent, SUM(Population) AS TotalPopulation
FROM Countries
GROUP BY Continent
HAVING COUNT(*) > 3;



