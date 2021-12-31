
--- this solution does not work on hacker rank server, but works on sqlite
SELECT w.id, wp.age, w.coins_needed, w.power FROM WAND w JOIN Wands_Property  wp ON 
w.code = wp.code
WHERE id  in (SELECT  id    from Wand Group by code,power HAVING MIN(coins_needed)) AND wp.is_evil!=1
Order by w.power desc,  age desc;
