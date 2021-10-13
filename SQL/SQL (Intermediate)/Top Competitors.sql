SELECT   h.hacker_id, h.name
FROM     HACKERS h, DIFFICULTY d, CHALLENGES c, SUBMISSIONS s
WHERE    s.hacker_id        = h.hacker_id
AND      s.challenge_id     = c.challenge_id
AND      c.difficulty_level = d.difficulty_level
AND      d.score            = s.score
GROUP BY h.hacker_id, h.name
HAVING   COUNT(h.hacker_id) > 1
ORDER BY COUNT(h.hacker_id) DESC, h.hacker_id;