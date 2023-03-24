drop table if exists sdwa_facilities cascade;

CREATE TABLE sdwa_facilities (
	submissionyearquarter TEXT, 
	pwsid TEXT, 
	facility_id TEXT, 
	facility_name TEXT, 
	state_facility_id TEXT, 
	facility_activity_code TEXT, 
	facility_deactivation_date DATE, 
	facility_type_code TEXT, 
	submission_status_code TEXT, 
	is_source_ind TEXT, 
	water_type_code TEXT, 
	availability_code TEXT, 
	seller_treatment_code TEXT, 
	seller_pwsid TEXT, 
	seller_pws_name TEXT, 
	filtration_status_code TEXT, 
	is_source_treated_ind TEXT, 
	first_reported_date DATE, 
	last_reported_date DATE
);

\copy sdwa_facilities from 'data/sdwa_facilities.csv' csv header;
