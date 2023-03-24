drop table if exists sdwa_events_milestones cascade;

CREATE TABLE sdwa_events_milestones (
	submissionyearquarter TEXT, 
	pwsid TEXT, 
	event_schedule_id TEXT, 
	event_end_date DATE, 
	event_actual_date DATE, 
	event_comments_text TEXT, 
	event_milestone_code TEXT, 
	event_reason_code TEXT, 
	first_reported_date DATE, 
	last_reported_date DATE
);

\copy sdwa_events_milestones from 'data/sdwa_events_milestones.csv' csv header;
