drop table if exists sdwa_service_areas cascade;

CREATE TABLE sdwa_service_areas (
	submissionyearquarter TEXT, 
	pwsid TEXT, 
	service_area_type_code TEXT, 
	is_primary_service_area_code TEXT, 
	first_reported_date DATE, 
	last_reported_date DATE
);

\copy sdwa_service_areas from 'data/sdwa_service_areas.csv' csv header;
