drop table if exists basin_flags cascade;

CREATE TABLE basin_flags (
    basin_flag TEXT,
    state_cd TEXT,
    state_nm TEXT
);

\copy basin_flags from 'data/basin_flags.csv' csv header;
