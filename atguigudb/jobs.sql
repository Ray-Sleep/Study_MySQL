create table jobs
(
    job_id     varchar(10) default '' not null
        primary key,
    job_title  varchar(35)            not null,
    min_salary int                    null,
    max_salary int                    null,
    constraint job_id_pk
        unique (job_id)
);

