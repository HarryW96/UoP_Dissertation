-- File used to build the tables for UoP dissertation. 
CREATE TABLE Student(
    student_id VARCHAR2 UNIQUE NOT NULL,
    course_id VARCHAR2 NOT NULL,
    transport_method VARCHAR2 NOT NULL,
    PRIMARY KEY (student_id),
    CONSTRAINT student_course_id_fkey FOREIGN KEY (course_id)
        REFERENCES Course (course_id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE Course(
    course_id VARCHAR2 UNIQUE NOT NULL,
    course_name VARCHAR2 NOT NULL,
    study_mode VARCHAR2 NOT NULL,
    academic_year VARCHAR2 NOT NULL,
    PRIMARY KEY (course_id)
);

CREATE TABLE Course_unit(
    course_id VARCHAR2 UNIQUE NOT NULL,
    unit_code VARCHAR2 NOT NULL,
    optional BOOLEAN NOT NULL,
    PRIMARY KEY (course_id, role_id),
    CONSTRAINT course_unit_course_id_fkey FOREIGN KEY (course_id)
        REFERENCES Course (course_id)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT course_unit_unit_code_fkey FOREIGN KEY (unit_code)
        REFERENCES Unit (unit_code) 
        ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE Unit(
    unit_code VARCHAR2 UNIQUE NOT NULL,
    unit_coord VARCHAR2 NOT NULL,
    unit_name VARCHAR2 NOT NULL,
    short_name VARCHAR2 NOT NULL,
    credits INTEGER NOT NULL,
    study_level INTEGER NOT NULL,
    PRIMARY KEY (unit_code),
    CONSTRAINT unit_unit_coord_fkey FOREIGN KEY (unit_coord)
        REFERENCES Lecturer (lecturer_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Lecturer(
    lecturer_id VARCHAR2 UNIQUE NOT NULL,
    lecturer_name VARCHAR2 NOT NULL,
    email_address VARCHAR2 NOT NULL,
    contact_no VARCHAR2,
    PRIMARY KEY (lecturer_id)
);

CREATE TABLE Lecture(
    lecture_id SERIAL NOT NULL,
    unit_code VARCHAR2 NOT NULL,
    room_id VARCHAR2 NOT NULL,
    lecturer_id VARCHAR2 NOT NULL,
    -- lecture_date_time ??
    lecture_time TIME WITH TIME ZONE NOT NULL,
    lecture_date DATE NOT NULL,
    PRIMARY KEY (lecture_id),
    CONSTRAINT lecture_unit_code_fkey (unit_code)
        REFERENCES Unit (unit_code)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT lecture_room_id_fkey (room_id)
        REFERENCES Room (room_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT lecture_lecturer_id_fkey
        REFERENCES Lecturer (lecturer_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Attendance(
    student_id VARCHAR2 NOT NULL,
    lecture_id SERIAL NOT NULL,
    attended BOOLEAN NOT NULL,
    PRIMARY KEY (student_id, lecture_id),
    CONSTRAINT attendance_student_id_fkey (student_id)
        REFERENCES Student (student_id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
    CONSTRAINT attendance_lecture_id_fkey (lecture_id)
        REFERENCES Lecture (lecture_id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE Accomodation(
    accomodation_id SERIAL NOT NULL,
    student_id VARCHAR2 NOT NULL,
    room_no VARCHAR2,
    building_name VARCHAR2 NOT NULL,
    street_address1 VARCHAR2 NOT NULL,
    street_address2 VARCHAR2 NOT NULL,
    city VARCHAR2 NOT NULL,
    county VARCHAR2 NOT NULL,
    postcode VARCHAR2 NOT NULL,
    PRIMARY KEY (acommodation_id),
    CONSTRAINT accomodation_student_id_fkey (student_id)
        REFERENCES Student (student_id)
        ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE Travel_Time(
    travel_id SERIAL NOT NULL,
    accom_id VARCHAR2 NOT NULL,
    bui_id VARCHAR2 NOT NULL,
    time_of_travel TIME NOT NULL,
    walk_time TIME,
    drive_time TIME,
    transit_time TIME,
    cycle_time TIME,
    PRIMARY KEY (travel_id),
    CONSTRAINT travel_time_accom_id_fkey (accom_id)
        REFERENCES Accomodation (accomodation_id)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT travel_time_bui_id_fkey (bui_id)
        REFERENCES building (building_id)
        ON UPDATE CASCADE ON DELETE NO ACTION 
);

CREATE TABLE Building(
    building_id SERIAL NOT NULL,
    building_name VARCHAR2 NOT NULL,
    street_address1 VARCHAR2,
    street_address2 VARCHAR2,
    city VARCHAR2,
    county VARCHAR2,
    postcode VARCHAR2,
    PRIMARY KEY (building_id)
);

CREATE TABLE Room(
    room_code VARCHAR2 UNIQUE NOT NULL,
    bui_id VARCHAR2 NOT NULL,
    room_no VARCHAR2 NOT NULL,
    PRIMARY KEY (room_code),
    CONSTRAINT room_bui_id_fkey (bui_id)
        REFERENCES building (bui_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Come back to, build 2 weather tables from JSON & CSV and then collate into single table.
CREATE TABLE Weather(
    weather_date DATETIME UNIQUE NOT NULL,
    temp_c FLOAT NOT NULL,
    humidity INT NOT NULL,
    wind_speed INT NOT NULL,
    weather_description VARCHAR NOT NULL,
    rain_mm FLOAT NOT NULL,
    PRIMARY KEY (weather_date)
);

CREATE TABLE City_Event(
    event_id SERIAL NOT NULL,
    event_name VARCHAR2 NOT NULL,
    start_datetime DATETIME NOT NULL,
    end_datetime DATETIME NOT NULL,
    PRIMARY KEY (event_id)
);






