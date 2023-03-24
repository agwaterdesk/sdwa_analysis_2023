drop table if exists sdwa_ref_ansi_areas cascade;

CREATE TABLE sdwa_ref_ansi_areas (
	ansi_state_code TEXT, 
	ansi_entity_code TEXT, 
	ansi_name TEXT, 
	state_code TEXT
);

\copy sdwa_ref_ansi_areas from 'data/sdwa_ref_ansi_areas.csv' csv header;
