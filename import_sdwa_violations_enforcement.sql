drop table if exists sdwa_violations_enforcement cascade;

CREATE TABLE sdwa_violations_enforcement (
	submissionyearquarter TEXT, 
	pwsid TEXT, 
	violation_id TEXT, 
	facility_id TEXT, 
	compl_per_begin_date DATE, 
	compl_per_end_date DATE, 
	non_compl_per_begin_date DATE, 
	non_compl_per_end_date TEXT, 
	violation_code TEXT, 
	violation_category_code TEXT, 
	is_health_based_ind TEXT, 
	contaminant_code TEXT, 
	viol_measure TEXT, 
	unit_of_measure TEXT, 
	federal_mcl TEXT, 
	state_mcl TEXT, 
	is_major_viol_ind TEXT, 
	severity_ind_cnt TEXT, 
	calculated_rtc_date DATE, 
	violation_status TEXT, 
	public_notification_tier TEXT, 
	calculated_pub_notif_tier TEXT, 
	viol_originator_code TEXT, 
	sample_result_id TEXT, 
	corrective_action_id TEXT, 
	rule_code TEXT, 
	rule_group_code TEXT, 
	rule_family_code TEXT, 
	viol_first_reported_date DATE, 
	viol_last_reported_date DATE, 
	enforcement_id TEXT, 
	enforcement_date DATE, 
	enforcement_action_type_code TEXT, 
	enf_action_category TEXT, 
	enf_originator_code TEXT, 
	enf_first_reported_date DATE, 
	enf_last_reported_date DATE
);

\copy sdwa_violations_enforcement from 'data/sdwa_violations_enforcement.csv' csv header;

/* notes 

13,795,740 rows
w
2,121,742 distinct violation ids

*/