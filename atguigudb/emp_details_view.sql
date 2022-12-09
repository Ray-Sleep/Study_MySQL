create definer = root@localhost view emp_details_view as
select `e`.`employee_id`     AS `employee_id`,
       `e`.`job_id`          AS `job_id`,
       `e`.`manager_id`      AS `manager_id`,
       `e`.`department_id`   AS `department_id`,
       `d`.`location_id`     AS `location_id`,
       `l`.`country_id`      AS `country_id`,
       `e`.`first_name`      AS `first_name`,
       `e`.`last_name`       AS `last_name`,
       `e`.`salary`          AS `salary`,
       `e`.`commission_pct`  AS `commission_pct`,
       `d`.`department_name` AS `department_name`,
       `j`.`job_title`       AS `job_title`,
       `l`.`city`            AS `city`,
       `l`.`state_province`  AS `state_province`,
       `c`.`country_name`    AS `country_name`,
       `r`.`region_name`     AS `region_name`
from (((((`atguigudb`.`employees` `e` join `atguigudb`.`departments` `d`) join `atguigudb`.`jobs` `j`) join `atguigudb`.`locations` `l`) join `atguigudb`.`countries` `c`) join `atguigudb`.`regions` `r`)
where ((`e`.`department_id` = `d`.`department_id`) and (`d`.`location_id` = `l`.`location_id`) and
       (`l`.`country_id` = `c`.`country_id`) and (`c`.`region_id` = `r`.`region_id`) and (`j`.`job_id` = `e`.`job_id`));

