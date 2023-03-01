drop table sdwa_ref_code_values if exists cascade;

CREATE TABLE sdwa_ref_code_values (
	"VALUE_TYPE" VARCHAR, 
	"VALUE_CODE" VARCHAR, 
	"VALUE_DESCRIPTION" VARCHAR
);

\copy sdwa_ref_code_values from 'data/sdwa_ref_code_values.csv' csv header;
