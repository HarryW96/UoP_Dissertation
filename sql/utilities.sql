-- Count from tables
SELECT COUNT(*) FROM accommodation;
SELECT COUNT(*) FROM attendance;
SELECT COUNT(*) FROM building;
SELECT COUNT(*) FROM city_event;
SELECT COUNT(*) FROM course;
SELECT COUNT(*) FROM course_unit; 
SELECT COUNT(*) FROM csv_weather_data;
SELECT COUNT(*) FROM json_weather_data;
SELECT COUNT(*) FROM lecture;
SELECT COUNT(*) FROM lecturer;
SELECT COUNT(*) FROM portsmouth_postcodes;
SELECT COUNT(*) FROM postcode_staging;
SELECT COUNT(*) FROM room;
SELECT COUNT(*) FROM student;
SELECT COUNT(*) FROM test_weather;
SELECT COUNT(*) FROM travel_time;
SELECT COUNT(*) FROM unit;


-- Copying from building.csv data to building table. 
COPY building(building_name, street_address1, street_address2, city, county, postcode)
FROM 'location_data/Buildings.csv' DELIMITER ',' CSV HEADER;

-- Copying data from course.csv to course table.
COPY course(course_id, course_name, academic_year, study_mode)
FROM '/home/harryw/course_data/course/complete_courses.csv' DELIMITER ',' CSV HEADER;

-- Copying unit data from unit csv to unit table - not complete yet
COPY unit(unit_code, unit_coord, unit_name, short_name, credits, study_level)
FROM '/home/harryw/course_data/unit/complete_units.csv' DELIMITER ',' CSV HEADER;