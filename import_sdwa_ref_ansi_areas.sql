drop table sdwa_ref_ansi_areas if exists cascade;

CREATE TABLE sdwa_ref_ansi_areas (
	"ANSI_STATE_CODE" DECIMAL, 
	"ANSI_ENTITY_CODE" DECIMAL, 
	"ANSI_NAME" VARCHAR, 
	"STATE_CODE" VARCHAR
);

\copy sdwa_ref_ansi_areas from 'data/sdwa_ref_ansi_areas.csv' csv header;
