create table performance_schema.events_statements_summary_by_digest
(
    SCHEMA_NAME                 varchar(64)     null,
    DIGEST                      varchar(64)     null,
    DIGEST_TEXT                 longtext        null,
    COUNT_STAR                  bigint unsigned not null,
    SUM_TIMER_WAIT              bigint unsigned not null,
    MIN_TIMER_WAIT              bigint unsigned not null,
    AVG_TIMER_WAIT              bigint unsigned not null,
    MAX_TIMER_WAIT              bigint unsigned not null,
    SUM_LOCK_TIME               bigint unsigned not null,
    SUM_ERRORS                  bigint unsigned not null,
    SUM_WARNINGS                bigint unsigned not null,
    SUM_ROWS_AFFECTED           bigint unsigned not null,
    SUM_ROWS_SENT               bigint unsigned not null,
    SUM_ROWS_EXAMINED           bigint unsigned not null,
    SUM_CREATED_TMP_DISK_TABLES bigint unsigned not null,
    SUM_CREATED_TMP_TABLES      bigint unsigned not null,
    SUM_SELECT_FULL_JOIN        bigint unsigned not null,
    SUM_SELECT_FULL_RANGE_JOIN  bigint unsigned not null,
    SUM_SELECT_RANGE            bigint unsigned not null,
    SUM_SELECT_RANGE_CHECK      bigint unsigned not null,
    SUM_SELECT_SCAN             bigint unsigned not null,
    SUM_SORT_MERGE_PASSES       bigint unsigned not null,
    SUM_SORT_RANGE              bigint unsigned not null,
    SUM_SORT_ROWS               bigint unsigned not null,
    SUM_SORT_SCAN               bigint unsigned not null,
    SUM_NO_INDEX_USED           bigint unsigned not null,
    SUM_NO_GOOD_INDEX_USED      bigint unsigned not null,
    SUM_CPU_TIME                bigint unsigned not null,
    COUNT_SECONDARY             bigint unsigned not null,
    FIRST_SEEN                  timestamp(6)    not null,
    LAST_SEEN                   timestamp(6)    not null,
    QUANTILE_95                 bigint unsigned not null,
    QUANTILE_99                 bigint unsigned not null,
    QUANTILE_999                bigint unsigned not null,
    QUERY_SAMPLE_TEXT           longtext        null,
    QUERY_SAMPLE_SEEN           timestamp(6)    not null,
    QUERY_SAMPLE_TIMER_WAIT     bigint unsigned not null,
    constraint SCHEMA_NAME
        unique (SCHEMA_NAME, DIGEST) using hash
)
    engine = PERFORMANCE_SCHEMA;
