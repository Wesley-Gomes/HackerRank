SELECT  name
FROM    Students s, Friends f, Packages p, Packages fp
WHERE   s.id        = f.id
AND     s.id        = p.id
AND     fp.id       = f.friend_id 
AND     fp.salary > p.salary
ORDER BY fp.salary;