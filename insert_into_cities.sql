INSERT INTO cities VALUES(
  'San Francisco',
  '(37.7749, 122.4194)'
);

INSERT INTO cities (name, location) VALUES(
  'Los Angeles',
  '(34.0522, 118.2437)'
);

INSERT INTO cities (location, name) VALUES(
  '(40.7128, 74.0059)',
  'New York City'
);

SELECT * from cities;
