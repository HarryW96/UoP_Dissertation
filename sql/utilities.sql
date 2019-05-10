-- A collection of useful/repeated SQL statements that were used regularly over the courrse of the project.

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

-- Inserting extra rows that were not included in course data for some reason - included in the original data as well.
INSERT INTO Course(course_id, course_name, academic_year, study_mode)
VALUES
    ('C2187S', 'BSC (HONS) WEB TECHNOLOGIES', 2018, 'Sandwich (Optional)'),
    ('C0968S', 'BSC (HONS) SOFTWARE ENGINEERING', 2018, 'Sandwich (Optional)'),
    ('C2407S', 'BSC (HONS) FORENSIC COMPUTING',	2018, 'Sandwich (Optional'),
    ('C2686S', 'BSC (HONS) DATA SCIENCE AND ANALYTICS',	2018, 'Sandwich (Optional'),
    ('C2753S', 'BSC (HONS) CYBER SECURITY AND FORENSIC COMPUTING',	2018, 'Sandwich (Optional');

-- Copying unit data from unit csv to unit table
COPY unit(unit_code, unit_coord, unit_name, short_name, credits, study_level)
FROM '/home/harryw/course_data/unit/complete_units.csv' DELIMITER ',' CSV HEADER;

-- Copying lecturer data from lecturer csv to lecturer table.
COPY lecturer(lecturer_id, lecturer_fName, email_address, lecturer_lName)
FROM '/home/harryw/lecturer_data/lecturer_data.csv' DELIMITER ',' CSV HEADER;

-- Copying from unit_data.csv data to unit table. 
COPY unit(unit_code, coordinator_id, unit_name, short_name, credits, study_level)
FROM '/home/harryw/course_data/unit/unit_list_utf.csv' DELIMITER ',' CSV HEADER;

-- Copying from course_unit.csv data to course_unit table.
COPY course_unit(course_id, unit_code, course_option, course_unit_year)
FROM '/home/harryw/course_data/course_unit.csv' DELIMITER ',' CSV HEADER;

-- Copying from term_dates.csv data to termdates table.
COPY termdates_test
FROM '/home/harryw/term_dates_test.csv' DELIMITER ',' CSV HEADER;

-- Copying from lecture_data.csv data to lecture table.
COPY lecture(unit_code, room_code, lecturer_id, lecture_start_time, lecture_weeks, lecture_day, unit_name, lecture_end_time, module_type)
FROM '/home/harryw/lecture_data.csv' DELIMITER ',' CSV HEADER;

COPY student(student_id, course_id)
FROM '/home/harryw/student_data_insert.csv' DELIMITER ',' CSV HEADER;

COPY student(student_id, course_id)
FROM '/home/harryw/student_data_insert.csv' DELIMITER ',' CSV HEADER;

COPY lecture(unit_code, lecture_start_time,lecture_day, unit_name, lecture_end_time, module_type, lecture_weeks)
FROM '/home/harryw/Unit_Times.csv' DELIMITER ',' CSV HEADER;

COPY attendance_test
FROM '/home/harryw/attendance_data.csv' DELIMITER ',' CSV HEADER;

COPY weather_data
FROM '/home/harryw/weather_data/Weather_080119-010419.csv' DELIMITER ',' CSV HEADER;

COPY city_event(location, event_name, start_datetime, end_datetime)
FROM '/home/harryw/event_data/Portsmouth_events.csv' DELIMITER ',' CSV HEADER;

COPY lecture(unit_code, lecture_start_time, lecture_day, unit_name, lecture_end_time, module_type, lecture_weeks)
FROM '/home/harryw/lecture_output_test.csv' DELIMITER ',' CSV HEADER;

COPY attendance(attended, week, student_id, unit_id)
FROM '/home/harryw/attendance_extract_test.csv' DELIMITER ',' CSV HEADER;

-- Testing exports from SQL query for attendance data.
\COPY (SELECT * FROM attendance_test AT JOIN lecture l ON AT.unit_id = l.unit_code WHERE AT.week_no = l.week) TO 'HARRY_TEST_JOIN_EXPORT.CSV' WITH csv;

