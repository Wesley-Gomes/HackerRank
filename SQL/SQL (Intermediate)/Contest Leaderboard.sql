SELECT  h.hacker_id, h.name, SUM(s.max_score) total_score
FROM    Hackers h, (SELECT MAX(s.score) max_score, s.hacker_id 
                    FROM   Submissions s
                    GROUP BY s.challenge_id, s.hacker_id) s
WHERE h.hacker_id = s.hacker_id
GROUP BY h.hacker_id, h.name 
HAVING SUM(s.max_score) > 0
ORDER BY SUM(s.max_score) DESC, h.hacker_id;