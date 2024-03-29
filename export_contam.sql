drop table if exists rollup cascade;

CREATE TABLE rollup AS (
    SELECT
        year_reported
        ,basin_flag
        ,flag AS contam_type_flag
        ,PRIMACY_AGENCY_CODE AS state_cd
        ,value_description
        ,contaminant_code
        ,COUNT(distinct concat) AS violation_cnt
    FROM export_prep

    WHERE year_reported > 2000

    group by 1,2,3,4,5,6
);

\copy (select * from rollup) to 'output/state_level.csv' csv header;
