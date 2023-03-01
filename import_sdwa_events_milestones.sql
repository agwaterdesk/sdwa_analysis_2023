drop table if exists sdwa_events_milestones cascade;

CREATE TABLE sdwa_events_milestones (
	"SUBMISSIONYEARQUARTER" TEXT, 
	"PWSID" TEXT, 
	"EVENT_SCHEDULE_ID" TEXT, 
	"EVENT_END_DATE" DATE, 
	"EVENT_ACTUAL_DATE" DATE, 
	"EVENT_COMMENTS_TEXT" TEXT, 
	"EVENT_MILESTONE_CODE" TEXT, 
	"EVENT_REASON_CODE" TEXT, 
	"FIRST_REPORTED_DATE" DATE, 
	"LAST_REPORTED_DATE" DATE
);

\copy sdwa_events_milestones from 'data/sdwa_events_milestones.csv' csv header;
