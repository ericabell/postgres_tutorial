DROP TABLE IF EXISTS empsalary;

BEGIN;
CREATE TABLE empsalary(
  depname varchar(20),
  empno   int,
  salary  int
);

INSERT INTO empsalary VALUES(
  'develop', 11, 5200
);

INSERT INTO empsalary VALUES(
  'develop', 7, 4200
);

INSERT INTO empsalary VALUES(
  'develop', 9, 4500
);

INSERT INTO empsalary VALUES(
  'develop', 8, 6000
);

INSERT INTO empsalary VALUES(
  'develop', 10, 5200
);

INSERT INTO empsalary VALUES(
  'personnel', 5, 3500
);

INSERT INTO empsalary VALUES(
  'personnel', 2, 3900
);

INSERT INTO empsalary VALUES(
  'sales', 3, 4800
);

INSERT INTO empsalary VALUES(
  'sales', 1, 5000
);

INSERT INTO empsalary VALUES(
  'sales', 4, 4800
);
COMMIT;

-- WINDOW FUNCTION

SELECT depname, empno, salary, avg(salary) OVER (PARTITION BY depname)
  FROM empsalary;

SELECT depname, empno, salary, rank() OVER (PARTITION BY depname
  ORDER BY salary DESC) FROM empsalary;
