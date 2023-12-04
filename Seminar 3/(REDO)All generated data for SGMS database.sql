--IDs124->133
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
    ('Yes', '637366125021', 'Cameron', 'Burke')



--Instructor_id 124->133
INSERT INTO specified_instruments_instructor(specified_instruments_instructor, instructor_id)
VALUES
  ('Guitar', (SELECT id FROM inserted_ids WHERE person_number = '294321423191')),
  ('Bass, Violin, Piano, Guitar', (SELECT id FROM inserted_ids WHERE person_number = '767563762243')),
  ('Violin, Guitar, Bass', (SELECT id FROM inserted_ids WHERE person_number = '316258737368')),
  ('Piano', (SELECT id FROM inserted_ids WHERE person_number = '614644373763')),
  ('Violin', (SELECT id FROM inserted_ids WHERE person_number = '645476593172')),
  ('Bass, Guitar, Violin, Piano', (SELECT id FROM inserted_ids WHERE person_number = '553721147665')),
  ('Bass, Violin, Piano', (SELECT id FROM inserted_ids WHERE person_number = '436593883917')),
  ('Piano, Violin, Guitar, Bass', (SELECT id FROM inserted_ids WHERE person_number = '588646988361')),
  ('Guitar, Bass, Piano, Violin', (SELECT id FROM inserted_ids WHERE person_number = '116265228429')),
  ('Violin, Piano, Guitar', (SELECT id FROM inserted_ids WHERE person_number = '637366125021'));

-- IDs 1->10
-- Insert data into available_instructor table
INSERT INTO available_instructor(available_time_start, available_time_end, instructor_id)
VALUES
    ('09:00:00.1', '20:00:00.5', 124),
    ('14:30:00.2', '20:30:00.9', 125),
    ('09:00:00.1', '20:00:00.5', 126),
    ('14:30:00.2', '19:30:00.9', 127),
    ('09:00:00.1', '20:00:00.5', 128),
    ('14:30:00.2', '20:30:00.9', 129),
    ('09:00:00.1', '21:00:00.5', 130),
    ('14:30:00.2', '23:30:00.9', 131),
    ('09:00:00.1', '23:00:00.5', 132),
    ('14:30:00.2', '20:30:00.9', 133);



--IDs 1->10
-- Insert data into enrollment table
INSERT INTO enrollment(instrument_to_learn, skill_level)
VALUES
  ('Guitar', 'Advanced'),
  ('Guitar', 'Advanced'),
  ('Guitar', 'Beginner'),
  ('Guitar', 'Advanced'),
  ('Piano', 'Advanced'),
  ('Guitar', 'Intermediate'),
  ('Guitar', 'Beginner'),
  ('Guitar', 'Beginner'),
  ('Bass', 'Intermediate'),
  ('Violin', 'Advanced');



--First adding the students and thereafter adding if they have siblings 
--IDs 71->80
INSERT INTO student(person_number, first_name, last_name, discount_percentage,enrollment_id,sibling_id)
VALUES
  ('199397655460', 'Iris', 'Horne', 10,1,NULL), 	
  ('199221865216', 'Anjolie', 'Reynolds', 10,2,NULL),
  ('200042467647', 'Shafira', 'Bowen', 0,3,NULL),
  ('194523307816', 'Adrienne', 'Kaufman', 10,4,NULL),
  ('200165118166', 'Amanda', 'Ortiz', 0,5,NULL),
  ('199938127812', 'Zelda', 'Mccullough', 0,6,NULL),
  ('199362993631', 'Kaitlin', 'Dotson', 0,7,NULL),
  ('200383942320', 'Demetrius', 'Grimes', 0,8,NULL),
  ('200692563444', 'Cain', 'Berger', 10,9,NULL),
  ('200827383495', 'Steel', 'Chandler', 10,10,NULL);


--71 and 72 are siblings. 80,79 and 74 are siblings
--IDs 1->4
INSERT INTO sibling (student_id1,student_id2)
VALUES
	(71,72),
	(74,79),
	(74,80),
	(79,80);



--IDs 41->50
INSERT INTO price_for_lessons(price_for_student, payment_for_instructor, lesson_type)
VALUES
  ('358', '739', 'ensemble'),
  ('579', '579', 'ensemble'),
  ('315', '760', 'ensemble'),
  ('706', '569', 'ensemble'),
  ('419', '96', 'lesson'),
  ('972', '455', 'lesson'),
  ('961', '89', 'group_lesson'),
  ('820', '640', 'lesson'),
  ('518', '562', 'group_lesson'),
  ('564', '716', 'lesson');



--Price_id:45,46,48,50.
--IDs 41->44
INSERT INTO lesson(instrument_type, skill_level, appointed_time, instructor_id, price_id)
VALUES
  ('Piano', 'Beginner', '2023-01-15 09:00:00',124,45),
  ('Guitar', 'Intermediate', '2023-01-16 14:30:00',124 ,46),
  ('Violin', 'Advanced', '2023-01-17 18:45:00',128,48),
  ('Bass Guitar', 'Intermediate', '2023-01-24 12:00:00',132,50 );


