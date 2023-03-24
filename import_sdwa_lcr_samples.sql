drop table if exists sdwa_lcr_samples cascade;

CREATE TABLE sdwa_lcr_samples (
	submissionyearquarter TEXT, 
	pwsid TEXT, 
	sample_id TEXT, 
	sampling_end_date DATE, 
	sampling_start_date DATE, 
	reconciliation_id TEXT, 
	sample_first_reported_date DATE, 
	sample_last_reported_date DATE, 
	sar_id TEXT, 
	contaminant_code TEXT, 
	result_sign_code TEXT, 
	sample_measure TEXT, 
	unit_of_measure TEXT, 
	sar_first_reported_date DATE, 
	sar_last_reported_date DATE
);

\copy sdwa_lcr_samples from 'data/sdwa_lcr_samples.csv' csv header;
