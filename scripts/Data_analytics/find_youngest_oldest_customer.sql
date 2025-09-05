--FInd the younges and the oldest cutomers
SELECT
MIN(birthdate) AS oldest_birthdate,
DATEDIFF(year,MIN(birthdate),GETDATE()) AS oldest_age,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF(year,MAX(birthdate),GETDATE()) AS youngest_age
FROM gold.dim_customers
