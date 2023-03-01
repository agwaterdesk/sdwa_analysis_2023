drop table if exists sdwa_pn_violation_assoc cascade;

CREATE TABLE sdwa_pn_violation_assoc (
	"SUBMISSIONYEARQUARTER" TEXT, 
	"PWSID" TEXT, 
	"PN_VIOLATION_ID" TEXT, 
	"RELATED_VIOLATION_ID" TEXT, 
	"COMPL_PER_BEGIN_DATE" DATE, 
	"COMPL_PER_END_DATE" DATE, 
	"NON_COMPL_PER_BEGIN_DATE" DATE, 
	"NON_COMPL_PER_END_DATE" TEXT, 
	"VIOLATION_CODE" TEXT, 
	"CONTAMINANT_CODE" TEXT, 
	"FIRST_REPORTED_DATE" DATE, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_pn_violation_assoc from 'data/sdwa_pn_violation_assoc.csv' csv header;
