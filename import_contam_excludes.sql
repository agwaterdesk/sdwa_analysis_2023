drop table if exists contam_excludes cascade;

CREATE TABLE contam_excludes (
    name TEXT,
    code TEXT,
    flag TEXT
);

\copy contam_excludes from 'data/contam_excludes.csv' csv header;
