SELECT max(temp_lo) FROM weather;

-- using a SUB-QUERY to display the name of the city

SELECT city, temp_lo from weather
  WHERE temp_lo = (SELECT max(temp_lo) FROM weather);

SELECT city, max(temp_lo)
  FROM weather
  GROUP BY city;

SELECT city, max(temp_lo)
  FROM weather
  GROUP BY city
  HAVING max(temp_lo) < 40;
-- results only for the cities with all temp_lo values < 40


SELECT city, max(temp_lo)
  FROM weather
  WHERE city LIKE 'S%'  -- only cities whose names start with 'S'
  GROUP BY city
  HAVING max(temp_lo) < 40;


-- WHERE contols which rows will go into the AGGREGATE computation
-- WHERE selects rows before groups and aggregates are computed
-- HAVING will always contain AGGREGATE functions
