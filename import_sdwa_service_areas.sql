drop table sdwa_service_areas if exists cascade;

CREATE TABLE sdwa_service_areas (
	"SUBMISSIONYEARQUARTER" VARCHAR, 
	"PWSID" DECIMAL, 
	"SERVICE_AREA_TYPE_CODE" VARCHAR, 
	"IS_PRIMARY_SERVICE_AREA_CODE" TEXT, 
	"FIRST_REPORTED_DATE" DATE, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_service_areas from 'data/sdwa_service_areas.csv' csv header;
