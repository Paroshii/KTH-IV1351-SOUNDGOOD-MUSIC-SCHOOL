--audition#1--
INSERT INTO "audition"("audition_id", "date", "time", "result")
VALUES ('au00000', '2021-11-29', '2021-11-29 15:00:00', 'PASS' );

--audition#2--
INSERT INTO "audition"("audition_id", "date", "time", "result")
VALUES ('au00001', '2021-11-30', '2021-11-30 15:00:00', 'FAIL' );

--audition#3--
INSERT INTO "audition"("audition_id", "date", "time", "result")
VALUES ('au00002', '2021-12-02', '2021-12-02 15:00:00', 'PASS' );


--booking_lesson#1--
INSERT INTO "booking_lesson"("booking_id", "student_name", "lesson_booking_date","lesson_level", "total_price", "student_id", "instructor_name", "instructor_id")
VALUES ('0', 'John Williams','2021-10-23','Beginner', '250', 'st00000', 'Adolf Chistiansen', 'em00000'); 

--booking_lesson#2--
INSERT INTO "booking_lesson"("booking_id", "student_name", "lesson_booking_date","lesson_level", "total_price", "student_id", "instructor_name", "instructor_id")
VALUES ('1', 'Andy Jacques', '2021-10-24', 'Advanced', '300', 'st00001', 'Johan Bach',  'em00001');

--booking_lesson#3--
INSERT INTO "booking_lesson"("booking_id", "student_name", "lesson_booking_date","lesson_level", "total_price", "student_id", "instructor_name", "instructor_id")
VALUES ('2', 'Lori Austridge', '2021-10-25', 'Beginner', '250', 'st00002', 'Adolf Chistiansen',  'em00000');


--booking_lesson#3--
INSERT INTO "booking_lesson"("booking_id", "student_name", "lesson_booking_date","lesson_level", "total_price", "student_id", "instructor_name", "instructor_id")
VALUES ('3', 'Henning Duda', '2021-09-25', 'Intermediate', '250', 'st00003', 'Adolf Chistiansen',  'em00000');


--booking_lesson#3--
INSERT INTO "booking_lesson"("booking_id", "student_name", "lesson_booking_date","lesson_level", "total_price", "student_id", "instructor_name", "instructor_id")
VALUES ('4', 'Pete Grimes', '2021-08-25', 'Beginner', '250', 'st00004', 'Adolf Chistiansen',  'em00000');


INSERT INTO "booking_lesson"("booking_id", "student_name", "lesson_booking_date","lesson_level", "total_price", "student_id", "instructor_name", "instructor_id")
VALUES ('5', 'Hanna Montana', '2021-08-25', 'Beginner', '250', 'st00000', 'Adolf Chistiansen',  'em00000');

INSERT INTO "booking_lesson"("booking_id", "student_name", "lesson_booking_date","lesson_level", "total_price", "student_id", "instructor_name", "instructor_id")
VALUES ('6', 'Hanna Montana', '2021-08-26', 'Beginner', '250', 'st00000', 'Adolf Chistiansen',  'em00000');

INSERT INTO "booking_lesson"("booking_id", "student_name", "lesson_booking_date","lesson_level", "total_price", "student_id", "instructor_name", "instructor_id")
VALUES ('7', 'Lori Austridge', '2021-11-26', 'Intermediate', '250', 'st00006', 'Adolf Chistiansen',  'em00000');



--email #1--
INSERT INTO "email" ("email")
VALUES ('hellothere@gmail.com');

--email #2--
INSERT INTO "email" ("email")
VALUES ('yes@gmail.com');

--email #3--
INSERT INTO "email" ("email")
VALUES ('whats_up@gmail.com');

--instrument_rental#1--
INSERT INTO "instrument_rental"("instrument_id", "rental_start_date", "is_rented","student_id")
VALUES ('in00000', '2021-10-02', 'true', 'st00000' );

--instrument_rental#2--
INSERT INTO "instrument_rental"("instrument_id", "price_per_month", "type", "availability_date", "brand", "instrument_year_made", "is_rented","student_id")
VALUES ('in00001', '750', 'piano', '2021-10-15', 'Yamaha', '2011-12-12', 'true', 'st00001');

--instrument_rental#3--
INSERT INTO "instrument_rental"("instrument_id", "price_per_month", "type", "availability_date", "brand", "instrument_year_made", "is_rented","student_id")
VALUES ('in00002', '800', 'Cello', '2021-10-02', 'Roth & Junius', '1984-12-12', 'false', 'st00002');

