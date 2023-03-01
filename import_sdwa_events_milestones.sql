drop table sdwa_events_milestones if exists cascade;

CREATE TABLE sdwa_events_milestones (
	"SUBMISSIONYEARQUARTER" VARCHAR, 
	"PWSID" DECIMAL, 
	"EVENT_SCHEDULE_ID" DECIMAL, 
	"EVENT_END_DATE" DATE, 
	"EVENT_ACTUAL_DATE" DATE, 
	"EVENT_COMMENTS_TEXT" VARCHAR, 
	"EVENT_MILESTONE_CODE" VARCHAR, 
	"EVENT_REASON_CODE" VARCHAR, 
	"FIRST_REPORTED_DATE" DATE, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_events_milestones from 'data/sdwa_events_milestones.csv' csv header;
