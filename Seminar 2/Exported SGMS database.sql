CREATE TABLE enrollment (
 enrollment_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 intstrument_to_learn VARCHAR(200) NOT NULL,
 room_left BOOLEAN NOT NULL,
 skill_level VARCHAR(12) NOT NULL
);

ALTER TABLE enrollment ADD CONSTRAINT PK_enrollment PRIMARY KEY (enrollment_id);


CREATE TABLE ensemble (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 genre_played VARCHAR(200) NOT NULL,
 max_allowed_students INT NOT NULL,
 min_allowed_students INT NOT NULL
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (id);


CREATE TABLE group_lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 minimum_students INT NOT NULL,
 skill_level VARCHAR(12) NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (id);


CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 ensemble_proficiency BOOLEAN NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 first_name VARCHAR(200) NOT NULL,
 last_name VARCHAR(200) NOT NULL,
 UNIQUE(person_number)
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instrument_for_renting (
 instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand VARCHAR(200) NOT NULL,
 instrument_type VARCHAR(200) NOT NULL
);

ALTER TABLE instrument_for_renting ADD CONSTRAINT PK_instrument_for_renting PRIMARY KEY (instrument_id);


CREATE TABLE instrument_quantity (
 instrument_quantity INT NOT NULL,
 instrument_id INT NOT NULL
);

ALTER TABLE instrument_quantity ADD CONSTRAINT PK_instrument_quantity PRIMARY KEY (instrument_quantity,instrument_id);


CREATE TABLE lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_type VARCHAR(200) NOT NULL,
 skill_level VARCHAR(12) NOT NULL,
 appointed_time TIMESTAMP(10) NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);


CREATE TABLE price_for_ensemble (
 ensemble_id INT NOT NULL,
 price_for_student_ensemble NUMERIC(50) NOT NULL,
 payment_for_instructor_ensemble NUMERIC(50) NOT NULL
);

ALTER TABLE price_for_ensemble ADD CONSTRAINT PK_price_for_ensemble PRIMARY KEY (ensemble_id);


CREATE TABLE price_for_group (
 group_lesson_id INT NOT NULL,
 price_for_student_group INT NOT NULL,
 payment_for_instructor_group INT NOT NULL
);

ALTER TABLE price_for_group ADD CONSTRAINT PK_price_for_group PRIMARY KEY (group_lesson_id);


CREATE TABLE price_for_lesson (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 price_for_student_single NUMERIC(50) NOT NULL,
 payment_for_instructor_single NUMERIC(50) NOT NULL
);

ALTER TABLE price_for_lesson ADD CONSTRAINT PK_price_for_lesson PRIMARY KEY (lesson_id);


CREATE TABLE rental (
 instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lease_start_date DATE NOT NULL,
 monthly_cost NUMERIC(50) NOT NULL
);

ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (instrument_id);


