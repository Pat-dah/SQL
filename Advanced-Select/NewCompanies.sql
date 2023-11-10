/*write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code*/
select co.company_code,co.founder, count(distinct e.lead_manager_code),
count(distinct e.senior_manager_code),count(distinct e.manager_code),
count(distinct e.employee_code)
from company as co
join lead_manager as lm on co.company_code=lm.company_code
join senior_manager as sm on sm.company_code = co.company_code
join manager as m on m.company_code = sm.company_code
join employee as e on e.company_code = co.company_code
group by co.company_code,co.founder
order by co.company_code asc;
