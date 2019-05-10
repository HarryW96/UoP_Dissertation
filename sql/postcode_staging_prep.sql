-- Create Staging Table for all postcodes
CREATE TABLE postcode_staging(Postcode VARCHAR, total INT, males INT, females INT, occupied_households INT);

-- Copy data into staging table.
COPY postcode_staging FROM 'portsmouth_postcode_data.csv' DELIMITER ';' CSV HEADER;

-- Query to view Portsmouth codes
SELECT * FROM postcode_staging WHERE postcode IN ('PO1','PO2','PO3','PO4','PO5','PO6','PO7','PO8');

-- Query being run with results looked for in array
SELECT * FROM postcode_staging WHERE postcode LIKE any (array['PO1%','PO2%','PO3%','PO4%','PO5%','PO6%','PO7%','PO8%']);

-- Creation of portsmouth_postcodes table.
CREATE TABLE portsmouth_postcodes AS SELCT * FROM postcode_staging WHERE postcode LIKE any (array['PO1%','PO2%','PO3%','PO4%','PO5%','PO6%','PO7%','PO8%']);

-- Copy data from CSV to Portsmouth postcode table.
\COPY portsmouth_postcodes to 'portsmouth_postcode_export.csv' csv header
