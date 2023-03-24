drop table if exists sdwa_site_visits cascade;

CREATE TABLE sdwa_site_visits (
	submissionyearquarter TEXT, 
	pwsid TEXT, 
	visit_id TEXT, 
	visit_date DATE, 
	agency_type_code TEXT, 
	visit_reason_code TEXT, 
	management_ops_eval_code TEXT, 
	source_water_eval_code TEXT, 
	security_eval_code TEXT, 
	pumps_eval_code TEXT, 
	other_eval_code TEXT, 
	compliance_eval_code TEXT, 
	data_verification_eval_code TEXT, 
	treatment_eval_code TEXT, 
	finished_water_stor_eval_code TEXT, 
	distribution_eval_code TEXT, 
	financial_eval_code TEXT, 
	visit_comments TEXT, 
	first_reported_date DATE, 
	last_reported_date DATE
);

\copy sdwa_site_visits from 'data/sdwa_site_visits.csv' csv header;
