create table employees
(
    employee_id    int default 0 not null
        primary key,
    first_name     varchar(20)   null,
    last_name      varchar(25)   not null,
    email          varchar(25)   not null,
    phone_number   varchar(20)   null,
    hire_date      date          not null,
    job_id         varchar(10)   not null,
    salary         double(8, 2)  null,
    commission_pct double(2, 2)  null,
    manager_id     int           null,
    department_id  int           null,
    constraint emp_email_uk
        unique (email),
    constraint emp_emp_id_pk
        unique (employee_id),
    constraint emp_dept_fk
        foreign key (department_id) references departments (department_id),
    constraint emp_job_fk
        foreign key (job_id) references jobs (job_id),
    constraint emp_manager_fk
        foreign key (manager_id) references employees (employee_id)
);

