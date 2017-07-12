BEGIN;
DROP TABLE IF EXISTS accounts CASCADE;
DROP TABLE IF EXISTS branches CASCADE;
COMMIT;

BEGIN;
CREATE TABLE accounts(
  name varchar(80),
  balance real,
  branch_name varchar(80)
);

CREATE TABLE branches(
  branch_name varchar(80),
  balance real
);

INSERT INTO branches VALUES(
  'east', 10000.00
);

INSERT INTO branches VALUES(
  'west', 20000.00
);

INSERT INTO branches VALUES(
  'south', 30000.00
);

INSERT INTO branches VALUES(
  'north', 40000.00
);

INSERT INTO accounts VALUES(
  'eric', 100.00, 'east'
);

INSERT INTO accounts VALUES(
  'steve', 200.00, 'north'
);
COMMIT;

BEGIN; -- eric pays steve 100.00
UPDATE accounts SET balance = balance - 100.00
  WHERE name = 'eric';
SAVEPOINT my_savepoint; -- CAN ROLLBACK TO my_savepoint, if needed
UPDATE accounts SET balance = balance + 100.00
  WHERE name = 'steve';
COMMIT;
