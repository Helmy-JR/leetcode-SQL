# Write your MySQL query statement below
DELETE p
FROM Person p
JOIN (
    SELECT Email, MIN(Id) AS MinId
    FROM Person
    GROUP BY Email
) t
ON p.Email = t.Email
WHERE p.Id <> t.MinId;

----------------------------------
# Write your MySQL query statement below
DELETE p FROM Person p , person q
where p.id > q.id AND q.Email = p.Email ;
