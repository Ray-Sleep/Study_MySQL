create table countries
(
    country_id   char(2)     not null
        primary key,
    country_name varchar(40) null,
    region_id    int         null,
    constraint countr_reg_fk
        foreign key (region_id) references regions (region_id)
);

