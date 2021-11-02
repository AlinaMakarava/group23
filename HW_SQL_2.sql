create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees (id,employee_name)
values (default,'Carmen Myers')

create table salary(
id serial primary key,
monthly_salary integer not null
);

insert into salary (id,monthly_salary)
values (default,2500)

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (id, employee_id, salary_id)
values(default, 32, 15)

create table roles (
id serial primary key,
role_name int not null unique
);

alter table roles 
alter column role_name type varchar
using role_name::varchar(30)

insert into roles (id, role_name)
values (default, 'Junior Python developer')

insert into roles (id, role_name)
values (default, 'Middle Python developer')

insert into roles (id, role_name)
values (default, 'Senior Python developer')

insert into roles (id, role_name)
values (default, 'Junior Java developer')

insert into roles (id, role_name)
values (default, 'Middle Java developer')

insert into roles (id, role_name)
values (default, 'Senior Java developer')

insert into roles (id, role_name)
values (default, 'Junior JavaScript developer')

insert into roles (id, role_name)
values (default, 'Middle JavaScript developer')

insert into roles (id, role_name)
values (default, 'Senior JavaScript developer')

insert into roles (id, role_name)
values (default, 'Junior Manual QA engineer')

insert into roles (id, role_name)
values (default, 'Middle Manual QA engineer')

insert into roles (id, role_name)
values (default, 'Senior Manual QA engineer')

insert into roles (id, role_name)
values (default, 'Project Manager')

insert into roles (id, role_name)
values (default, 'Designer')

insert into roles (id, role_name)
values (default, 'HR')

insert into roles (id, role_name)
values (default, 'CEO')

insert into roles (id, role_name)
values (default, 'Sales manager')

insert into roles (id, role_name)
values (default, 'Junior Automation QA engineer')

insert into roles (id, role_name)
values (default, 'Middle Automation QA engineer')

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer')

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles (id)
);

insert into roles_employee (id, employee_id, role_id)
values (default, 7, 2)

insert into roles_employee (id, employee_id, role_id)
values (default, 20, 4)

insert into roles_employee (id, employee_id, role_id)
values (default, 3, 9)

insert into roles_employee (id, employee_id, role_id)
values (default, 5, 13)

insert into roles_employee (id, employee_id, role_id)
values (default, 23, 4)

insert into roles_employee (id, employee_id, role_id)
values (default, 11, 2)

insert into roles_employee (id, employee_id, role_id)
values (default, 10, 9)

insert into roles_employee (id, employee_id, role_id)
values (default, 22, 13)

insert into roles_employee (id, employee_id, role_id)
values (default, 21, 3)

insert into roles_employee (id, employee_id, role_id)
values (default, 34, 4)

insert into roles_employee (id, employee_id, role_id)
values (default, 6, 7)

insert into roles_employee (id, employee_id, role_id)
values (default, 1, 1)

insert into roles_employee (id, employee_id, role_id)
values (default, 2, 5)

insert into roles_employee (id, employee_id, role_id)
values (default, 4, 6)

insert into roles_employee (id, employee_id, role_id)
values (default, 8, 8)

insert into roles_employee (id, employee_id, role_id)
values (default, 9, 10)

insert into roles_employee (id, employee_id, role_id)
values (default, 12, 11)

insert into roles_employee (id, employee_id, role_id)
values (default, 13, 12)

insert into roles_employee (id, employee_id, role_id)
values (default, 14, 14)

insert into roles_employee (id, employee_id, role_id)
values (default, 15, 15)

insert into roles_employee (id, employee_id, role_id)
values (default, 16, 16)

insert into roles_employee (id, employee_id, role_id)
values (default, 17, 17)

insert into roles_employee (id, employee_id, role_id)
values (default, 18, 17)

insert into roles_employee (id, employee_id, role_id)
values (default, 19, 18)

insert into roles_employee (id, employee_id, role_id)
values (default, 31, 20)

insert into roles_employee (id, employee_id, role_id)
values (default, 32, 19)

insert into roles_employee (id, employee_id, role_id)
values (default, 33, 17)

insert into roles_employee (id, employee_id, role_id)
values (default, 35, 7)

insert into roles_employee (id, employee_id, role_id)
values (default, 36, 9)

insert into roles_employee (id, employee_id, role_id)
values (default, 40, 13)

insert into roles_employee (id, employee_id, role_id)
values (default, 24, 14)

insert into roles_employee (id, employee_id, role_id)
values (default, 25, 15)

insert into roles_employee (id, employee_id, role_id)
values (default, 26, 16)

insert into roles_employee (id, employee_id, role_id)
values (default, 27, 17)

insert into roles_employee (id, employee_id, role_id)
values (default, 28, 18)

insert into roles_employee (id, employee_id, role_id)
values (default, 29, 19)

insert into roles_employee (id, employee_id, role_id)
values (default, 30, 20)

select * from roles_employee;
