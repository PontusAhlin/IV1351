CREATE TABLE enrollment (
 enrollment_id SERIAL ,
 intstrument_to_learn VARCHAR(200) NOT NULL,
 skill_level VARCHAR(12) NOT NULL,
  CHECK(skill_level IN ('Beginner', 'Intermediate', 'Advanced'))
);

ALTER TABLE enrollment ADD CONSTRAINT PK_enrollment PRIMARY KEY (enrollment_id);


CREATE TABLE instructor (

 id SERIAL ,
 ensemble_proficiency BOOLEAN NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 first_name VARCHAR(200) NOT NULL,
 last_name VARCHAR(200) NOT NULL,
 UNIQUE(person_number)
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instrument (
 instrument_id SERIAL ,
 brand VARCHAR(200) NOT NULL,
 instrument_type VARCHAR(200) NOT NULL,
 instrument_quantity INT
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE price_for_lessons (
 price_id SERIAL ,
 price_for_student NUMERIC(50),
 payment_for_instructor NUMERIC(50),
 lesson_type VARCHAR(12)
 CHECK(lesson_type IN ('individual','group','ensemble'))
);

ALTER TABLE price_for_lessons ADD CONSTRAINT PK_price_for_lessons PRIMARY KEY (price_id);


CREATE TABLE specified_instruments_instructor (
 instructor_id INT NOT NULL,
 specified_instruments_instructor VARCHAR(200) NOT NULL
);

ALTER TABLE specified_instruments_instructor ADD CONSTRAINT PK_specified_instruments_instructor PRIMARY KEY (instructor_id);


CREATE TABLE student (
 id SERIAL ,
 person_number VARCHAR(12) NOT NULL,
 first_name VARCHAR(200) NOT NULL,
 last_name VARCHAR(200) NOT NULL,
 discount_percentage DECIMAL(10, 2) DEFAULT 0.0,
 enrollment_id INT,
 UNIQUE(person_number)
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE available_instructor (
 availiability_id SERIAL ,
 instructor_id INT NOT NULL,
 available_time_start TIME(1) NOT NULL,
 available_time_end TIME(1) NOT NULL
);

ALTER TABLE available_instructor ADD CONSTRAINT PK_available_instructor PRIMARY KEY (availiability_id);


CREATE TABLE contact_detail (
 contact_detail_id SERIAL ,
 contact_person_first_name VARCHAR(200),
 contact_person_last_name VARCHAR(200),
 student_id INT,
 instructor_id INT
);

ALTER TABLE contact_detail ADD CONSTRAINT PK_contact_detail PRIMARY KEY (contact_detail_id);


CREATE TABLE email (
 email VARCHAR(200) NOT NULL,
 contact_detail_id INT NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email ,contact_detail_id);


CREATE TABLE ensemble (
 id SERIAL ,
 genre_played VARCHAR(200) NOT NULL,
 max_allowed_students INT NOT NULL,
 min_allowed_students INT NOT NULL,
 instructor_id INT,
 price_id INT 
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (id);


CREATE TABLE group_lesson (
 id SERIAL ,
 minimum_students INT NOT NULL,
 skill_level VARCHAR(12) NOT NULL,
 instructor_id INT,
 price_id INT,
 CHECK(skill_level IN ('Beginner', 'Intermediate', 'Advanced'))
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (id);


CREATE TABLE lesson (
 id SERIAL ,
 instrument_type VARCHAR(200) NOT NULL,
 skill_level VARCHAR(12) NOT NULL,
 appointed_time TIMESTAMP(1) NOT NULL,
 instructor_id INT,
 price_id INT,
 CHECK(skill_level IN ('Beginner', 'Intermediate', 'Advanced'))
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);


CREATE TABLE phone_number (
 phone_number VARCHAR(12) NOT NULL,
 contact_detail_id INT NOT NULL,
 UNIQUE(phone_number)

);

ALTER TABLE phone_number ADD CONSTRAINT PK_phone_number PRIMARY KEY (phone_number,contact_detail_id);


CREATE TABLE student_ensemble (
 student_id INT NOT NULL,
 ensemble_id INT NOT NULL
);



ALTER TABLE student_ensemble ADD CONSTRAINT PK_student_ensemble PRIMARY KEY (student_id,ensemble_id);


CREATE TABLE student_group_lesson (
 student_id INT NOT NULL,
 group_lesson_id INT NOT NULL
);


ALTER TABLE student_group_lesson ADD CONSTRAINT PK_student_group_lesson PRIMARY KEY (student_id,group_lesson_id);


CREATE TABLE student_lesson (
 student_id INT NOT NULL,
 lesson_id INT NOT NULL
);

ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id,lesson_id);


CREATE TABLE time_slot (
 id SERIAL ,
 time_slot TIMESTAMP(1) NOT NULL,
 ensemble_id INT,
 group_lesson_id INT,
 UNIQUE(time_slot)
);

ALTER TABLE time_slot ADD CONSTRAINT PK_time_slot PRIMARY KEY (id);


CREATE TABLE adress (
 address_id SERIAL ,
 street VARCHAR(200) NOT NULL,
 zip_code VARCHAR(200) NOT NULL,
 city VARCHAR(200) NOT NULL,
 student_id INT,
 instructor_id INT,
 lesson_id INT,
 group_lesson_id INT,
 ensemble_id INT
);

ALTER TABLE adress ADD CONSTRAINT PK_adress PRIMARY KEY (address_id);


CREATE TABLE instrument_rental (
 rental_id SERIAL ,
 lease_start_date DATE NOT NULL,
 monthly_cost NUMERIC(50) NOT NULL,
 student_id INT,
 instrument_id INT
);


ALTER TABLE instrument_rental ADD CONSTRAINT PK_instrument_rental PRIMARY KEY (rental_id);


CREATE TABLE sibling (
 sibling_id SERIAL ,
 student_id1 INT,
 student_id2 INT
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_id);


CREATE TABLE location (
 location_id SERIAL ,
 campus_location VARCHAR(200) NOT NULL,
 address_id INT NOT NULL
);

ALTER TABLE location ADD CONSTRAINT PK_location PRIMARY KEY (location_id);


ALTER TABLE specified_instruments_instructor ADD CONSTRAINT FK_specified_instruments_instructor_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (enrollment_id) REFERENCES enrollment (enrollment_id);


ALTER TABLE available_instructor ADD CONSTRAINT FK_available_instructor_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE contact_detail ADD CONSTRAINT FK_contact_detail_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE contact_detail ADD CONSTRAINT FK_contact_detail_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE email ADD CONSTRAINT FK_email_0 FOREIGN KEY (contact_detail_id) REFERENCES contact_detail (contact_detail_id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_1 FOREIGN KEY (price_id) REFERENCES price_for_lessons (price_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (price_id) REFERENCES price_for_lessons (price_id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (price_id) REFERENCES price_for_lessons (price_id);


ALTER TABLE phone_number ADD CONSTRAINT FK_phone_number_0 FOREIGN KEY (contact_detail_id) REFERENCES contact_detail (contact_detail_id);


ALTER TABLE student_ensemble ADD CONSTRAINT FK_student_ensemble_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_ensemble ADD CONSTRAINT FK_student_ensemble_1 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id);


ALTER TABLE student_group_lesson ADD CONSTRAINT FK_student_group_lesson_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_group_lesson ADD CONSTRAINT FK_student_group_lesson_1 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id);

ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


ALTER TABLE time_slot ADD CONSTRAINT FK_time_slot_0 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id);
ALTER TABLE time_slot ADD CONSTRAINT FK_time_slot_1 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id);


ALTER TABLE adress ADD CONSTRAINT FK_adress_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE adress ADD CONSTRAINT FK_adress_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);

ALTER TABLE adress ADD CONSTRAINT FK_adress_lesson FOREIGN KEY (lesson_id) REFERENCES lesson (id);
ALTER TABLE adress ADD CONSTRAINT FK_adress_group_lesson FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id);
ALTER TABLE adress ADD CONSTRAINT FK_adress_ensemble FOREIGN KEY (ensemble_id) REFERENCES ensemble (id);


ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_1 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);


ALTER TABLE location ADD CONSTRAINT FK_location_0 FOREIGN KEY (address_id) REFERENCES adress (address_id);

ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id1) REFERENCES student (id);
ALTER TABLE sibling ADD CONSTRAINT FK_sibling_1 FOREIGN KEY (student_id2) REFERENCES student (id);
