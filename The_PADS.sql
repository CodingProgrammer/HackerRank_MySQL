/*
Enter your query here.
*/
select concat(Name, '(',LEFT(Occupation, 1), ')')from OCCUPATIONS
order by Name;

select 'There are a total of',count(*) as num,
CASE OCCUPATION
    WHEN 'Doctor' THEN 'doctors.'
    WHEN 'Singer' THEN 'singers.'
    WHEN 'Actor' THEN 'actors.'
    WHEN 'Professor' THEN 'professors.'
END
from OCCUPATIONS
group by OCCUPATION
order by num, OCCUPATION; 

