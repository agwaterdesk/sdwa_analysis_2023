drop table if exists export_prep cascade;

create table export_prep AS (

    SELECT DISTINCT
        geo.PRIMACY_AGENCY_CODE
        ,basin.basin_flag
        ,exc.flag
        ,geo.POP_CAT_3_CODE as POP_CATEGORY
        ,codes.value_description
        ,v.* 
    FROM violations as v

    LEFT JOIN SDWA_PUB_WATER_SYSTEMS as geo
        on v.pwsid = geo.pwsid
        AND geo.PRIMACY_AGENCY_CODE IS NOT NULL

    LEFT JOIN BASIN_FLAGS as basin
        on basin.state_cd = geo.PRIMACY_AGENCY_CODE

    INNER JOIN SDWA_ref_code_values as codes
        on v.CONTAMINANT_CODE = codes.VALUE_CODE
        AND codes.VALUE_TYPE = 'CONTAMINANT_CODE'  

    LEFT JOIN contam_excludes as exc
        on exc.code = v.CONTAMINANT_CODE
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