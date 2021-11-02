--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select empl.employee_name, s.monthly_salary
from employees as empl
right join employee_salary as em 
on empl.id = em.employee_id 
right join salary as s
on em.salary_id = s.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.
select empl.employee_name, salary.monthly_salary 
from employees as empl
right join employee_salary as em 
on empl.id = em.employee_id
right join salary 
on em.salary_id = salary.id 
where salary.monthly_salary < '2000' ;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
select employees.employee_name, salary.monthly_salary 
from salary 
right join employee_salary as em 
on em.salary_id = salary.id
left join employees  
on employees.id = em.employee_id
where em.employee_id not in (select employees.id from employees)

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary 
from salary 
left join employee_salary 
on salary_id = employee_salary.salary_id
left outer join employees  
on employees.id = employee_salary.employee_id
where employees.employee_name is null and salary.monthly_salary <2000

--5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary 
from salary 
left join employee_salary 
on salary_id = employee_salary.salary_id
right join employees  
on employees.id = employee_salary.employee_id
where employees.id not in (select employee_salary.employee_id from employee_salary)

--6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name
from employees
right join roles_employee  
on employees.id = roles_employee.employee_id
right join roles  
on roles.id = roles_employee.role_id

 --7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name
from employees
right join roles_employee  
on employees.id = roles_employee.employee_id
inner join roles  
on roles.id = roles_employee.role_id
where roles.role_name like '%Java developer'

--8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name
from employees
right join roles_employee  
on employees.id = roles_employee.employee_id
inner join roles  
on roles.id = roles_employee.role_id
where roles.role_name like '%Python developer'

--9. ������� ����� � ��������� ���� QA ���������.

select employees.employee_name, roles.role_name
from employees
right join roles_employee  
on employees.id = roles_employee.employee_id
inner join roles  
on roles.id = roles_employee.role_id
where roles.role_name like '%QA engineer'

--10. ������� ����� � ��������� ������ QA ���������.

select employees.employee_name, roles.role_name
from employees
right join roles_employee  
on employees.id = roles_employee.employee_id
inner join roles  
on roles.id = roles_employee.role_id
where roles.role_name like '%Manual QA engineer'

--11. ������� ����� � ��������� ��������������� QA

select employees.employee_name, roles.role_name
from employees
right join roles_employee  
on employees.id = roles_employee.employee_id
inner join roles  
on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA engineer'


--12. ������� ����� � �������� Junior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior%'

select employees.employee_name, roles.role_name, salary.monthly_salary
from salary 
inner join employee_salary 
on salary.id = employee_salary.salary_id
join employees 
on employee_salary.employee_id = employees.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior%'

select employee_name,role_name,monthly_salary from salary 
inner join employee_salary 
on salary.id = employee_salary.salary_id 
inner join employees 
on employee_salary.employee_id = employees.id 
inner join roles_employee
on employees.id = roles_employee.employee_id 
inner join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior%'


--13. ������� ����� � �������� Middle ������������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Middle%'

--14. ������� ����� � �������� Senior ����������

select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Senior%'

--15. ������� �������� Java �������������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Java developer'

--16. ������� �������� Python �������������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%Python developer'

--17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior Python developer'

--18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Middle JavaScript developer'

--19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Senior JavaScript developer'

--20. ������� �������� Junior QA ���������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior % QA engineer'

--21. ������� ������� �������� ���� Junior ������������

select Avg(salary.monthly_salary)
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior%'

--22. ������� ����� ������� JS �������������
select sum(salary.monthly_salary) 
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%JavaScript developer'

--23. ������� ����������� �� QA ���������
select min(salary.monthly_salary)
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%QA engineer'


--24. ������� ������������ �� QA ���������
select max(salary.monthly_salary)
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%QA engineer'

--25. ������� ���������� QA ���������
select count(employees.employee_name)
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%QA engineer'

--26. ������� ���������� Middle ������������.
select count(employees.employee_name)
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Middle%'

--27. ������� ���������� �������������
select count(employees.employee_name)
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%developer'

--28. ������� ���� (�����) �������� �������������.
select sum (salary.monthly_salary)
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '%developer'

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
order by salary.monthly_salary


--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where salary.monthly_salary < 2300
order by salary.monthly_salary

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary
from roles_employee 
join employee_salary 
on roles_employee.employee_id =employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
join employees 
on employee_salary.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where salary.monthly_salary in(1100,1500,2000)
order by salary.monthly_salary