
/*
SELECT H.hacker_id, H.name, S.challenge_id, Sum(S.score) as total_score from Hackers H JOIN Submissions S on H.hacker_id = S.hacker_id
GROUP by S.challenge_id, H.hacker_id;

here we can see the total for each hacker got, this is incomplete since
we get all the challenges try and not just the max

4071	Rose	234
4806	Angela	121
26071	Frank	104
49438	Patrick	43
74842	Lisa	179
80305	Kimberly	109
84072	Bonnie	100


 to get max of score for each challenge_id
SELECT challenge_id, hacker_id , max(score) as total_challenge from Submissions GROUP BY challenge_id, hacker_id;

19797	4071	95
19797	26071	29
19797	74842	98
19797	80305	19
25917	4806	13
25917	49438	34
49593	4071	96
49593	4806	76
49593	26071	20
49593	49438	9
49593	80305	48
49593	84072	100
63132	74842	76
63132	84072	0
89343	26071	36
*/

SELECT H.hacker_id , H.name , sum(C.total_change) as scores From Hackers H JOIN 
(SELECT S.challenge_id, S.hacker_id, max(S.score) as total_change from Submissions S GROUP BY S.challenge_id, S.hacker_id) AS C
ON H.hacker_id = C.hacker_id GROUP BY  H.hacker_id, H.name Order by scores desc, H.hacker_id asc;

/*


4071	Rose	191
74842	Lisa	174
84072	Bonnie	100
4806	Angela	89
26071	Frank	85
80305	Kimberly	67
49438	Patrick	43
*/
