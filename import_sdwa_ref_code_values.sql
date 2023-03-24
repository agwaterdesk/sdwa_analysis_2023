drop table if exists sdwa_ref_code_values cascade;

CREATE TABLE sdwa_ref_code_values (
	value_type TEXT, 
	value_code TEXT, 
	value_description TEXT
);

\copy sdwa_ref_code_values from 'data/sdwa_ref_code_values.csv' csv header;
