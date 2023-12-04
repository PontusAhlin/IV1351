INSERT INTO instructor(ensemble_proficiency, person_number, first_name, last_name)
  VALUES
    ('Yes', '294321423191', 'Ingrid', 'Floyd'),
    ('No', '767563762243', 'Elmo', 'Mullen'),
    ('No', '316258737368', 'Mohammad', 'Graham'),
    ('No', '614644373763', 'Chiquita', 'Henderson'),
    ('No', '645476593172', 'Fiona', 'Molina'),
    ('Yes', '553721147665', 'Freya', 'Carter'),
    ('No', '436593883917', 'Isabelle', 'Ray'),
    ('Yes', '588646988361', 'Kaitlin', 'Vincent'),
    ('No', '116265228429', 'Nyssa', 'Ballard'),
    ('Yes', '637366125021', 'Cameron', 'Burke');



INSERT INTO specified_instruments_instructor(specified_instruments_instructor, instructor_id)
VALUES
  ('Guitar', 1),
  ('Bass, Violin, Piano, Guitar', 2),
  ('Violin, Guitar, Bass', 3),
  ('Piano', 4),
  ('Violin', 5),
  ('Bass, Guitar, Violin, Piano', 6),
  ('Bass, Violin, Piano', 7),
  ('Piano, Violin, Guitar, Bass',8),
  ('Guitar, Bass, Piano, Violin', 9),
  ('Violin, Piano, Guitar', 10);





INSERT INTO available_instructor(available_time_start, available_time_end, instructor_id)
VALUES
('09:00:00.1', '20:00:00.5',1),
('14:30:00.2', '20:30:00.9',   2),
    ('09:00:00.1', '20:00:00.5',   3),
    ('14:30:00.2', '19:30:00.9',   4),
    ('09:00:00.1', '20:00:00.5',   5),
    ('14:30:00.2', '20:30:00.9',  6),
    ('09:00:00.1', '21:00:00.5',   7),
    ('14:30:00.2', '23:30:00.9',   8),
    ('09:00:00.1', '23:00:00.5',   9),
    ('14:30:00.2', '20:30:00.9',   10);
	


INSERT INTO enrollment(intstrument_to_learn, skill_level)
VALUES
  ('Piano', 'Beginner'),
  ('Piano', 'Advanced'),
  ('Piano', 'Intermediate'),
  ('Guitar', 'Beginner'),
  ('Guitar', 'Advanced'),
  ('Guitar', 'Intermediate'),
  ('Violin', 'Beginner'),
  ('Violin', 'Advanced'),
  ('Violin', 'Intermediate'),
  ('Bass', 'Beginner');





INSERT INTO student(person_number, first_name, last_name, discount_percentage,enrollment_id)
VALUES
  ('199397655460', 'Iris', 'Horne', 10, 1),
  ('199221865216', 'Anjolie', 'Reynolds', 10, 2),
  ('200042467647', 'Shafira', 'Bowen', 0,3),
  ('194523307816', 'Adrienne', 'Kaufman', 10,4),
  ('200165118166', 'Amanda', 'Ortiz', 0,5),
  ('199938127812', 'Zelda', 'Mccullough', 0,6),
  ('199362993631', 'Kaitlin', 'Dotson', 0,7),
  ('200383942320', 'Demetrius', 'Grimes', 0,8),
  ('200692563444', 'Cain', 'Berger', 10,9),
  ('200827383495', 'Steel', 'Chandler', 10,10);



INSERT INTO sibling (student_id1, student_id2)
VALUES
  (1, 2),
  (4, 9),
  (4, 10),
  (9, 10);






INSERT INTO price_for_lessons(price_for_student, payment_for_instructor, lesson_type)
VALUES
  ('358', '739', 'ensemble'),
  ('579', '579', 'ensemble'),
  ('315', '760', 'ensemble'),
  ('706', '569', 'ensemble'),
  ('419', '96', 'individual'),
  ('972', '455', 'individual'),
  ('961', '89', 'group'),
  ('820', '640', 'individual'),
  ('518', '562', 'group'),
  ('564', '716', 'individual');



INSERT INTO lesson(instrument_type, skill_level, appointed_time, instructor_id, price_id)
VALUES
  ('Piano', 'Beginner', '2023-01-15 09:00:00', 1,5 ),
  ('Guitar', 'Intermediate', '2023-01-16 14:30:00',1 ,6),
  ('Violin', 'Advanced', '2023-01-17 18:45:00', 10,8),
  ('Bass', 'Intermediate', '2023-01-24 12:00:00', 8,10);




INSERT INTO group_lesson (minimum_students, skill_level, price_id, instructor_id)
VALUES
  (2, 'Beginner', 7,4 ),
  (6, 'Advanced', 9,5);


