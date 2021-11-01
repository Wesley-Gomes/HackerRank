SELECT  f.x, f.y
FROM    Functions f, Functions fc
WHERE   f.x  = fc.y
AND     fc.x = f.y
GROUP BY f.x, f.y
HAVING COUNT(f.x) > 1 OR f.x < f.y
ORDER BY f.x;