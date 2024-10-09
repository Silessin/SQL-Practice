-- Create the Countries table
CREATE TABLE Countries (
    CountryID INT PRIMARY KEY AUTO_INCREMENT,
    CountryName VARCHAR(255),
    Capital VARCHAR(255),
    Population DECIMAL(10, 2),  -- Population in millions
    PhoneCode VARCHAR(10),       -- Phone code for the country
    Continent VARCHAR(50),       -- Continent where the country is located
    Currency VARCHAR(50)         -- Currency used in the country
);

-- Insert sample data into the Countries table
INSERT INTO Countries (CountryName, Capital, Population, PhoneCode, Continent, Currency) VALUES
('Poland', 'Warsaw', 38.4, '+48', 'Europe', 'Zloty'),
('Germany', 'Berlin', 83.8, '+49', 'Europe', 'Euro'),
('France', 'Paris', 65.3, '+33', 'Europe', 'Euro'),
('Spain', 'Madrid', 46.8, '+34', 'Europe', 'Euro'),
('Italy', 'Rome', 60.2, '+39', 'Europe', 'Euro'),
('United Kingdom', 'London', 67.9, '+44', 'Europe', 'Pound Sterling'),
('Canada', 'Ottawa', 37.7, '+1', 'North America', 'Canadian Dollar'),
('Australia', 'Canberra', 25.5, '+61', 'Oceania', 'Australian Dollar'),
('Japan', 'Tokyo', 126.5, '+81', 'Asia', 'Yen'),
('Brazil', 'Brasilia', 213.0, '+55', 'South America', 'Real');