--instrument_rental#4--
INSERT INTO "instrument_rental"("instrument_id", "price_per_month", "type", "availability_date", "brand", "instrument_year_made", "is_rented","student_id")
VALUES ('in00003', '700', 'viola', '2021-10-06', 'Cecilio', '1989-12-13', 'false', 'st00000' );

--instrument_rental#5--
INSERT INTO "instrument_rental"("instrument_id", "rental_start_date", "is_rented","student_id")
VALUES ('in00004', null , 'false',  );

--instrument_rental#4--
INSERT INTO "instrument_rental"("instrument_id", "rental_start_date", "is_rented","student_id")
VALUES ('in00005', '', 'true', 'st00003' );


--phone#1--
INSERT INTO "phone"("phone_no")
VALUES ('0705567482');

--phone#2--
INSERT INTO "phone"("phone_no")
VALUES ('0735678392');

--phone#3--
INSERT INTO "phone"("phone_no")
VALUES ('0762583353');

--schedule#1--
INSERT INTO "schedule"("lesson_id", "schedule_id", "room", "time_start", "address", "type_of_lesson", "time_end")
VALUES  ('0', 'sc00000', '1', '2021-12-02 10:30:00', 'Solrosvägen 3', 'individual', '2021-12-02 11:30:00');

--schedule#2--
INSERT INTO "schedule"("lesson_id", "schedule_id", "room", "time_start", "address", "type_of_lesson", "time_end")
VALUES  ('1', 'sc00001', '2', '2021-12-02 12:30:00', 'Solrosvägen 3', 'ensemble', '2021-12-02 13:30:00');

--schedule#3--
INSERT INTO "schedule"("lesson_id", "schedule_id", "room", "time_start", "address", "type_of_lesson", "time_end")
VALUES  ('2', 'sc00002', '3', '2021-12-02 14:30', 'Solrosvägen 3', 'group', '2021-12-02 15:30');


--staff_payroll#1--
INSERT INTO "staff_payroll" ( "staff_id", "date", "instructor_id", "time")
VALUES ('00', '2021-11-25', 'em00000', '2021-10-25 18:00:00');

--staff_payroll#2--
INSERT INTO "staff_payroll" ( "staff_id", "date", "instructor_id", "time")
VALUES ('01', '2021-11-25', 'em00001', '2021-10-25 18:00:00');

--staff_payroll#2--
INSERT INTO "staff_payroll" ( "staff_id", "date", "instructor_id", "time")
VALUES ('02', '2021-10-25', 'em00001', '2021-10-25 18:00:00');


--student#1--
INSERT INTO "student" ("id", "student_id", "skill_level")
VALUES ('0','st00000', 'Beginner');

--student#2--
INSERT INTO "student" ("id", "student_id", "skill_level")
VALUES ('1','st00001', 'Advanced');

--student#3--
INSERT INTO "student" ("id", "student_id", "skill_level")
VALUES ('2','st00002', 'Beginner');

--student#3--
INSERT INTO "student" ("id", "student_id", "skill_level")
VALUES ('3','st00003', 'Intermediate');

--student#3--
INSERT INTO "student" ("id", "student_id", "skill_level")
VALUES ('4','st00004', 'Advanced');

INSERT INTO "student" ("id", "student_id", "skill_level")
VALUES ('5','st00005', 'Beginner');

INSERT INTO "student" ("id", "student_id", "skill_level")
VALUES ('6','st00006', 'Intermediate');

INSERT INTO "student" ("id", "student_id", "skill_level")
VALUES ('7','st00007', 'Beginner');



--admin_staff#1--
INSERT INTO "administrative_staff" ("id", "staff_id", "name", "job_title", "start_date", "address") 
VALUES ('0', '00', 'Rolph Dude', 'Admin', '2000-02-04', 'Chillvägen 3');

--admin_staff#2--
INSERT INTO "administrative_staff" ("id", "staff_id", "name", "job_title", "start_date", "address") 
VALUES ('1', '01', 'Emilia Stol', 'Admin assistant', '2010-05-22', 'Chillvägen 3');

--admin_staff#3--
INSERT INTO "administrative_staff" ("id", "staff_id", "name", "job_title", "start_date", "address") 
VALUES ('2', '02', 'Karin Heli', 'Admin', '2015-03-13', 'Chillvägen 3');

--instructor#1--
INSERT INTO "instructor" ("id", "teacher_id", "employee_start_date", "staff_id", "level_of_skill")
VALUES ('0', 'em00000', '2010-07-01', '0', 'Beginner');

