SELECT w.id, wp.age, w.coins_needed, w.power FROM Wands w JOIN Wands_Property wp ON w.code = wp.code
WHERE wp.is_evil!=1 AND  w.coins_needed = 
(SELECT Min(w1.coins_needed) from Wands w1 JOIN Wands_Property wp1 on w1.code = wp1.code 
 where  w1.power = w.power AND wp1.code = wp.code)
ORDER BY w.power desc, wp.age desc;



--Note: w1.power = w.power is needed , it can't be w1.code = w.code because the same code have multiple power 
-- so in order to get the same age/power we need to use w1.power = w.power
--Note2: we can swap wp1.code = wp.code because we know what code and age are one-to-one like so:

SELECT w.id, wp.age, w.coins_needed, w.power FROM Wands w JOIN Wands_Property wp ON w.code = wp.code
WHERE wp.is_evil!=1 AND  w.coins_needed = 
(SELECT Min(w1.coins_needed) from Wands w1 JOIN Wands_Property wp1 on w1.code = wp1.code 
 where  w1.power = w.power AND wp1.age = wp.age)
ORDER BY w.power desc, wp.age desc;
