drop table if exists sdwa_geographic_areas cascade;

CREATE TABLE sdwa_geographic_areas (
	"SUBMISSIONYEARQUARTER" TEXT, 
	"PWSID" TEXT, 
	"GEO_ID" TEXT, 
	"AREA_TYPE_CODE" TEXT, 
	"TRIBAL_CODE" TEXT, 
	"STATE_SERVED" TEXT, 
	"ANSI_ENTITY_CODE" TEXT, 
	"ZIP_CODE_SERVED" TEXT, 
	"CITY_SERVED" TEXT, 
	"COUNTY_SERVED" TEXT, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_geographic_areas from 'data/sdwa_geographic_areas.csv' csv header;
