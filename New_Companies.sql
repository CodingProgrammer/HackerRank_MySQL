select C.company_code, C.founder, count(distinct lead_manager_code), count(distinct senior_manager_code), count(distinct manager_code), count(distinct employee_code)
from Employee E
inner join Company C on C.company_code = E.company_code
group by C.company_code, C.founder
order by C.company_code;
