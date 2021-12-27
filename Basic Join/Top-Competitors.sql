#Author Muhammad Usman Hasan
SELECT H.hacker_id , H.name FROM 
Submissions S Join Challenges C ON
S.challenge_id  = C.challenge_id JOIN Difficulty D ON
C.difficulty_level = D.difficulty_level JOIN Hackers H ON
S.hacker_id = H.hacker_id AND S.score = D.score Group by H.hacker_id , H.name having Count(s.hacker_id)>1 
Order by count(s.hacker_id) desc, s.hacker_id asc;



--Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge.
--Order your output in descending order by the total number of challenges in which the hacker earned a full score.
--If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
