select salary*months, count(*) from Employee
group by salary*months
order by salary*months desc
limit 1;
