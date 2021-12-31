---https://www.youtube.com/watch?v=756bY8z-B0c&t=2s
--- this solution does not work on hacker rank server, but works on sqlite
SELECT w.id, wp.age, w.coins_needed, w.power FROM Wands w JOIN Wands_Property  wp ON 
w.code = wp.code
WHERE id  in (SELECT  id    from Wands Group by code,power HAVING MIN(coins_needed)) AND wp.is_evil!=1
Order by w.power desc,  age desc;
