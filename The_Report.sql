select (case when g.grade >= 8 then s.name else null end), g.grade, s.marks 
from Students s
inner join grades g on s.marks between g.Min_Mark and g.Max_Mark
order by g.grade desc, name;
