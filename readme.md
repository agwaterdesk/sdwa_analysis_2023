SDWA data processing pipeline
====================================

Prerequisites
-------------

* Bash v4 or higher
* [csvkit](https://csvkit.readthedocs.io/en/latest/tutorial/1_getting_started.html#installing-csvkit) is necessary to run the optional tasks for generating schemas from csv headers, but the main task sequence will run without it
* Postgres installed and runnable as the current user

Data sourcing
------------

This data is sourced from the EPA's SDWA database. EPA documentation is [available here](https://echo.epa.gov/tools/data-downloads/sdwa-download-summary). This pipeline loads and imports all tables.

The data can be downloaded [from the EPA website](https://echo.epa.gov/files/echodownloads/SDWA_latest_downloads.zip). Place it in the `data/` folder in `.csv` format.

Additional information is available on the [EPA's downloads page](https://echo.epa.gov/tools/data-downloads).

Instructions
------------

### To run

Execute ``./runme.sh`` to step through the various scripts. That file is also commented, so you can see the individual processing steps and re-run them once the pipeline is initialized.

Execute a specific task as ``./runme.sh task_name``

### Sample query

To test import success try the following and select from any table:

`psql sdwa`

### Troubleshooting

If you receive an error stating that you don't have permissions to run `runme.sh`, but your permissions indicate you should be able to run the file, check whether the file is executable.

`ls -alh`

To make executable: 

`chmod 755 runme.sh`