-- Ensuring copy query used gets correct output by exporting to CSV first to overlook the data.
\COPY (SELECT * FROM attendance AT JOIN lecture l ON AT.unit_id = l.unit_code JOIN course_unit cu ON cu.unit_code = l.unit_code JOIN course c ON cu.course_id = c.course_id JOIN unit u ON cu.unit_code = u.unit_code WHERE AT.week = l.lecture_weeks) TO 'HARRY_TEST_JOIN_EXPORT2.CSV' WITH csv;

-----------------------------------------------------------------------------------------------
-- Manually inserting some unit data as the unit codes did not match up in some areas.
INSERT INTO Unit(unit_code, unit_name, short_name, credits, study_level) VALUES
('U22389', 'ADVANCED DATABASE CONCEPTS (DL)','ADCONDL', 20, 'FHEQ_6'),
('U22445', 'ADVANCED NETWORKS (DL)', 'ADNETDL', 20, 'FHEQ_6'),
('U22374', 'ADVANCED SYSTEMS DEVELOPMENT (DL)', 'ADSYSDL', 20, 'FHEQ_6'),
('U22510', 'INFORMATION SYSTEMS MANAGEMENT (DL)', 'ISMANDL',  20, 'FHEQ_6'),
('U22376', 'PROJECT MANAGEMENT (DL)', 'PRMANDL',  20, 'FHEQ_6'),
('U25537', 'RESEARCH INTERNAL PLACEMENT (DL)', 'RESINTDL',  30, 'FHEQ_7'),
('U25535', 'RESEARCH PROJECT (DL)', 'RESPRODL',  90, 'FHEQ_8');

INSERT INTO Unit(unit_code, unit_name, short_name, credits, study_level) VALUES
('U22375', 'E-COMMERCE - A CRITICAL EVALUATION OF TECHNOLOGY (DL)', 'ECRETDL', 20, 'FHEQ_6');

INSERT INTO Unit(unit_code, unit_name, short_name, credits, study_level) VALUES
('U26107', 'LEARNING FROM EXPERIENCE TEACHING PLACEMENT', 'U2610', 20, 'FHEQ_5');

INSERT INTO Unit(unit_code, unit_name, short_name, credits, study_level) VALUES
('U25536', 'RESEARCH PREPARATION AND DEVELOPMENT (DL)', 'RESPREDL', 60, 'FHEQ_7');

INSERT INTO Unit(unit_code, unit_name, short_name, credits, study_level) VALUES
('U20749', 'OPERATIONAL RESEARCH', 'M251', 20, 'FHEQ_6');

INSERT INTO Unit(unit_code, unit_name, short_name, credits, study_level) VALUES
('U21466', 'SPANISH GENERAL LANGUAGE GRADE 4', 'SLG4', 20, 'FHEQ_5');

INSERT INTO Unit(unit_code, unit_name, short_name, credits, study_level) VALUES
('U24631', 'SPECIALIST ACADEMIC ENGLISH FOR POSTGRADUATES', 'U24631', 0, 'FHEQ_7');
----------------------------------------------------------------------------------------------- 

-- Test queries to ensure joins and relations have worked correctly and data returns as expected.
SELECT 
AT.attended, 
AT.student_id, 
l.unit_name, 
l.module_type, 
l.lecture_start_time, 
l.lecture_end_time 
FROM attendance AT 
JOIN lecture l ON AT.unit_id = l.unit_code 
WHERE AT.week = l.lecture_weeks;

SELECT
COUNT(AT.attended)
FROM attendance_test AT
JOIN lecture l ON AT.unit_id = l.unit_code
WHERE AT.week_no = l.week
AND unit_name = '3D COMPUTER GRAPHICS AND ANIMATION'
AND AT.week_no = 2
AND AT.attended > 0;

SELECT *
FROM attendance AT
JOIN lecture l ON AT.unit_id = l.unit_code
JOIN course_unit cu ON cu.unit_code = l.unit_code
JOIN course c ON cu.course_id = c.course_id
JOIN unit u ON cu.unit_code = u.unit_code
WHERE AT.week = l.lecture_weeks;

