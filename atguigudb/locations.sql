create table locations
(
    location_id    int default 0 not null
        primary key,
    street_address varchar(40)   null,
    postal_code    varchar(12)   null,
    city           varchar(30)   not null,
    state_province varchar(25)   null,
    country_id     char(2)       null,
    constraint loc_id_pk
        unique (location_id),
    constraint loc_c_id_fk
        foreign key (country_id) references countries (country_id)
);

