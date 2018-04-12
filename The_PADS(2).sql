select concat(Name, '(',LEFT(Occupation, 1), ')')from OCCUPATIONS
order by Name;

select 'There are a total of',count(*) as num, concat(lower(OCCUPATION), 's.')
from OCCUPATIONS
group by OCCUPATION
order by num, OCCUPATION; 
