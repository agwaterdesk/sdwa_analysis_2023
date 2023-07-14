drop table if exists population_rollup cascade;

CREATE TABLE population_rollup AS (
    SELECT
        year_reported
        ,basin_flag
        ,flag AS contam_type_flag
        ,PRIMACY_AGENCY_CODE AS state_cd
        ,POP_CATEGORY
        ,value_description
        ,contaminant_code
        ,COUNT(distinct concat) AS violation_cnt
    FROM export_prep

    WHERE year_reported > 2000

    group by 1,2,3,4,5,6,7
);

\copy (select * from population_rollup) to 'output/population_level.csv' csv header;