INSERT INTO ensemble(genre_played, max_allowed_students, min_allowed_students, price_id,instructor_id)
VALUES
  ('Rock', 10, 3, 1, 1),
  ('Pop', 20, 3, 2,1 ),
  ('Jazz', 10, 4, 3 ,10),
  ('Classical', 5, 4, 4 ,8);


INSERT INTO instrument(brand, instrument_type, instrument_quantity)
VALUES
  ('luctus', 'Piano', 1),
  ('parturient', 'Piano', 5),
  ('vestibulum', 'Bass', 1),
  ('nunc.', 'Violin', 23),
  ('enim', 'Guitar', 51),
  ('blandit', 'Violin', 2 ),
  ('Aliquam', 'Piano', 0),
  ('porttitor', 'Bass', 5),
  ('nibh.', 'Bass', 12),
  ('elit', 'Violin', 4);


INSERT INTO contact_detail (contact_person_first_name, contact_person_last_name, student_id,instructor_id)
VALUES
	('Deanna', 'Sanchez', 1,NULL),
	('Hillary', 'Herrera',2,NULL),
	('Giacomo', 'Meadows',3,NULL),
	('Daphne', 'Houston',4,NULL),
	('Marsden', 'Pacheco',5,NULL),
	('Rachel', 'Pate',6,NULL),
	('Vera', 'Wood',7,NULL),
	('Chloe', 'Chan',8,NULL),
	('Maggy', 'Rivers',9,NULL),
	('Caleb', 'Perez',10,NULL),

  (NULL,NULL,NULL, 1),  
  (NULL,NULL,NULL, 2),
  (NULL,NULL,NULL, 3),
  (NULL,NULL,NULL, 4),
  (NULL,NULL,NULL, 5),
  (NULL,NULL,NULL, 6),
  (NULL,NULL,NULL, 7),
  (NULL,NULL,NULL, 8),
  (NULL,NULL,NULL, 9),
  (NULL,NULL,NULL, 10);




INSERT INTO email(email, contact_detail_id)
VALUES
  ('eu.tempor@protonmail.com',1),
  ('non.arcu@aol.edu',2),
  ('quam.pellentesque.habitant@hotmail.ca',3),
  ('lacus@google.net',4),
  ('lorem.vitae.odio@protonmail.couk',5),
  ('convallis.erat@protonmail.net',6),
  ('ornare.lectus.justo@aol.com',7),
  ('nec@icloud.org',8),
  ('morbi.tristique@outlook.edu',9),
  ('aliquam@yahoo.couk',10),
  ('fusce.aliquam.enim@icloud.org',11),
  ('enim.suspendisse.aliquet@google.edu',12),
  ('nulla.donec.non@aol.couk',13),
  ('elit.pretium@outlook.ca',14),
  ('sed.leo@protonmail.com',15),
  ('semper@outlook.couk',16),
  ('posuere.vulputate.lacus@aol.couk',17),
  ('magna@icloud.couk',18),
  ('sagittis.lobortis@icloud.ca',19),
  ('neque@google.edu',20);




INSERT INTO phone_number(phone_number, contact_detail_id)
VALUES
  ('+10758958599', 1),
  ('+10766081199', 2),
  ('+10985750268', 3),
  ('+10796453866', 4),
  ('+10799876185', 5),
  ('+10282195132', 6),
  ('+10043833337', 7),
  ('+10810865412', 8),
  ('+10267564642', 9),
  ('+10594061441', 10),

 ('+10258534262',11),
  ('+10488930012',12),
  ('+10587458546',13),
  ('+10840631657',14),
  ('+10272787678',15),
  ('+10427205855',16),
  ('+10363679651',17),
  ('+10482870237',18),
  ('+10668865733',19),
  ('+10884363276',20);



INSERT INTO time_slot(time_slot,group_lesson_id ,ensemble_id)
VALUES
  ('2023-1-15 10:00:00', 1,NULL),
  (' 2023-02-05 11:30:00', 2,NULL),
  ('2023-03-20 09:15:00', NULL,1),
  ('2023-04-10 14:45:00', NULL,2),
  ('2023-05-25 12:30:00', NULL,3 ),
  ('2023-06-15 13:45:00', NULL,4);


