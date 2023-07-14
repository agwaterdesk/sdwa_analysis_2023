
drop table if exists violations cascade;

create table violations as (
    select distinct
        SUBMISSIONYEARQUARTER
        ,pwsid
        ,violation_id
        ,CONCAT(pwsid,violation_id)
        ,contaminant_code
        ,extract(year from VIOL_FIRST_REPORTED_DATE) AS year_reported
    from sdwa_violations_enforcement
);

/* 

creates 
4982348 deduped violations based on measurements
3,886,163 have null measurement levels pulled from violations_enforcement... how can we check for actual violations?
redefine "biggest" contaminants to most commonly reported?

*/