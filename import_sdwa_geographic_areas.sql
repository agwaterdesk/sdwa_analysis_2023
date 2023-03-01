drop table sdwa_geographic_areas if exists cascade;

CREATE TABLE sdwa_geographic_areas (
	"SUBMISSIONYEARQUARTER" VARCHAR, 
	"PWSID" DECIMAL, 
	"GEO_ID" DECIMAL, 
	"AREA_TYPE_CODE" VARCHAR, 
	"TRIBAL_CODE" DECIMAL, 
	"STATE_SERVED" TEXT, 
	"ANSI_ENTITY_CODE" DECIMAL, 
	"ZIP_CODE_SERVED" TEXT, 
	"CITY_SERVED" TEXT, 
	"COUNTY_SERVED" TEXT, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_geographic_areas from 'data/sdwa_geographic_areas.csv' csv header;
