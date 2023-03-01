drop table if exists sdwa_ref_code_values cascade;

CREATE TABLE sdwa_ref_code_values (
	"VALUE_TYPE" TEXT, 
	"VALUE_CODE" TEXT, 
	"VALUE_DESCRIPTION" TEXT
);

\copy sdwa_ref_code_values from 'data/sdwa_ref_code_values.csv' csv header;