--Price_id:49,47. 
--IDs 1->2
INSERT INTO group_lesson(minimum_students, skill_level, price_id, instructor_id)
VALUES
  (30, 'Beginner', 47, 132),
  (21, 'Advanced', 49, 128);


--Price_id:41,42,43,44,
-- IDs 1->4
INSERT INTO ensemble(genre_played, max_allowed_students, min_allowed_students, price_id,instructor_id)
VALUES
  ('Rock', 100, 20, 41, 124),
  ('Pop', 200, 100,42 ,124 ),
  ('Jazz', 50, 20,43 ,131),
  ('Classical', 20, 10, 44 ,124);




--IDs 1->10
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




--Students: IDs 1->10
--Instructors IDs 12->21
INSERT INTO contact_detail (contact_person_first_name, contact_person_last_name, student_id,instructor_id)
VALUES
	('Deanna', 'Sanchez', 71,NULL),
	('Hillary', 'Herrera',72,NULL),
	('Giacomo', 'Meadows',73,NULL),
	('Daphne', 'Houston',74,NULL),
	('Marsden', 'Pacheco',75,NULL),
	('Rachel', 'Pate',76,NULL),
	('Vera', 'Wood',77,NULL),
	('Chloe', 'Chan',78,NULL),
	('Maggy', 'Rivers',79,NULL),
	('Caleb', 'Perez',80,NULL),

  (NULL,NULL,NULL, 124),  
  (NULL,NULL,NULL, 125),
  (NULL,NULL,NULL, 126),
  (NULL,NULL,NULL, 127),
  (NULL,NULL,NULL, 128),
  (NULL,NULL,NULL, 129),
  (NULL,NULL,NULL, 130),
  (NULL,NULL,NULL, 131),
  (NULL,NULL,NULL, 132),
  (NULL,NULL,NULL, 133),


-- Students: IDs 1->10
-- Insert data into email table
INSERT INTO email(email, contact_detail_id)
VALUES
  ('eu.tempor@protonmail.com',1),
  ('non.arcu@aol.edu',2),
  ('quam.pellentesque.habitant@hotmail.ca',3),
  ('lacus@google.net',4),
  ('lorem.vitae.odio@protonmail.couk',5),
  ('convallis.erat@protonmail.net',6),
  ('ornare.lectus.justo@aol.com',7),
  ('nec@icloud.org',7),
  ('morbi.tristique@outlook.edu',9),
  ('aliquam@yahoo.couk',10);


-- Instructor IDs 12->21
  ('fusce.aliquam.enim@icloud.org',12),
  ('enim.suspendisse.aliquet@google.edu',13),
  ('nulla.donec.non@aol.couk',14),
  ('elit.pretium@outlook.ca',15),
  ('sed.leo@protonmail.com',16),
  ('semper@outlook.couk',17),
  ('posuere.vulputate.lacus@aol.couk',18),
  ('magna@icloud.couk',19),
  ('sagittis.lobortis@icloud.ca',20),
  ('neque@google.edu',21);





--IDs 1->10
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
  ('+10594061441', 10);

 ('+10258534262',12),
  ('+10488930012',13),
  ('+10587458546',14),
  ('+10840631657',15),
  ('+10272787678',16),
  ('+10427205855',17),
  ('+10363679651',18),
  ('+10482870237',19),
  ('+10668865733',20),
  ('+10884363276',21);



--IDs 7->12
INSERT INTO time_slot(time_slot,group_lesson_id ,ensemble_id)
VALUES
  ('2023-1-15 10:00:00', 1,NULL),
  (' 2023-02-05 11:30:00', NULL,1),
  ('2023-03-20 09:15:00', NULL,2),
  ('2023-04-10 14:45:00', NULL,3),
  ('2023-05-25 12:30:00', 2,NULL ),
  ('2023-06-15 13:45:00', NULL,4);




--"instructor" IDs 131->140
INSERT INTO adress(street, zip_code, city, student_id, instructor_id, lesson_id, group_lesson_id, ensemble_id)
VALUES
  ('Ap #165-8186 Vitae Avenue', '89-189', 'Lelystad', NULL, 124, NULL, NULL, NULL),
  ('773-2999 Proin Ave', 'UD6 3JU', 'Antártica', NULL, 125, NULL, NULL, NULL),
  ('843-4118 Gravida Av.', '93197', 'Maranguape', NULL, 126, NULL, NULL, NULL),
  ('Ap #767-1185 Et Av.', '826773', 'Landeck', NULL, 127, NULL, NULL, NULL),
  ('P.O. Box 997, 1179 Nec Road', '30616', 'Ukkel', NULL, 128, NULL, NULL, NULL),
  ('Ap #809-6584 Nisl Road', '85477', 'Falun', NULL, 129, NULL, NULL, NULL),
  ('Ap #835-627 Elit. Ave', '8711', 'Iksan', NULL, 130, NULL, NULL, NULL),
  ('3602 Lobortis Rd.', '75355', 'Jiangsu', NULL, 131, NULL, NULL, NULL),
  ('Ap #693-9895 Sollicitudin Rd.', '7675', 'San Marcos', NULL, 132, NULL, NULL, NULL),
  ('388 Consectetuer, Ave', '33672', 'Montemignaio', NULL, 133, NULL, NULL, NULL),
 
