SELECT *
  FROM weather, cities
  WHERE city = name;

SELECT city, temp_lo, temp_hi, prcp, date, location
  FROM weather, cities
  WHERE city = name;

-- Hayward has no matching record in the cities table,
-- and so it will not appear in the above query.
-- this is characteristic of an INNER JOIN

-- TO FIX THIS, we will perform an OUTER JOIN

SELECT * FROM weather LEFT OUTER JOIN cities
  ON (weather.city = cities.name);

-- THERE ARE ALSO RIGHT OUTER JOIN and FULL OUTER JOIN

SELECT * FROM weather RIGHT OUTER JOIN cities
  ON (weather.city = cities.name);

SELECT * FROM WEATHER FULL OUTER JOIN cities
  ON (weather.city = cities.name);

-- JOINS ON A SINGLE table

SELECT W1.city, W1.temp_lo as low, W1.temp_hi AS high,
  W2.city, W2.temp_lo AS low, W2.temp_hi AS high
  FROM weather W1, weather W2
  WHERE W1.temp_lo < W2.temp_lo
  AND W1.temp_hi > W2.temp_hi;


-- USEFUL SHORTHAND FOR TABLE NAMES

SELECT * FROM weather w, cities c
  WHERE w.city = c.name;
