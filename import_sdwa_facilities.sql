drop table sdwa_facilities if exists cascade;

CREATE TABLE sdwa_facilities (
	"SUBMISSIONYEARQUARTER" VARCHAR, 
	"PWSID" DECIMAL, 
	"FACILITY_ID" VARCHAR, 
	"FACILITY_NAME" VARCHAR, 
	"STATE_FACILITY_ID" VARCHAR, 
	"FACILITY_ACTIVITY_CODE" VARCHAR, 
	"FACILITY_DEACTIVATION_DATE" DATE, 
	"FACILITY_TYPE_CODE" VARCHAR, 
	"SUBMISSION_STATUS_CODE" VARCHAR, 
	"IS_SOURCE_IND" TEXT, 
	"WATER_TYPE_CODE" VARCHAR, 
	"AVAILABILITY_CODE" VARCHAR, 
	"SELLER_TREATMENT_CODE" TEXT, 
	"SELLER_PWSID" TEXT, 
	"SELLER_PWS_NAME" TEXT, 
	"FILTRATION_STATUS_CODE" VARCHAR, 
	"IS_SOURCE_TREATED_IND" TEXT, 
	"FIRST_REPORTED_DATE" DATE, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_facilities from 'data/sdwa_facilities.csv' csv header;