drop table if exists rollup cascade;

CREATE TABLE rollup AS (
    SELECT
        year_reported
        ,state_served
        ,value_description
        ,contaminant_code
        ,COUNT(distinct violation_id) AS violation_cnt
    FROM export_prep

    group by 1,2,3,4
);

\copy (select * from rollup) to 'output/state_level.csv' csv header;
