drop table if exists sdwa_pn_violation_assoc cascade;

CREATE TABLE sdwa_pn_violation_assoc (
	submissionyearquarter TEXT, 
	pwsid TEXT, 
	pn_violation_id TEXT, 
	related_violation_id TEXT, 
	compl_per_begin_date DATE, 
	compl_per_end_date DATE, 
	non_compl_per_begin_date DATE, 
	non_compl_per_end_date TEXT, 
	violation_code TEXT, 
	contaminant_code TEXT, 
	first_reported_date DATE, 
	last_reported_date DATE
);

\copy sdwa_pn_violation_assoc from 'data/sdwa_pn_violation_assoc.csv' csv header;
