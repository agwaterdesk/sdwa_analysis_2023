\copy (select * from violations) to 'output/violations_deduped.csv' csv header;
\copy (select * from violations where violation_id = '#0001') to 'output/dupes.csv' csv header;

/*

\copy (select * from sdwa_violations_enforcement where violation_id = '#0001') to 'output/dupes.csv' csv header;

*/