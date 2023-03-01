drop table sdwa_lcr_samples if exists cascade;

CREATE TABLE sdwa_lcr_samples (
	"SUBMISSIONYEARQUARTER" VARCHAR, 
	"PWSID" DECIMAL, 
	"SAMPLE_ID" DECIMAL, 
	"SAMPLING_END_DATE" DATE, 
	"SAMPLING_START_DATE" DATE, 
	"RECONCILIATION_ID" TEXT, 
	"SAMPLE_FIRST_REPORTED_DATE" DATE, 
	"SAMPLE_LAST_REPORTED_DATE" DATE, 
	"SAR_ID" DECIMAL, 
	"CONTAMINANT_CODE" VARCHAR, 
	"RESULT_SIGN_CODE" VARCHAR, 
	"SAMPLE_MEASURE" DECIMAL, 
	"UNIT_OF_MEASURE" VARCHAR, 
	"SAR_FIRST_REPORTED_DATE" DATE, 
	"SAR_LAST_REPORTED_DATE" DATE
);

\copy sdwa_lcr_samples from 'data/sdwa_lcr_samples.csv' csv header;
