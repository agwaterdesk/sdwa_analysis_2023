drop table if exists export_prep cascade;

create table export_prep AS (

    SELECT DISTINCT
        geo.state_served
        ,codes.value_description
        ,v.* 
    FROM violations as v

    INNER JOIN SDWA_GEOGRAPHIC_AREAS as geo
        on v.pwsid = geo.pwsid
        AND geo.state_served IS NOT NULL

    LEFT JOIN SDWA_ref_code_values as codes
        on v.CONTAMINANT_CODE = codes.VALUE_CODE
        AND codes.VALUE_TYPE = 'CONTAMINANT_CODE'        
);

-- notes 

-- 4982348 rows 
-- should have this number (same as violations)

-- actual:
-- 4982348
-- close...

-- it looks like contaminants are reported in batches for large spills that occur around the same time
-- w multiple contaminents...
-- are there filters we can apply to check for serious contaminants?

-- there are about 2x as many "null state" rows as there are state rows
-- this makes me wonder if the numeric pwsid is a duplicate ansi_ref id