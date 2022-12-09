create table regions
(
    region_id   int         not null
        primary key,
    region_name varchar(25) null,
    constraint reg_id_pk
        unique (region_id)
);

