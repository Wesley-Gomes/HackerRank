SELECT  h.hacker_id, h.name, COUNT(c.challenge_id)
FROM    HACKERS h, CHALLENGES c
WHERE   h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING   COUNT(c.challenge_id) >=  (SELECT MAX(COUNT(hacker_id)) FROM CHALLENGES GROUP BY hacker_id) OR
         COUNT(c.challenge_id) IN ((SELECT t.c_count FROM (SELECT COUNT(*) c_count FROM CHALLENGES GROUP BY hacker_id) t GROUP BY t.c_count HAVING COUNT(t.c_count) = 1))
ORDER BY COUNT(c.challenge_id) DESC, h.hacker_id;