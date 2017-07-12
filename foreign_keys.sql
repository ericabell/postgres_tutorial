DROP TABLE cities CASCADE;
DROP TABLE weather CASCADE;

CREATE TABLE cities (
  city varchar(80) primary key,
  location point
);

CREATE TABLE weather (
  city varchar(80) references cities(city),
  temp_lo  int,
  temp_hi  int,
  prcp     real,
  date     date
);

INSERT INTO cities VALUES(
  'San Francisco',
  '(37.7749, 122.4194)'
);

INSERT INTO cities (city, location) VALUES(
  'Los Angeles',
  '(34.0522, 118.2437)'
);

INSERT INTO cities (location, city) VALUES(
  '(40.7128, 74.0059)',
  'New York City'
);

INSERT INTO weather VALUES(
  'San Francisco',
  46,
  50,
  0.25,
  '1994-11-27'
);

INSERT INTO weather
  (city, temp_lo, temp_hi, date)
  VALUES(
    'New York City', 40, 51, '1994-11-15'
);