--instructor#2--
INSERT INTO "instructor" ("id", "teacher_id", "employee_start_date", "staff_id", "level_of_skill")
VALUES ('1', 'em00001', '2010-08-02', '1', 'Advanced');

--instructor#3--
INSERT INTO "instructor" ("id", "teacher_id", "employee_start_date", "staff_id", "level_of_skill")
VALUES ('2', 'em00002', '2012-10-02', '2', 'Beginner');

--instructor#4--
INSERT INTO "instructor" ("id", "teacher_id", "employee_start_date", "staff_id", "level_of_skill")
VALUES ('3', 'em00003', '2011-07-01', '3', 'Advanced');

--instructor#4--
INSERT INTO "instructor" ("id", "teacher_id", "employee_start_date", "staff_id", "level_of_skill")
VALUES ('4', 'em00004', '2010-07-01', '3', 'Intermediate');

--instructor#4--
INSERT INTO "instructor" ("id", "teacher_id", "employee_start_date", "staff_id", "level_of_skill")
VALUES ('5', 'em00005', '2009-07-01', '3', 'Intermediate');


--instrument#1--
INSERT INTO "instrument" ("instrument_type", "instrument_id", "price_per_month", "is_rented", "brand")
VALUES ('flute', 'in00000', '350', 'true', 'Miyazawa');

--instrument#2--
INSERT INTO "instrument" ("instrument_type", "instrument_id", "price_per_month", "is_rented", "brand")
VALUES ('piano', 'in00001', '750', 'true', 'Yamaha');

--instrument#3--
INSERT INTO "instrument" ("instrument_type", "instrument_id", "price_per_month", "is_rented", "brand")
VALUES ('cello', 'in00002', '800', 'false', 'Roth & Junius');

INSERT INTO "instrument" ("instrument_type", "instrument_id", "price_per_month", "is_rented", "brand")
VALUES ('viola', 'in00003', '700', 'false', 'Cecilio');

INSERT INTO "instrument" ("instrument_type", "instrument_id", "price_per_month", "is_rented", "brand")
VALUES ('triangle', 'in00004', '150', 'false', 'Tri');

INSERT INTO "instrument" ("instrument_type", "instrument_id", "price_per_month", "is_rented", "brand")
VALUES ('triangle', 'in00005', '150', 'false', 'Tri');



--person#1--
INSERT INTO "person" ("id", "name", "age", "address", "person_number", "person_id", "title")
VALUES ('0', 'Johan Thunander', '20', 'Eskilvägen 8', '0107095544', '0', 'student');

--person#2--
INSERT INTO "person" ("id", "name", "age", "address", "person_number", "person_id","title")
VALUES ('1', 'Eric Tal', '28', 'Södergatan 7', '9304121122', '1', 'student');


--person#3--
INSERT INTO "person" ("id", "name", "age", "address", "person_number", "person_id","title")
VALUES ('2', 'Johan Bach', '56', 'Eskilvägen 8', '6202023225', '2', 'teacher');

--person#4--
INSERT INTO "person" ("id", "name", "age", "address", "person_number", "person_id","title")
VALUES ('3', 'Adolf Chistiansen', '55', 'Eskilvägen 8', '6306013312', '3', 'teacher');


--person_email#1--
INSERT INTO "person_email"("person_id", "email")
VALUES ('0', 'hellothere@gmail.com');

--person_email#2--
INSERT INTO "person_email"("person_id", "email")
VALUES ('1', 'yes@gmail.com');

--person_email#3--
INSERT INTO "person_email"("person_id", "email")
VALUES ('1', 'whats_up@gmail.com');

--person_phone#1--
INSERT INTO "person_id"("person_id", "phone_no")
VALUES ('0', '0705567482');

--person_phone#2--
INSERT INTO "person_phone" ("person_id", "phone_no")
VALUES ('1', '0735678392');

--person_phone#3--
INSERT INTO "person_phone" ("person_id", "phone_no")
VALUES ('2', '0762583353');

--staff_booking#1--
INSERT INTO "staff_booking" ("booking_id", "staff_id")
VALUES ('0', '0');


--student_application#1--
INSERT INTO "student_application" ("personal_number", "name", "address", "level_of_skill", "audition_id", "id", "instrument_id")
VALUES ('0107095544', 'Johan Thunander', 'Eskilvägen 8', 'Beginner', 'au00000', '0', 'in00000');

