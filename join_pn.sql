drop table if exists pn_export_prep cascade;

create table pn_export_prep AS (

    SELECT DISTINCT
        geo.PRIMACY_AGENCY_CODE
        ,basin.basin_flag
        ,exc.flag
        ,codes.value_description
        ,v.* 
    FROM pn_violations as v

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

\copy (select * from pn_export_prep WHERE year_reported > 2000) to 'output/all_public_notice_violations.csv' csv header;
