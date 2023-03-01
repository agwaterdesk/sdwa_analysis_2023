#!/usr/bin/env bash

task=${1:-all}

case $task in
  help)
    echo """Tasks you can run with this script:
 Optional:
  - create_schema: uses csvkit to guess SQL titles and dtypes as a create table statement
  - copy_headers: copies csvkit suggested import method from header folder to main 
 Default:
  - database: creates psql DB
  - import: runs all common core data imports
  - filter: limits school-level data to in-scope states
  - combine: adds district IDs and other characteristics to school-level data
If you don't specify a task, the script runs all of the default tasks in sequence. Optional tasks must be run manually.
    """
  ;;

  # HEADERS: generate createtable from headers (must be manually run)
  headers | create_schema)
    echo "=== Pulling headers to create schemas"
    pushd data
    mkdir -p headers
    for csv in *.csv; do
        base="${csv%.csv}"
        file_name="import_${base,,}"
        table_name="${base,,}"
        head -n 20 $csv | csvsql --no-constraints --tables $table_name > headers/$file_name.sql;
        echo "drop table if exists ${table_name} cascade;"$'\n\n'"$(cat headers/$file_name.sql)" > headers/$file_name.sql;
        echo $'\n'"\copy ${table_name} from 'data/${table_name}.csv' csv header;" >> headers/$file_name.sql;
    done
    popd
  ;;&

  headers | edit_schema)
    echo "=== Changing busted dtypes"
    find data/headers/*.sql -type f -exec sed -i '' 's/BOOLEAN/TEXT/g' {} \;
    find data/headers/*.sql -type f -exec sed -i '' 's/VARCHAR/TEXT/g' {} \;
    find data/headers/*.sql -type f -exec sed -i '' 's/DECIMAL/TEXT/g' {} \;
  ;;&

  headers | copy_headers)
    echo "=== Adding header files to root directory"
    cp -a data/headers/*.sql .
  ;;

  # ALL: main tasks (run by default)
  all | database)
    echo "=== Creating and populating database..."
    dropdb sdwa
    createdb sdwa
  ;;&

  # create folders
  all | folders)
    echo "=== Creating file structure"
    mkdir -p output
  ;;&

  # load data
  all | import)
    echo "=== Loading sdwa data..."
    for import in import*.sql; do
      psql sdwa -f $import;
    done
  ;;&

  # filter ccd data to in-scope topics
  all | filter)
    echo "=== Filtering sdwa data..."
    for filter in filter*.sql; do
      psql sdwa -f $filter;
    done
  ;;&

  # combine ccd enrollment with ccd directory info
  all | combine)
    echo "=== Joining sdwa tables..."
    for combine in combine*.sql; do
      psql sdwa -f $combine;
    done
  ;;&
esac