--student_application#2--
INSERT INTO "student_application" ("personal_number", "name", "address", "level_of_skill", "audition_id", "id", "instrument_id")
VALUES ('9304121122', 'Eric Tal', 'Södergatan 7', 'Beginner', 'au00001', '1', 'in00001');

--student_payment#1--
INSERT INTO "student_payment" ("amount", "due_date", "name", "student_id", "personal_number")
VALUES ('3000', '2021-11-29', 'Johan Thunander', 'st00000', '0107095544');

--student_payment#2--
INSERT INTO "student_payment" ("amount", "due_date", "name", "student_id", "personal_number")
VALUES ('4000', '2021-11-29', 'Eric Tal', 'st00001', '9304121122');


--address#1--
INSERT INTO "address" ("address_id", "zipcode", "street", "country", "city")
VALUES ('0', '19432', 'marildvägen 3', 'Sweden', 'Stockholm');


--address#2--
INSERT INTO "address" ("address_id", "zipcode", "street", "country", "city")
VALUES ('1', '19341', 'storagatan 1', 'Sweden', 'Stockholm');

--availableInstructor#1--
INSERT INTO "availableinstructor" ("instructor_id", "date", "id", "starttime", "endtime")
VALUES ('em00000', '2021-11-03', '0', '2021-11-03 10:00:00', '2021-11-03 11:00:00');

--availableInstructor#2--
INSERT INTO "availableinstructor" ("instructor_id", "date", "id", "starttime", "endtime")
VALUES ('em00001', '2021-11-12', '1', '2021-11-12 15:00:00', '2021-11-12 16:00:00');

INSERT INTO "availableinstructor" ("instructor_id", "date", "id", "starttime", "endtime")
VALUES ('em00002', '2021-10-12', '2', '2021-11-12 15:00:00', '2021-11-12 16:00:00');

INSERT INTO "availableinstructor" ("instructor_id", "date", "id", "starttime", "endtime")
VALUES ('em00003', '2021-09-12', '3', '2021-11-12 15:00:00', '2021-11-12 16:00:00');

INSERT INTO "availableinstructor" ("instructor_id", "date", "id", "starttime", "endtime")
VALUES ('em00004', '2021-11-02', '4', '2021-11-12 15:00:00', '2021-11-12 16:00:00');

INSERT INTO "availableinstructor" ("instructor_id", "date", "id", "starttime", "endtime")
VALUES ('em00005', '2021-09-09', '5', '2021-11-12 15:00:00', '2021-11-12 16:00:00');




--bank_account_detail#1--
INSERT INTO "bank_account_detail" ("instructor_id", "name", "account_number", "address", "personal_number")
VALUES ('0', 'Adolf Chistiansen', 'B0000345674244', 'Eskilvägen 8','6306013312');

--currency#1--
INSERT INTO "currency" ("currency_type", "instructor_id")
VALUES ('SEK', '0');


--discount#1--
 INSERT INTO "discount" ("amount", "type", "personal_number")
 VALUES ('150', 'sibling','0107095544');

       --lesson#1--
        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type")
        VALUES ('em00002', (SELECT booking_id from booking_lesson WHERE booking_id = '3'), 'oboe', '3', '1', '2021-10-15','Beginner', 'Group');

         INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type")
        VALUES ('em00002', (SELECT booking_id from booking_lesson WHERE booking_id = '3'), 'piano', '3', '1', '2021-10-15','Beginner', 'Individual');

 --lesson#2--
 INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level")
 VALUES ('em00001', (SELECT booking_id from booking_lesson WHERE booking_id = '1'), 'cello', '1', '2', '2021-11-03','Advanced');

 INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type")
        VALUES ('em00003', (SELECT booking_id from booking_lesson WHERE booking_id = '3'), 'clarinet', '3', '1', '2021-09-10','Beginner', 'Individual');

         INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type")
        VALUES ('em00004', (SELECT booking_id from booking_lesson WHERE booking_id = '3'), 'guitar', '4', '1', '2021-08-04','Beginner', 'Individual');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type")
        VALUES ('em00005', (SELECT booking_id from booking_lesson WHERE booking_id = '4'), 'guitar', '5', '1', '2021-07-04','Beginner', 'Group');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type")
        VALUES ('em00000', (SELECT booking_id from booking_lesson WHERE booking_id = '5'), 'drums', '0', '1', '2021-07-04','Beginner', 'Group');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type")
        VALUES ('em00000', '6' , 'piano', '6', '1', '2021-11-04','Beginner', 'Group');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00000', '6' , 'orchestra', '6', '1', '2021-11-07','Beginner', 'ensemble', '8');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00001', '6' , 'orchestra', '6', '1', '2021-11-08','Beginner', 'ensemble', '9');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00001', '6' , 'cello', '6', '1', '2021-11-23','Beginner', 'ensemble', '10');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00000', '6' , 'piano', '6', '1', '2021-10-07','Beginner', 'ensemble', '12');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00000', '6' , 'violin', '6', '1', '2021-11-03','Beginner', 'ensemble', '13');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00001', '6' , 'violin', '6', '1', '2021-11-06','Beginner', 'ensemble', '14');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00000', '6' , 'guitar', '6', '1', '2021-11-10','Beginner', 'ensemble', '15');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00000', '6' , 'flute', '6', '1', '2021-12-01','Beginner', 'ensemble', '16');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00001', '6' , 'piano', '6', '1', '2021-11-01','Beginner', 'ensemble', '17');

        INSERT INTO "lessons" ("instructor_id", "booking_id", "instrument_type", "student_id", "duration", "date", "lesson_skill_level", "lesson_type", "lesson_id")
        VALUES ('em00000', '6' , 'drums', '6', '1', '2021-11-09','Beginner', 'ensemble', '18');