INSERT INTO adress(street, zip_code, city, student_id, instructor_id, lesson_id, group_lesson_id, ensemble_id)
VALUES
  ('Ap #165-8186 Vitae Avenue', '89-189', 'Lelystad', NULL, 1, NULL, NULL, NULL),
  ('773-2999 Proin Ave', 'UD6 3JU', 'Antártica', NULL, 2, NULL, NULL, NULL),
  ('843-4118 Gravida Av.', '93197', 'Maranguape', NULL, 3, NULL, NULL, NULL),
  ('Ap #767-1185 Et Av.', '826773', 'Landeck', NULL, 4, NULL, NULL, NULL),
  ('P.O. Box 997, 1179 Nec Road', '30616', 'Ukkel', NULL, 5, NULL, NULL, NULL),
  ('Ap #809-6584 Nisl Road', '85477', 'Falun', NULL, 6, NULL, NULL, NULL),
  ('Ap #835-627 Elit. Ave', '8711', 'Iksan', NULL, 7, NULL, NULL, NULL),
  ('3602 Lobortis Rd.', '75355', 'Jiangsu', NULL, 8, NULL, NULL, NULL),
  ('Ap #693-9895 Sollicitudin Rd.', '7675', 'San Marcos', NULL, 9, NULL, NULL, NULL),
  ('388 Consectetuer, Ave', '33672', 'Montemignaio', NULL, 10, NULL, NULL, NULL),
 
--"Student" IDs 141->150
  ('P.O. Box 576, 2070 Morbi Avenue', '41347', 'elementum', 1, NULL, NULL, NULL, NULL),
  ('Ap #488-7418 A, Rd.', '41005', 'malesuada', 2, NULL, NULL, NULL, NULL),
  ('Ap #896-2312 Vitae Rd.', '4886', 'nisl', 3, NULL, NULL, NULL, NULL),
  ('9183 Duis St.', '77938', 'diam.', 4, NULL, NULL, NULL, NULL),
  ('Ap #252-6037 Auctor Av.', '38590', 'primis', 5, NULL, NULL, NULL, NULL),
  ('736-2086 Eu Street', '6252', 'mus.', 6, NULL, NULL, NULL, NULL),
  ('982-7943 Fusce Ave', '33279', 'Morbi', 7, NULL, NULL, NULL, NULL),
  ('299-1528 Lectus St.', '33541', 'mauris', 8, NULL, NULL, NULL, NULL),
  ('Ap #793-1923 Fringilla St.', '38145-40661', 'Nunc', 9, NULL, NULL, NULL, NULL),
  ('235-3528 Sed St.', '25-85', 'gravida.', 10, NULL, NULL, NULL, NULL);




INSERT INTO adress(street, zip_code, city, student_id, instructor_id, lesson_id, group_lesson_id, ensemble_id)
VALUES
	--Individual
  ('P.O. Box 517, 7557 Molestie Rd.', '912301', 'FunLand', NULL, NULL, 1, NULL, NULL),
  ('7764 Et, Ave', '912301', 'FunLand', NULL, NULL, 2, NULL, NULL),
  ('Ap #575-956 Justo St.', '912301', 'FunLand', NULL, NULL, 3, NULL, NULL),
  ('P.O. Box 922, 9229 Sodales St.', '912301', 'FunLand', NULL, NULL, 4, NULL, NULL),
 
 	--Group
  ('9089 Ac St.', '912301', 'FunLand', NULL, NULL, NULL, 1, NULL),
  ('183 Sit St.', '912301', 'FunLand', NULL, NULL, NULL, 2, NULL),
  
  --Ensemble
  ('Ap #202-6634 Magna Avenue', '912301', 'FunLand', NULL, NULL, NULL, NULL, 1),
  ('P.O. Box 344, 4040 Velit St.', '912301', 'FunLand', NULL, NULL, NULL, NULL, 2),
  ('548-4737 Non Rd.', '912301', 'FunLand', NULL, NULL, NULL, NULL, 3),
  ('332-8847 Mauris Avenue', '912301', 'FunLand', NULL, NULL, NULL, NULL, 4);



INSERT INTO location(campus_location, address_id)
VALUES
  ('Room 1',21),
  ('Room 2',22),
  ('Room 3',23),
  ('Room 4',24),
  ('Room 5',25),
  ('Room 6',26),
  ('Room 7',27),
  ('Room 8',28),
  ('Room 9',29),
  ('Room 10',30);


INSERT INTO instrument_rental(lease_start_date, monthly_cost, instrument_id, student_id)
VALUES 
  ('2023-02-01', 150.00, 1,1),
  ('2023-02-05', 120.00,2 ,2),
  ('2023-02-10', 200.00 ,3,3),
  ('2023-02-15', 180.00 ,4,4),
  ('2023-02-20', 160.00 ,5,5),
  ('2023-02-20', 160.00 ,6,6);


INSERT INTO student_lesson(student_id, lesson_id)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4);


INSERT INTO student_ensemble(student_id, ensemble_id)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,2),
	(6,2),
	(7,2),
	(3,2),	
	(9,3),
	(10,3),
	(2,3),
	(3,3),
	(4,4),
	(7,4),
	(2,4),
	(1,4);


INSERT INTO student_group_lesson(student_id, group_lesson_id)
VALUES
	(6,1),
	(2,1),
	(3,1),
	(7,2),
	(2,2),
	(1,2),
	(9,2);




