--1. ������� ���� ����������, ��� �������� ���� � ����, ������ � ����������
select employee_name, monthly_salary from employee_salary 
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

--2. ������� ���� ����������, � ������� �� ������ 2000
select employee_name, monthly_salary from employee_salary 
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� �������� (�� ����, �� �� �������, ��� � ��������)
select employee_name, monthly_salary from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null;

--4. ������� ��� ���������� �������  ������ 2000, �� �������� �� ��� �� �������� (�� ����, �� �� �������, ��� � ��������)
select employee_name, monthly_salary from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000 and employee_name is null;

--5. ����� ���� ���������� ���� �� ��������� ��
select employee_name, monthly_salary from employee_salary 
right join employees on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;

select role_name, monthly_salary from employee_salary 
right join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������
select role_name, employee_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id;

--7. ������� ����� � ��������� ������ Java �������������
select role_name, employee_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Java_Developer%';

--8. ������� ����� � ��������� ������ Python �������������
select role_name, employee_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Python_Developer%';

--9. ������� ����� � ��������� ���� QA ���������
select role_name, employee_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA_Engineer%';

--10. ������� ����� � ��������� ������ QA ���������
select role_name, employee_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Manual_QA_Engineer%';

--11. ������� ����� � ��������� ��������������� QA
select role_name, employee_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Automation_QA%';

--12. ������� ����� � �������� Junior ������������ 
select employee_name, role_name, monthly_salary from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join employees on employee_salary.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������
select employee_name, role_name, monthly_salary from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

--15. ������� �������� Java ������������� 
select role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Java_Developer%';

--16. ������� �������� Python �������������
select role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Python_Developer%';

--17. ������� ����� � �������� Junior Python �������������
select employee_name, role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
where role_name like '%Junior%Python%Developer%';

--18. ������� ����� � �������� Middle JS �������������
select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Middle%JavaScript%Developer%';

--19. ������� ����� � �������� Senior Java �������������
select employee_name, role_name, monthly_salary from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Senior%Java_Developer%';

--20. ������� �������� Junior QA ���������
select role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Python_Developer%';

--21. ������� ������� �������� ���� Junior ������������
select avg (monthly_salary) from roles_employee 
join roles on roles_employee.role_id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--22. ������� ����� ������� JS �������������
select sum (monthly_salary) from roles_employee 
join roles on roles_employee.role_id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%Developer%';

--23. ������� ����������� �� QA ���������
select min (monthly_salary) from roles_employee 
join roles on roles_employee.role_id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%QA_Engineer%';

--24. ������� ������������ �� QA ���������
select max (monthly_salary) from roles_employee 
join roles on roles_employee.role_id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%QA_Engineer%';

--25. ������� ���������� QA ���������
select count (role_name) from roles_employee 
join roles on roles_employee.role_id = roles.id
where role_name like '%QA_Engineer%';

--26. ������� ���������� Middle ������������
select count (role_name) from roles_employee 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Middle%';

--27. ������� ���������� �������������
select count (role_name) from roles_employee 
join roles on roles_employee.role_id = roles.id
where role_name like '%Developer%';

--28. ������� ���� (�����) �������� �������������
select SUM (monthly_salary) from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Developer%';

--29.  ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
order by monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
where monthly_salary > 1700 and monthly_salary < 2300
order by monthly_salary;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id
where monthly_salary < 2300
order by monthly_salary;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;




