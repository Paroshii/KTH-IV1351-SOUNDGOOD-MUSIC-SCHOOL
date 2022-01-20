CREATE TABLE administrative_staff (
 admin_id INT NOT NULL,
 staff_id INT NOT NULL,
 name VARCHAR(50) NOT NULL,
 job_title VARCHAR(50) NOT NULL,
 start_date VARCHAR(50) NOT NULL,
 address VARCHAR(50) NOT NULL,
 staff_Id VARCHAR(50),
 student_application_number VARCHAR(50)
);

ALTER TABLE administrative_staff ADD CONSTRAINT PK_administrative_staff PRIMARY KEY (admin_id);


CREATE TABLE booking_lesson (
 booking_id INT NOT NULL,
 student_name VARCHAR(50) NOT NULL,
 lesson_booking_date DATE NOT NULL,
 total_price INT,
 student_id VARCHAR(50) NOT NULL,
 instructor_name VARCHAR(50) NOT NULL,
 instructor_id VARCHAR(50) NOT NULL,
 admin_id INT
);

ALTER TABLE booking_lesson ADD CONSTRAINT PK_booking_lesson PRIMARY KEY (booking_id);


CREATE TABLE email (
 email VARCHAR(100) NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email);


CREATE TABLE instructor (
 instructor_id INT NOT NULL,
 person_number CHAR(12) NOT NULL,
 teacher_id VARCHAR(50),
 employee_start_date DATE,
 staff_id INT NOT NULL,
 level_of_skill INTERVAL(10),
 age CHAR(10),
 address CHAR(10)
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id,person_number);


