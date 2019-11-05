CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  set N = N-1;
  RETURN (
      # Write your MySQL query statement below.
      select (
          select
            distinct salary
          from
            employee
          order by salary desc
          limit N,1
      ) as SecondHighestSalary
  );
END