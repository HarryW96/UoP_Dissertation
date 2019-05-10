# UoP_Dissertation
UP785080

Repository used for development of 2018/19 University of Portsmouth dissertation artifact

Please note: The project cannot be run unless the user has an account or access to the Ripley machine running the PostgreSQL instance. For demo purposes this can be accessed and run by the developer although has not been made public due to potentially sensitive data.

The 'table_build.sql is not the actual creation statements, this file is here purely to show the original tables created and the process and changes they went through over the course of the project.
FOR THE REAL CREATION STATEMENT PLEASE VIEW: postgres_export.sql.

To run the postgres_export.sql file run the statement below from the command line (with the appropriate file location set.)
psql -f '/path/to/file/test_export.sql' -d up785080_artefact

Please note a database with the name up785080_artefact will have to be available which can be created with the below statement.
CREATE DATABASE up785080_artefact