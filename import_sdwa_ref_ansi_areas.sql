drop table if exists sdwa_ref_ansi_areas cascade;

CREATE TABLE sdwa_ref_ansi_areas (
	"ANSI_STATE_CODE" TEXT, 
	"ANSI_ENTITY_CODE" TEXT, 
	"ANSI_NAME" TEXT, 
	"STATE_CODE" TEXT
);

\copy sdwa_ref_ansi_areas from 'data/sdwa_ref_ansi_areas.csv' csv header;
