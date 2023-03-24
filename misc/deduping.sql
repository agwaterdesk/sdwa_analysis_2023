CREATE TABLE dupes AS (
    select 
    violation_id
    , count(violation_id) AS cnt 
    from violations 
    group by 1 
);