CREATE TABLE specified_instruments_instructor (
 specified_instruments_instructor VARCHAR(200) NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE specified_instruments_instructor ADD CONSTRAINT PK_specified_instruments_instructor PRIMARY KEY (specified_instruments_instructor,instructor_id);


CREATE TABLE student (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 first_name VARCHAR(200) NOT NULL,
 last_name VARCHAR(200) NOT NULL,
 student_id INT,
 UNIQUE(person_number)
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


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
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 slot TIMESTAMP(10) NOT NULL,
 ensemble_id INT,
 group_lesson_id INT
);

ALTER TABLE time_slot ADD CONSTRAINT PK_time_slot PRIMARY KEY (id);


CREATE TABLE adress (
 address_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 street VARCHAR(200) NOT NULL,
 zip_code VARCHAR(200) NOT NULL,
 city VARCHAR(200) NOT NULL,
 student_id INT,
 instructor_id INT,
 instrument_id INT,
 lesson_id INT,
 group_lesson_id INT,
 ensemble_id INT
);

ALTER TABLE adress ADD CONSTRAINT PK_adress PRIMARY KEY (address_id);


CREATE TABLE available_instructor (
 availability BOOLEAN NOT NULL,
 lesson_id INT NOT NULL,
 instructor_id INT
);

ALTER TABLE available_instructor ADD CONSTRAINT PK_available_instructor PRIMARY KEY (available_instructor,lesson_id);


CREATE TABLE contact_detail (
 contact_detail_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 contact_person_first_name VARCHAR(200) NOT NULL,
 contact_person_last_name VARCHAR(200) NOT NULL,
 student_id INT,
 enrollment_id INT,
 instructor_id INT
);

ALTER TABLE contact_detail ADD CONSTRAINT PK_contact_detail PRIMARY KEY (contact_detail_id);


CREATE TABLE discount (
 price_reduction BOOLEAN NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE discount ADD CONSTRAINT PK_discount PRIMARY KEY (price_reduction,student_id);


CREATE TABLE email (
 email VARCHAR(200) NOT NULL,
 contact_detail_id INT NOT NULL,
 UNIQUE(email)
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email,contact_detail_id); 


CREATE TABLE location (
 location_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 campus_location VARCHAR(200) NOT NULL,
 address_id INT NOT NULL
);

ALTER TABLE location ADD CONSTRAINT PK_location PRIMARY KEY (location_id);


CREATE TABLE phone_number (
 phone_number VARCHAR(12) NOT NULL, 
 contact_detail_id INT NOT NULL,
 UNQIUE(phone_number)
);

ALTER TABLE phone_number ADD CONSTRAINT PK_phone_number PRIMARY KEY (phone_number ,contact_detail_id);


ALTER TABLE instrument_quantity ADD CONSTRAINT FK_instrument_quantity_0 FOREIGN KEY (instrument_id) REFERENCES instrument_for_renting (instrument_id);


ALTER TABLE price_for_ensemble ADD CONSTRAINT FK_price_for_ensemble_0 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id);


ALTER TABLE price_for_group ADD CONSTRAINT FK_price_for_group_0 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id);


ALTER TABLE price_for_lesson ADD CONSTRAINT FK_price_for_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY (instrument_id) REFERENCES instrument_for_renting (instrument_id);


ALTER TABLE specified_instruments_instructor ADD CONSTRAINT FK_specified_instruments_instructor_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_ensemble ADD CONSTRAINT FK_student_ensemble_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_ensemble ADD CONSTRAINT FK_student_ensemble_1 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id);


ALTER TABLE student_group_lesson ADD CONSTRAINT FK_student_group_lesson_0 FOREIGN KEY (student_id) REFERENCES group_lesson (id);
ALTER TABLE student_group_lesson ADD CONSTRAINT FK_student_group_lesson_1 FOREIGN KEY (group_lesson_id) REFERENCES student (id);


ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


ALTER TABLE time_slot ADD CONSTRAINT FK_time_slot_0 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id);
ALTER TABLE time_slot ADD CONSTRAINT FK_time_slot_1 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id);


ALTER TABLE adress ADD CONSTRAINT FK_adress_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE adress ADD CONSTRAINT FK_adress_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE adress ADD CONSTRAINT FK_adress_2 FOREIGN KEY (instrument_id) REFERENCES instrument_for_renting (instrument_id);
ALTER TABLE adress ADD CONSTRAINT FK_adress_3 FOREIGN KEY (lesson_id) REFERENCES ensemble (id);
ALTER TABLE adress ADD CONSTRAINT FK_adress_4 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id);
ALTER TABLE adress ADD CONSTRAINT FK_adress_5 FOREIGN KEY (ensemble_id) REFERENCES lesson (id);


ALTER TABLE available_instructor ADD CONSTRAINT FK_available_instructor_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);
ALTER TABLE available_instructor ADD CONSTRAINT FK_available_instructor_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE contact_detail ADD CONSTRAINT FK_contact_detail_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE contact_detail ADD CONSTRAINT FK_contact_detail_1 FOREIGN KEY (enrollment_id) REFERENCES enrollment (enrollment_id);
ALTER TABLE contact_detail ADD CONSTRAINT FK_contact_detail_2 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE discount ADD CONSTRAINT FK_discount_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE email ADD CONSTRAINT FK_email_0 FOREIGN KEY (contact_detail_id) REFERENCES contact_detail (contact_detail_id);


ALTER TABLE location ADD CONSTRAINT FK_location_0 FOREIGN KEY (address_id) REFERENCES adress (address_id);


ALTER TABLE phone_number ADD CONSTRAINT FK_phone_number_0 FOREIGN KEY (contact_detail_id) REFERENCES contact_detail (contact_detail_id);


