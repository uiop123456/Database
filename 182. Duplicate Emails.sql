# Write your MySQL query statement below

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(DISTINCT ID) > 1
-- DIFF BETWEEN HAVING AND WHERE
