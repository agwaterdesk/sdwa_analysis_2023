drop table sdwa_pn_violation_assoc if exists cascade;

CREATE TABLE sdwa_pn_violation_assoc (
	"SUBMISSIONYEARQUARTER" VARCHAR, 
	"PWSID" DECIMAL, 
	"PN_VIOLATION_ID" DECIMAL, 
	"RELATED_VIOLATION_ID" VARCHAR, 
	"COMPL_PER_BEGIN_DATE" DATE, 
	"COMPL_PER_END_DATE" DATE, 
	"NON_COMPL_PER_BEGIN_DATE" DATE, 
	"NON_COMPL_PER_END_DATE" VARCHAR, 
	"VIOLATION_CODE" VARCHAR, 
	"CONTAMINANT_CODE" DECIMAL, 
	"FIRST_REPORTED_DATE" DATE, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_pn_violation_assoc from 'data/sdwa_pn_violation_assoc.csv' csv header;
