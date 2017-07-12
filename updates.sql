SELECT * FROM weather;

UPDATE weather
  SET temp_hi = temp_hi - 2, temp_lo = temp_lo - 2
  WHERE date > '1994-11-28';
-- to fix the fact that all temps after Nov 28 are off by 2 degrees

SELECT * FROM weather;