--"Student" IDs 141->150
  ('P.O. Box 576, 2070 Morbi Avenue', '41347', 'elementum', 71, NULL, NULL, NULL, NULL),
  ('Ap #488-7418 A, Rd.', '41005', 'malesuada', 72, NULL, NULL, NULL, NULL),
  ('Ap #896-2312 Vitae Rd.', '4886', 'nisl', 73, NULL, NULL, NULL, NULL),
  ('9183 Duis St.', '77938', 'diam.', 74, NULL, NULL, NULL, NULL),
  ('Ap #252-6037 Auctor Av.', '38590', 'primis', 75, NULL, NULL, NULL, NULL),
  ('736-2086 Eu Street', '6252', 'mus.', 76, NULL, NULL, NULL, NULL),
  ('982-7943 Fusce Ave', '33279', 'Morbi', 77, NULL, NULL, NULL, NULL),
  ('299-1528 Lectus St.', '33541', 'mauris', 78, NULL, NULL, NULL, NULL),
  ('Ap #793-1923 Fringilla St.', '38145-40661', 'Nunc', 79, NULL, NULL, NULL, NULL),
  ('235-3528 Sed St.', '25-85', 'gravida.', 80, NULL, NULL, NULL, NULL);
  


--IDs 169->178
INSERT INTO adress(street, zip_code, city, student_id, instructor_id, lesson_id, group_lesson_id, ensemble_id)
VALUES
  ('P.O. Box 517, 7557 Molestie Rd.', '912301', 'FunLand', NULL, NULL, 41, NULL, NULL),
  ('7764 Et, Ave', '912301', 'FunLand', NULL, NULL, 42, NULL, NULL),
  ('Ap #575-956 Justo St.', '912301', 'FunLand', NULL, NULL, 43, NULL, NULL),
  ('P.O. Box 922, 9229 Sodales St.', '912301', 'FunLand', NULL, NULL, 44, NULL, NULL),
  
  ('9089 Ac St.', '912301', 'FunLand', NULL, NULL, NULL, 1, NULL),
  ('183 Sit St.', '912301', 'FunLand', NULL, NULL, NULL, 2, NULL),
  
  ('Ap #202-6634 Magna Avenue', '912301', 'FunLand', NULL, NULL, NULL, NULL, 1),
  ('P.O. Box 344, 4040 Velit St.', '912301', 'FunLand', NULL, NULL, NULL, NULL, 2),
  ('548-4737 Non Rd.', '912301', 'FunLand', NULL, NULL, NULL, NULL, 3),
  ('332-8847 Mauris Avenue', '912301', 'FunLand', NULL, NULL, NULL, NULL, 4);


--IDs 1->10
INSERT INTO location(campus_location, address_id)
VALUES
  ('Room 1',169 ),
  ('Room 2',170),
  ('Room 3',171),
  ('Room 4',172),
  ('Room 5',173),
  ('Room 6',174),
  ('Room 7',175),
  ('Room 8',176),
  ('Room 9',177),
  ('Room 10',178);

--IDs 1->6
INSERT INTO instrument_rental(lease_start_date, monthly_cost, instrument_id, student_id)
VALUES 
  ('2023-02-01', 150.00, 1,72),
  ('2023-02-05', 120.00,5 ,75),
  ('2023-02-10', 200.00 ,2,78),
  ('2023-02-15', 180.00 ,3,74),
  ('2023-02-20', 160.00 ,10,79),
  ('2023-02-20', 160.00 ,9,79);


INSERT INTO student_lesson(student_id, lesson_id)
VALUES
	(72,41),
	(73,42),
	(80,43),
	(76,44);


INSERT INTO student_ensemble(student_id, ensemble_id)
VALUES
	(71,1),
	(72,1),
	(77,1),
	(80,1),
	(76,2),
	(73,2),
	(77,2),
	(74,2),	
	(71,3),
	(73,3),
	(72,3),
	(74,3),
	(79,4),
	(72,4),
	(78,4),
	(75,4);


INSERT INTO student_group_lesson(student_id, group_lesson_id)
VALUES
	(72,1),
	(77,1),
	(76,1),
	(80,2),
	(76,2),
	(72,2),
	(71,2);


