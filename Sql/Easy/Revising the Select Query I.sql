-- Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.

-- Input Format

-- The CITY table is described as follows: CITY.jpg

SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';