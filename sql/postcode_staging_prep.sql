create table postcode_staging(Postcode varchar, total int, males int, females int, occupied_households int);

select * from postcode_staging where postcode in ('PO1','PO2','PO3','PO4','PO5','PO6','PO7','PO8');

COPY postcode_staging FROM 'portsmouth_postcode_data.csv' DELIMITER ';' CSV HEADER;

select * from postcode_staging where postcode like any (array['PO1%','PO2%','PO3%','PO4%','PO5%','PO6%','PO7%','PO8%']);

create table portsmouth_postcodes as select * from postcode_staging where postcode like any (array['PO1%','PO2%','PO3%','PO4%','PO5%','PO6%','PO7%','PO8%']);

\copy portsmouth_postcodes to 'portsmouth_postcode_export.csv' csv header
