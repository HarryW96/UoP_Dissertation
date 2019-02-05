-- File used to build the tables for UoP dissertation. 
CREATE TABLE Course(
    course_id VARCHAR UNIQUE NOT NULL,
    course_name VARCHAR NOT NULL,
    study_mode VARCHAR NOT NULL,
    academic_year INT NOT NULL,
    PRIMARY KEY (course_id)
);
-- Reflected change below in table creation above although kept for records.
-- ALTER TABLE course ALTER COLUMN academic_year TYPE INT USING academic_year::INTEGER;


CREATE TABLE Student(
    student_id VARCHAR UNIQUE NOT NULL,
    course_id VARCHAR NOT NULL,
    transport_method VARCHAR NOT NULL,
    PRIMARY KEY (student_id),
    CONSTRAINT student_course_id_fkey FOREIGN KEY (course_id)
        REFERENCES Course (course_id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE Lecturer(
    lecturer_id VARCHAR UNIQUE NOT NULL,
    lecturer_name VARCHAR NOT NULL,
    email_address VARCHAR NOT NULL,
    contact_no VARCHAR,
    PRIMARY KEY (lecturer_id)
);

CREATE TABLE Unit(
    unit_code VARCHAR UNIQUE NOT NULL,
    unit_coord VARCHAR NOT NULL,
    unit_name VARCHAR NOT NULL,
    short_name VARCHAR NOT NULL,
    credits INTEGER NOT NULL,
    study_level INTEGER NOT NULL,
    PRIMARY KEY (unit_code),
    CONSTRAINT unit_unit_coord_fkey FOREIGN KEY (unit_coord)
        REFERENCES Lecturer (lecturer_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Course_unit(
    course_id VARCHAR UNIQUE NOT NULL,
    unit_code VARCHAR NOT NULL,
    optional BOOLEAN NOT NULL,
    PRIMARY KEY (course_id),
    CONSTRAINT course_unit_course_id_fkey FOREIGN KEY (course_id)
        REFERENCES Course (course_id)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT course_unit_unit_code_fkey FOREIGN KEY (unit_code)
        REFERENCES Unit (unit_code) 
        ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE Building(
    building_id SERIAL NOT NULL,
    building_name VARCHAR NOT NULL,
    street_address1 VARCHAR,
    street_address2 VARCHAR,
    city VARCHAR,
    county VARCHAR,
    postcode VARCHAR,
    PRIMARY KEY (building_id)
);

CREATE TABLE Room(
    building_id SERIAL NOT NULL,
    room_code VARCHAR UNIQUE NOT NULL,
    building_name VARCHAR NOT NULL,
    room_no VARCHAR NOT NULL,
    PRIMARY KEY (room_code),
    CONSTRAINT room_bui_id_fkey FOREIGN KEY (building_id)
        REFERENCES building (building_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- This was added later although I've added it to the create table statement above.
-- ALTER TABLE Room ADD COLUMN building_name VARCHAR NOT NULL;

CREATE TABLE Lecture(
    lecture_id SERIAL NOT NULL,
    unit_code VARCHAR NOT NULL,
    room_code VARCHAR NOT NULL,
    lecturer_id VARCHAR NOT NULL,
    -- lecture_date_time ??
    lecture_time TIME WITH TIME ZONE NOT NULL,
    lecture_date DATE NOT NULL,
    PRIMARY KEY (lecture_id),
    CONSTRAINT lecture_unit_code_fkey FOREIGN KEY(unit_code)
        REFERENCES Unit (unit_code)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT lecture_room_id_fkey FOREIGN KEY(room_code)
        REFERENCES Room (room_code)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT lecture_lecturer_id_fkey FOREIGN KEY(lecturer_id)
        REFERENCES Lecturer (lecturer_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Attendance(
    student_id VARCHAR NOT NULL,
    lecture_id SERIAL NOT NULL,
    attended BOOLEAN NOT NULL,
    PRIMARY KEY (student_id, lecture_id),
    CONSTRAINT attendance_student_id_fkey FOREIGN KEY(student_id)
        REFERENCES Student (student_id)
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT attendance_lecture_id_fkey FOREIGN KEY(lecture_id)
        REFERENCES Lecture (lecture_id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Reconsider the fkey constraint as I don't think I can match
-- student data to the accommodation/place they're living.
CREATE TABLE Accommodation(
    accommodation_id SERIAL NOT NULL,
    student_id VARCHAR NOT NULL,
    room_no VARCHAR,
    building_name VARCHAR NOT NULL,
    street_address1 VARCHAR NOT NULL,
    street_address2 VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    county VARCHAR NOT NULL,
    postcode VARCHAR NOT NULL,
    PRIMARY KEY (accommodation_id),
    CONSTRAINT accomodation_student_id_fkey FOREIGN KEY(student_id)
        REFERENCES Student (student_id)
        ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE Travel_Time(
    travel_id SERIAL NOT NULL,
    accommodation_id SERIAL NOT NULL,
    building_id SERIAL NOT NULL,
    time_of_travel TIME NOT NULL,
    walk_time TIME,
    drive_time TIME,
    transit_time TIME,
    cycle_time TIME,
    PRIMARY KEY (travel_id),
    CONSTRAINT travel_time_accom_id_fkey FOREIGN KEY(accommodation_id)
        REFERENCES Accommodation (accommodation_id)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT travel_time_bui_id_fkey FOREIGN KEY(building_id)
        REFERENCES Building (building_id)
        ON UPDATE CASCADE ON DELETE NO ACTION 
);

-- Come back to, build 2 weather tables from JSON & CSV and then collate into single table.
CREATE TABLE Weather(
    weather_date TIMESTAMP UNIQUE NOT NULL,
    temp_c FLOAT NOT NULL,
    humidity INT NOT NULL,
    wind_speed INT NOT NULL,
    weather_description VARCHAR NOT NULL,
    rain_mm FLOAT,
    PRIMARY KEY (weather_date)
);

CREATE TABLE City_Event(
    event_id SERIAL NOT NULL,
    event_name VARCHAR NOT NULL,
    start_datetime TIMESTAMP NOT NULL,
    end_datetime TIMESTAMP NOT NULL,
    PRIMARY KEY (event_id)
);






