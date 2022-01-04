/*
SELECT H.hacker_id, H.name, Count(C.challenge_id) as counts
from Hackers H join Challenges C
on H.hacker_id = C.hacker_id group by H.hacker_id, H.name ;

if the students have created the same number of challenges and the count is 
less than the maximum number of challenges created, then exclude those students?
ie if two students have create 6, and no one has  created more challenges than them THEN
keep those students otherwise don't include those students
below we can see that Rose and Frank should not be included 
output:
5077	Rose	4
21283	Angela	6
62743	Frank	4
88255	Patrick	5
96196	Lisa	1

we can use the sql statement below to get the max number of challenges created by a single student
SELECT COUNT(C.challenge_id) as max_count
from Challenges C GROUP BY c.hacker_id ORDER by max_count desc limit 1;
output:
6

From below sql statement we can get distinct values for Challenges created
using the having clause we are able to get of any values that are repeated
SELECT DISTINCT counts from (
	SELECT H2.hacker_id, H2.name, Count(C2.challenge_id) as counts FROM
	Hackers H2 JOIN Challenges C2 ON H2.hacker_id = C2.hacker_id
	group by H2.hacker_id, H2.name
)
group by counts having count(counts)=1
output:
1
5
6
*/


SELECT H.hacker_id, H.name, Count(C.challenge_id) as total_count 
from Hackers H JOIN Challenges C 
ON H.hacker_id = C.hacker_id 
group by H.hacker_id, H.Name
having  total_count = 
(
SELECT Count(C1.challenge_id) as counts 
	from Challenges C1 
	GROUP by C1.hacker_id 
	order by counts desc 
	limit 1
)
or 	total_count in 
( 
	SELECT DISTINCT d_counts from (
SELECT H1.hacker_id, H1.name, Count(C2.challenge_id) as d_counts 
FROM Hackers H1 JOIN Challenges C2 
on H1.hacker_id = C2.hacker_id
Group by H1.hacker_id, H1.name
) AS temp_table
	group by d_counts 
	having count(d_counts) =1)	
order by total_count desc, H.hacker_id;



/*
Some Notes:
1) this occus if hacker_id or name is missing from the group by clause 

ERROR 1055 (42000) at line 5: Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 
'run_bhounkcrnho.H.name' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

https://stackoverflow.com/questions/41887460/select-list-is-not-in-group-by-clause-and-contains-nonaggregated-column-inc

2) All nested tables must have a alias, ie AS temp_table , seen above

https://stackoverflow.com/questions/1888779/what-is-the-error-every-derived-table-must-have-its-own-alias-in-mysql
*/
