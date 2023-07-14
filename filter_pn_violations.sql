
drop table if exists pn_violations cascade;

create table pn_violations as (
    select distinct
        SUBMISSIONYEARQUARTER
        ,pwsid
        ,violation_id
        ,CONCAT(pwsid,violation_id)
        ,violation_code
        ,violation_category_code
        ,contaminant_code
        ,rule_code
        ,rule_group_code
        ,violation_status
        ,PUBLIC_NOTIFICATION_TIER
        ,CALCULATED_PUB_NOTIF_TIER
        ,extract(year from VIOL_FIRST_REPORTED_DATE) AS year_reported
    from sdwa_violations_enforcement

    where 1=1
    AND rule_code = '410'
);

