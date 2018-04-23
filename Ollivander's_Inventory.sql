select W.id, WP.age, W.coins_needed, W.power from Wands W
inner join Wands_Property WP on WP.code = W.code
where WP.is_evil = 0 and w.coins_needed = 
    (select min(coins_needed) from Wands W1 
     join Wands_Property WP1 on (W1.code = WP1.code) 
     where W1.power = W.power and WP1.age = WP.age) 
order by W.power desc, WP.age desc;
