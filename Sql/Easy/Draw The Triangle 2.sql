-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

-- * 
-- * * 
-- * * * 
-- * * * * 
-- * * * * *
-- Write a query to print the pattern P(20).

-- MS SQL Server

DECLARE @i INT = 0
WHILE (@i < 21) 
BEGIN
   PRINT REPLICATE('* ', @i) 
   SET @i = @i + 1
END