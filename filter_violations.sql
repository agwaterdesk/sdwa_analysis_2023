
drop table if exists violations cascade;

create table violations as (
    select distinct
        pwsid
        ,violation_id
        ,contaminant_code
        -- ,viol_measure      -- commenting out frequently blank fields to dedupe
        -- ,unit_of_measure
        -- ,federal_mcl
        ,extract(year from VIOL_FIRST_REPORTED_DATE) AS year_reported
    from sdwa_violations_enforcement
);

/* 

creates 
4982348 deduped violations based on measurements
3,886,163 have null measurement levels pulled from violations_enforcement... how can we check for actual violations?
redefine "biggest" contaminants to most commonly reported?

*/