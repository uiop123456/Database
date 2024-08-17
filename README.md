# Database
1. SELECT Clause
Purpose: Used to specify the columns that you want to retrieve.
Example: ```SELECT name, age FROM Employees```;

2. FROM Clause
Purpose: Specifies the table(s) from which to retrieve or delete data.
Example: ```SELECT * FROM Employees```;

3. WHERE Clause
Purpose: Used to filter records based on specific conditions.
Example: ```SELECT * FROM Employees WHERE age > 30```;

4. GROUP BY Clause
Purpose: Groups rows that have the same values in specified columns into aggregate data.
Example: ```SELECT Department, COUNT(*) FROM Employees GROUP BY Department```;

5. HAVING Clause
Purpose: Used to filter groups based on aggregate conditions, often used with GROUP BY.
Example: ```SELECT Department, COUNT(*) FROM Employees GROUP BY Department HAVING COUNT(*) > 10```;

6. ORDER BY Clause
Purpose: Sorts the result set by one or more columns.
Example: ```SELECT * FROM Employees ORDER BY age DESC```;

8. LIMIT / FETCH Clause
Purpose: Limits the number of rows returned by a query.
Example: ```SELECT * FROM Employees LIMIT 5```;

10. OFFSET Clause
Purpose: Skips a specified number of rows before starting to return rows from the query.
Example: ```SELECT * FROM Employees LIMIT 5 OFFSET 10```;

11. EXCEPT / MINUS Clause
Purpose: Returns the difference between two SELECT queries, excluding rows in the second query from the first.
Example: ```SELECT name FROM Employees EXCEPT SELECT name FROM Managers```;

12. JOIN Clause
Purpose: Combines rows from two or more tables based on a related column.
Example: ```SELECT Employees.name, Departments.name FROM Employees JOIN Departments ON Employees.department_id = Departments.id```;

14. UNION Clause
Purpose: Combines the result sets of two or more SELECT queries.
Example: ```SELECT name FROM Employees UNION SELECT name FROM Managers```;

16. EXCEPT / MINUS Clause
Purpose: Returns the difference between two SELECT queries, excluding rows in the second query from the first.
Example: ```SELECT name FROM Employees EXCEPT SELECT name FROM Managers```;

18. INTERSECT Clause
Purpose: Returns only the rows that are common between two SELECT queries.
Example: ```SELECT name FROM Employees INTERSECT SELECT name FROM Managers```;

20. INTO Clause
Purpose: Used in some SQL variants to create a new table from the result of a query.
Example: ```SELECT * INTO NewEmployees FROM Employees WHERE age < 30```;

22. DISTINCT Clause
Purpose: Removes duplicate rows from the result set.
Example: ```SELECT DISTINCT department FROM Employees```;

24. WITH Clause (Common Table Expressions - CTE)
Purpose: Allows you to define temporary named result sets that can be referenced within the main query.
Example:
```
WITH DepartmentCount AS (
    SELECT Department, COUNT(*) AS EmployeeCount 
    FROM Employees 
    GROUP BY Department
)
SELECT * FROM DepartmentCount WHERE EmployeeCount > 10;
```

25. INNER / LEFT / RIGHT / FULL OUTER JOIN Clauses
Purpose: Specifies how to join tables and how to handle unmatched rows.
Example: ```SELECT * FROM Employees LEFT JOIN Departments ON Employees.department_id = Departments.id```;

27. INSERT INTO Clause
Purpose: Adds new rows of data to a table.
Example: ```INSERT INTO Employees (name, age) VALUES ('John Doe', 30)```;

29. UPDATE Clause
Purpose: Modifies existing rows in a table.
Example: ```UPDATE Employees SET age = 31 WHERE name = 'John Doe'```;

31. DELETE FROM Clause
Purpose: Removes rows from a table.
Example: ```DELETE FROM Employees WHERE age < 25```;

33. CASE Clause
Purpose: Allows you to perform conditional logic in a query.
Example:
```
sql
Copy code
SELECT name, 
       CASE 
           WHEN age < 18 THEN 'Minor'
           ELSE 'Adult'
       END AS age_group
FROM Employees;
```
