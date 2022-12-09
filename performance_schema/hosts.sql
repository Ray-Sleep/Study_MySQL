create table performance_schema.hosts
(
    HOST                char(255) charset ascii null,
    CURRENT_CONNECTIONS bigint                  not null,
    TOTAL_CONNECTIONS   bigint                  not null,
    constraint HOST
        unique (HOST) using hash
)
    engine = PERFORMANCE_SCHEMA;

