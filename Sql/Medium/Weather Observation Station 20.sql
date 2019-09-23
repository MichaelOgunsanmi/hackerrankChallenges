-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT FLOOR(COUNT(LAT_N)/2)FROM STATION INTO @beforeMedian;

PREPARE STMT FROM 'SELECT ROUND(LAT_N, 4)
FROM STATION
ORDER BY LAT_N
LIMIT ?,1';
EXECUTE STMT USING @beforeMedian ;