CREATE TABLE instrument (
 instrument_id VARCHAR(50) NOT NULL,
 instrument_type VARCHAR(50) NOT NULL,
 price_per_month INT NOT NULL,
 brand VARCHAR(50),
 is_rented VARCHAR(10)
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE instrument_rental (
 instrument_id VARCHAR(50) NOT NULL,
 rental_start_date DATE,
 is_rented INTERVAL(10) NOT NULL,
 student_id VARCHAR(50),
 rental_end_date VARCHAR(10),
 payment_id VARCHAR(10)
);

ALTER TABLE instrument_rental ADD CONSTRAINT PK_instrument_rental PRIMARY KEY (instrument_id);


CREATE TABLE person (
 person_number CHAR(12) NOT NULL,
 name VARCHAR(50) NOT NULL,
 age INT NOT NULL,
 address VARCHAR(50) NOT NULL,
 instructor_id INT,
 last_name CHAR(12),
 student_id VARCHAR(100)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_number);


CREATE TABLE person_email (
 email VARCHAR(50) NOT NULL,
 person_number CHAR(12) NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (email,person_number);


CREATE TABLE phone (
 phone_no VARCHAR(20) NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (phone_no);


CREATE TABLE schedule (
 lesson_id INT NOT NULL,
 schedule_id CHAR(10) NOT NULL,
 room INT NOT NULL,
 time_start TIMESTAMP(10) NOT NULL,
 address VARCHAR(50) NOT NULL,
 type_of_lesson VARCHAR(50) NOT NULL,
 time_end TIMESTAMP(10) NOT NULL
);

ALTER TABLE schedule ADD CONSTRAINT PK_schedule PRIMARY KEY (lesson_id,schedule_id);


CREATE TABLE staff_payroll (
 staff_id INT NOT NULL,
 date DATE,
 Instructor_Id VARCHAR(10),
 time TIMESTAMP(10)
);

ALTER TABLE staff_payroll ADD CONSTRAINT PK_staff_payroll PRIMARY KEY (staff_id);


CREATE TABLE student (
 id VARCHAR(100) NOT NULL,
 person_number CHAR(12) NOT NULL,
 skill_level VARCHAR(20) NOT NULL,
 name VARCHAR(20),
 age VARCHAR(10) NOT NULL,
 address VARCHAR(50) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id,person_number);


CREATE TABLE student_application (
 personal_number VARCHAR(50) NOT NULL,
 name VARCHAR(50),
 address VARCHAR(50),
 level_of_skill INTERVAL(10),
 instrument_id VARCHAR(50)
);

ALTER TABLE student_application ADD CONSTRAINT PK_student_application PRIMARY KEY (personal_number);


CREATE TABLE student_payment (
 payment_id VARCHAR(10) NOT NULL,
 amount INT,
 due_date DATE,
 name VARCHAR(50),
 student_id VARCHAR(50),
 skill_level VARCHAR(10),
 booking_id INT
);

ALTER TABLE student_payment ADD CONSTRAINT PK_student_payment PRIMARY KEY (payment_id);


CREATE TABLE audition (
 audition_id CHAR(10) NOT NULL,
 date DATE NOT NULL,
 time TIMESTAMP(10) NOT NULL,
 result CHAR(1) NOT NULL,
 personal_number VARCHAR(50)
);

ALTER TABLE audition ADD CONSTRAINT PK_audition PRIMARY KEY (audition_id);


CREATE TABLE availableInstructor (
 instructor_id INT NOT NULL,
 person_number CHAR(12) NOT NULL,
 date DATE NOT NULL,
 startTime TIMESTAMP(10) NOT NULL,
 endTime TIMESTAMP(10) NOT NULL
);

ALTER TABLE availableInstructor ADD CONSTRAINT PK_availableInstructor PRIMARY KEY (instructor_id,person_number);


CREATE TABLE bank_account_detail (
 instructor_id INT NOT NULL,
 person_number CHAR(12) NOT NULL,
 name VARCHAR(50) NOT NULL,
 account_number VARCHAR(50),
 address VARCHAR(50) NOT NULL,
 personal_number VARCHAR(12)
);

ALTER TABLE bank_account_detail ADD CONSTRAINT PK_bank_account_detail PRIMARY KEY (instructor_id,person_number);


CREATE TABLE lessons (
 lessons_id VARCHAR(10) NOT NULL,
 booking_id INT NOT NULL,
 instrument_type VARCHAR(50) NOT NULL,
 date DATE NOT NULL,
 lesson_skill_level VARCHAR(50),
 person_number CHAR(12),
 student_id VARCHAR(100),
 instructor_id INT
);

ALTER TABLE lessons ADD CONSTRAINT PK_lessons PRIMARY KEY (lessons_id);


CREATE TABLE parent_name (
 person_number CHAR(12) NOT NULL,
 id VARCHAR(100) NOT NULL,
 parent_name VARCHAR(20) NOT NULL,
 personal_number VARCHAR(50)
);

ALTER TABLE parent_name ADD CONSTRAINT PK_parent_name PRIMARY KEY (person_number,id);


CREATE TABLE person_phone (
 phone_no VARCHAR(20) NOT NULL,
 person_number CHAR(12) NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (phone_no,person_number);


CREATE TABLE sibling_discount (
 sibling_discount_id VARCHAR(10) NOT NULL,
 student_id CHAR(10) NOT NULL,
 sibling_name VARCHAR(20) NOT NULL,
 personal_number VARCHAR(50) NOT NULL
);

ALTER TABLE sibling_discount ADD CONSTRAINT PK_sibling_discount PRIMARY KEY (sibling_discount_id,student_id);


CREATE TABLE ensemble (
 ensemble_id INT NOT NULL,
 lessons_id VARCHAR(10) NOT NULL,
 genre CHAR(10),
 max_number_of_students INT,
 min_number_of_students INT,
 lesson_id INT,
 schedule_id CHAR(10),
 instrument_type VARCHAR(50),
 date DATE,
 lesson_skill_level VARCHAR(50),
 booked_seats INT
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (ensemble_id,lessons_id);


CREATE TABLE group_lesson (
 group_lesson_id CHAR(10) NOT NULL,
 lessons_id VARCHAR(10) NOT NULL,
 student_name VARCHAR(50) NOT NULL,
 student_id VARCHAR(50),
 group_category_name VARCHAR(50) NOT NULL,
 lesson_id INT,
 schedule_id CHAR(10),
 instrument_type VARCHAR(50),
 date DATE,
 lesson_skill_level VARCHAR(50)
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_lesson_id,lessons_id);


CREATE TABLE individual_lesson (
 individual_lesson_Id CHAR(10) NOT NULL,
 lessons_id VARCHAR(10) NOT NULL,
 student_name VARCHAR(50) NOT NULL,
 student_id VARCHAR(50),
 lesson_id INT,
 schedule_id CHAR(10),
 instrument_type VARCHAR(50),
 date DATE,
 lesson_skill_level VARCHAR(50)
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (individual_lesson_Id,lessons_id);


CREATE TABLE participationers (
 participationer_name VARCHAR(50) NOT NULL,
 group_lesson_id CHAR(10),
 ensemble_id INT,
 individual_lesson_Id CHAR(10),
 Attribute15_1 VARCHAR(10)
);

ALTER TABLE participationers ADD CONSTRAINT PK_participationers PRIMARY KEY (participationer_name);


ALTER TABLE administrative_staff ADD CONSTRAINT FK_administrative_staff_0 FOREIGN KEY (staff_id) REFERENCES staff_payroll (staff_id);
ALTER TABLE administrative_staff ADD CONSTRAINT FK_administrative_staff_1 FOREIGN KEY (student_application_number) REFERENCES student_application (personal_number);


ALTER TABLE booking_lesson ADD CONSTRAINT FK_booking_lesson_0 FOREIGN KEY (admin_id) REFERENCES administrative_staff (admin_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_number) REFERENCES person (person_number);
ALTER TABLE instructor ADD CONSTRAINT FK_instructor_1 FOREIGN KEY (staff_id) REFERENCES staff_payroll (staff_id);


ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_0 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);
ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_1 FOREIGN KEY (payment_id) REFERENCES student_payment (payment_id);


ALTER TABLE person ADD CONSTRAINT FK_person_0 FOREIGN KEY (instructor_id,last_name) REFERENCES instructor (instructor_id,person_number);
ALTER TABLE person ADD CONSTRAINT FK_person_1 FOREIGN KEY (last_name,student_id) REFERENCES student (person_number,id);


ALTER TABLE person_email ADD CONSTRAINT FK_person_email_0 FOREIGN KEY (email) REFERENCES email (email);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_1 FOREIGN KEY (person_number) REFERENCES person (person_number);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_number) REFERENCES person (person_number);


ALTER TABLE student_application ADD CONSTRAINT FK_student_application_0 FOREIGN KEY (instrument_id) REFERENCES instrument_rental (instrument_id);


ALTER TABLE student_payment ADD CONSTRAINT FK_student_payment_0 FOREIGN KEY (booking_id) REFERENCES booking_lesson (booking_id);


ALTER TABLE audition ADD CONSTRAINT FK_audition_0 FOREIGN KEY (personal_number) REFERENCES student_application (personal_number);


ALTER TABLE availableInstructor ADD CONSTRAINT FK_availableInstructor_0 FOREIGN KEY (instructor_id,person_number) REFERENCES instructor (instructor_id,person_number);


ALTER TABLE bank_account_detail ADD CONSTRAINT FK_bank_account_detail_0 FOREIGN KEY (instructor_id,person_number) REFERENCES instructor (instructor_id,person_number);


ALTER TABLE lessons ADD CONSTRAINT FK_lessons_0 FOREIGN KEY (booking_id) REFERENCES booking_lesson (booking_id);
ALTER TABLE lessons ADD CONSTRAINT FK_lessons_1 FOREIGN KEY (person_number,student_id) REFERENCES student (person_number,id);
ALTER TABLE lessons ADD CONSTRAINT FK_lessons_2 FOREIGN KEY (instructor_id,person_number) REFERENCES availableInstructor (instructor_id,person_number);


ALTER TABLE parent_name ADD CONSTRAINT FK_parent_name_0 FOREIGN KEY (person_number,id) REFERENCES student (person_number,id);
ALTER TABLE parent_name ADD CONSTRAINT FK_parent_name_1 FOREIGN KEY (personal_number) REFERENCES student_application (personal_number);


ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY (phone_no) REFERENCES phone (phone_no);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY (person_number) REFERENCES person (person_number);


ALTER TABLE sibling_discount ADD CONSTRAINT FK_sibling_discount_0 FOREIGN KEY (personal_number) REFERENCES student_application (personal_number);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (lessons_id) REFERENCES lessons (lessons_id);
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_1 FOREIGN KEY (lesson_id,schedule_id) REFERENCES schedule (lesson_id,schedule_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lessons_id) REFERENCES lessons (lessons_id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (lesson_id,schedule_id) REFERENCES schedule (lesson_id,schedule_id);


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (lessons_id) REFERENCES lessons (lessons_id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (lesson_id,schedule_id) REFERENCES schedule (lesson_id,schedule_id);


ALTER TABLE participationers ADD CONSTRAINT FK_participationers_0 FOREIGN KEY (group_lesson_id,Attribute15_1) REFERENCES group_lesson (group_lesson_id,lessons_id);
ALTER TABLE participationers ADD CONSTRAINT FK_participationers_1 FOREIGN KEY (ensemble_id,Attribute15_1) REFERENCES ensemble (ensemble_id,lessons_id);
ALTER TABLE participationers ADD CONSTRAINT FK_participationers_2 FOREIGN KEY (individual_lesson_Id,Attribute15_1) REFERENCES individual_lesson (individual_lesson_Id,lessons_id);


