create table performance_schema.accounts
(
    USER                char(32) collate utf8mb4_bin null,
    HOST                char(255) charset ascii      null,
    CURRENT_CONNECTIONS bigint                       not null,
    TOTAL_CONNECTIONS   bigint                       not null,
    constraint ACCOUNT
        unique (USER, HOST) using hash
)
    engine = PERFORMANCE_SCHEMA;

