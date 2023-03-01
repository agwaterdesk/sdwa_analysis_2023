drop table if exists sdwa_service_areas cascade;

CREATE TABLE sdwa_service_areas (
	"SUBMISSIONYEARQUARTER" TEXT, 
	"PWSID" TEXT, 
	"SERVICE_AREA_TYPE_CODE" TEXT, 
	"IS_PRIMARY_SERVICE_AREA_CODE" TEXT, 
	"FIRST_REPORTED_DATE" DATE, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_service_areas from 'data/sdwa_service_areas.csv' csv header;
