Таблица employees


--1.Создать таблицу employees
--- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--2.Наполнить таблицу employee 70 строками.

CREATE table employees (
 	id  serial  primary key ,
    employee_name  varchar (50)  not null 
 );

insert into employees  (id, employee_name )
values (default, 'Mariya Kohan');

select * from employees;

-- ==================================
Таблица salary

--3. Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--4.Наполнить таблицу salary 15 строками:

CREATE table salary (
 	id  serial  primary key ,
    monthly_salary  int , not null 
 );

insert into salary  (id, monthly_salary )
values (default,  1500);

select * from salary;

--  ==================================
Таблица employee_salary

--5.Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
---6.Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

CREATE table employees_salary (
 	id  serial  primary key ,
 	employee_id  int, not null, unique
    salary_id   int , not null 
 );

insert into employees_salary   (id, employee_id,  salary_id  )
values (default,  3,7);

select * from employees_salary;

-- ======================================
Таблица roles


-- 7.Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--8.Поменять тип столба role_name с int на varchar(30)
--9.Наполнить таблицу roles 20 строками:

CREATE TABLE roles (
 	id  serial  primary key ,
    role_name  varchar (30)  not null unique
 );

---alter table roles
-- alter column role_name type varchar(30)
-- using role_name: : varchar;

insert into roles  (id, role_name )
values (20, 'Senior Automation QA engineer');

--update roles set  role_name ='Junior Manual QA engineer'
--where id=10;

--delete from roles 
--where id = 23;


select * from roles;

-- ========================================
Таблица roles_employee

--10.Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--11.Наполнить таблицу roles_employee 40 строками:


CREATE TABLE roles_employee (
 	id  serial  primary key ,
 	employee_id int not null unique,
    role_id  int   not null,
    foreign key  (employee_id)
                 references employees (id),
    foreign  key  (role_id)
                 references roles (id)
 );

insert into  roles_employee  (id, employee_id,  role_id  )
values (default, 8,4);


select * from roles_employee;

