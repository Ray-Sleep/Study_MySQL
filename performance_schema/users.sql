create table performance_schema.users
(
    USER                char(32) collate utf8mb4_bin null,
    CURRENT_CONNECTIONS bigint                       not null,
    TOTAL_CONNECTIONS   bigint                       not null,
    constraint USER
        unique (USER) using hash
)
    engine = PERFORMANCE_SCHEMA;

