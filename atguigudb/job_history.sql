create table job_history
(
    employee_id   int         not null,
    start_date    date        not null,
    end_date      date        not null,
    job_id        varchar(10) not null,
    department_id int         null,
    primary key (employee_id, start_date),
    constraint jhist_emp_id_st_date_pk
        unique (employee_id, start_date),
    constraint jhist_dept_fk
        foreign key (department_id) references departments (department_id),
    constraint jhist_emp_fk
        foreign key (employee_id) references employees (employee_id),
    constraint jhist_job_fk
        foreign key (job_id) references jobs (job_id)
);