--parent_name#1--
INSERT INTO "parent_name"("student_id", "parent_name", "personal_number")
VALUES ('0', 'Johanna Thunander', '0107095544');



--ensemble#1--
INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id")
VALUES ('em00001', '1', 'musical', '30', '15','11', 'sc00001');

INSERT INTO "ensemble"("instructor_id", "booking_id","genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00002','8','classical', '30', '15','8', 'sc00001', '20');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00003', '9', 'classical', '30', '15','9', 'sc00001', '30');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00004', '10', 'classical', '30', '15','10', 'sc00001', '28');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00005', '0', 'musical', '30', '15','12', 'sc00001', '29');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00006', '13', 'classical', '30', '15','13', 'sc00001', '21');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00007', '14', 'musical', '30', '15','14', 'sc00001', '22');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00008', '15', 'classical', '30', '15','15', 'sc00001', '9');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00009', '16', 'classical', '30', '15','16', 'sc00001', '10');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00010', '17', 'musical', '30', '15','17', 'sc00001', '29');

INSERT INTO "ensemble"("instructor_id", "booking_id", "genre", "max_number_of_students", "min_number_of_students", "lesson_id", "schedule_id", "booked_seats")
VALUES ('em00011', '18', 'musical', '30', '15','18', 'sc00001', '25');





--group_lesson#1--
INSERT INTO "group_lesson"("instructor_id", "booking_id", "student_name", "student_id", "group_category_name", "lesson_id", "schedule_id")
VALUES ('em00001', '1', 'Johan Thunander','st00000', 'flute', '21','0');

--individual_lesson#1-- 
INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '0', 'Johan Thunander', 'st00000', '31', '0');

INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00000', '1', 'Dude Almighty', 'st0000', '8', '0');

INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '2', 'Erica Gunit', 'st0000', '9', '0');

INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '3', 'Flex Heart', 'st00000', '10', '0');

INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '4', 'Mohammed Ali', 'st00000', '11', '0');

INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '5', 'Mohamed Kholai', 'st00000', '12', '0');

INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '6', 'Saghi Sagbab', 'st00000', '13', '0');


INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '7', 'Hamo Jerk', 'st00000', '14', '0');

INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '8', 'Johan Thunander', 'st00000', '15', '0');


INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '9', 'Johan Thunander', 'st00000', '16', '0');

INSERT INTO "individual_lesson" ("instructor_id", "booking_id", "student_name", "student_id", "lesson_id", "schedule_id")
VALUES ('em00001', '10', 'Johan Thunander', 'st00000', '17', '0');



--participationers#1--
INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00000', 'Johan Thunander', '0', '8');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00001', 'Dude Almighty', '1', '9');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00002', 'Erica Gunit', '2', '10');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00000', 'Flex Heart', '3', '11');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00003', 'Mohammed Ali', '4', '12');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00000', 'Mohamed Kholai', '5', '13');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00001', 'Saghi Sagbab', '6', '14');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00002', 'Hamo Jerk', '7', '15');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00001', 'Anders Andersson', '8', '16');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00001', 'Julius gya', '9', '17');

INSERT INTO "participationers" ("instructor_id", "participationer_name", "booking_id", "lesson_id")
VALUES ('em00001', 'Damn Son', '10', '18');


















































