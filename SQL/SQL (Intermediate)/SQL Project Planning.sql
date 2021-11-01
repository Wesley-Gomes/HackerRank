SELECT MIN(p.start_date), MAX(p.end_date)
FROM  (SELECT p.start_date, p.end_date, p.start_date - ROW_NUMBER() OVER (ORDER BY p.start_date) as proj
       FROM Projects p) p
GROUP BY proj
ORDER BY MAX(p.end_date) - MIN(p.start_date), MIN(p.start_date);