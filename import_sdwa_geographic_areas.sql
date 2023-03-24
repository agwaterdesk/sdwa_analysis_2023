drop table if exists sdwa_geographic_areas cascade;

CREATE TABLE sdwa_geographic_areas (
	submissionyearquarter TEXT, 
	pwsid TEXT, 
	geo_id TEXT, 
	area_type_code TEXT, 
	tribal_code TEXT, 
	state_served TEXT, 
	ansi_entity_code TEXT, 
	zip_code_served TEXT, 
	city_served TEXT, 
	county_served TEXT, 
	last_reported_date DATE
);

\copy sdwa_geographic_areas from 'data/sdwa_geographic_areas.csv' csv header;
