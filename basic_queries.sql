SELECT * from weather;

SELECT city, temp_lo, prcp, date from weather;

SELECT city, (temp_hi+temp_lo)/2 as temp_avg, date from weather;

SELECT * from weather where
  city = 'San Francisco' AND prcp > 0.0;

SELECT * from weather order by city;

SELECT DISTINCT city from weather;
