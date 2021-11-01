SELECT  con.contest_id, con.hacker_id, con.name,
        SUM(sub.total_submissions), SUM(sub.total_accepted_submissions), 
        SUM(vie.total_views), SUM(vie.total_unique_views)
FROM    Contests con, Colleges col, Challenges cha
LEFT JOIN (SELECT SUM(vie.total_views) total_views, SUM(vie.total_unique_views) total_unique_views, vie.challenge_id
           FROM   View_Stats vie
           GROUP BY vie.challenge_id) vie
ON cha.challenge_id = vie.challenge_id
LEFT JOIN (SELECT SUM(sub.total_submissions) total_submissions, SUM(sub.total_accepted_submissions) total_accepted_submissions, sub.challenge_id 
           FROM Submission_Stats sub
           GROUP BY sub.challenge_id) sub
ON sub.challenge_id = cha.challenge_id
WHERE col.contest_id  = con.contest_id
AND   col.college_id = cha.college_id
GROUP BY con.contest_id, con.hacker_id, con.name
HAVING SUM(sub.total_submissions) != 0 OR SUM(sub.total_accepted_submissions) != 0 OR 
       SUM(vie.total_views)       != 0 OR SUM(vie.total_unique_views)         != 0
ORDER BY con.contest_id;