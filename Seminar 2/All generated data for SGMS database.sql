INSERT INTO phone_number (phone_number)
VALUES
  ('+10758958599'),
  ('+10766081199'),
  ('+10985750268'),
  ('+10796453866'),
  ('+10799876185'),
  ('+10282195132'),
  ('+10043833337'),
  ('+10810865412'),
  ('+10267564642'),
  ('+10594061441');
  
INSERT INTO location (campus_location)
VALUES
  ('Room 1'),
  ('Room 2'),
  ('Room 3'),
  ('Room 4'),
  ('Room 5'),
  ('Room 6'),
  ('Room 7'),
  ('Room 8'),
  ('Room 9'),
  ('Room 10');

INSERT INTO student(person_number,first_name,last_name)
VALUES
  ('681897655460','Iris','Horne'),
  ('134221865216','Anjolie','Reynolds'),
  ('375442467647','Shafira','Bowen'),
  ('439923307816','Adrienne','Kaufman'),
  ('463565118166','Amanda','Ortiz'),
  ('866738127812','Zelda','Mccullough'),
  ('186462993631','Kaitlin','Dotson'),
  ('148383942320','Demetrius','Grimes'),
  ('444492563444','Cain','Berger'),
  ('380427383495','Steel','Chandler');

  INSERT INTO lesson (instrument_type,skill_level,appointed_time)
VALUES
  ('Guitar','Beginner','2:29 pm'),
  ('Piano','Intermediate','8:01 am'),
  ('Piano','Advanced','2:06 pm'),
  ('Violin','Advanced','8:15 am'),
  ('Violin','Beginner','6:21 pm'),
  ('Bass','Beginner','7:44 pm'),
  ('Bass','Intermediate','7:15 am'),
  ('Piano','Intermediate','4:29 pm'),
  ('Bass','Intermediate','3:45 pm'),
  ('Violin','Intermediate','1:54 pm');

INSERT INTO price_for_ensemble (price_for_students_ensemble,payment_for_instructor_ensemble)
VALUES
  ('€960','€535'),
  ('€538','€401'),
  ('€933','€550'),
  ('€956','€327'),
  ('€397','€543'),
  ('€530','€295'),
  ('€545','€749'),
  ('€381','€460'),
  ('€682','€918'),
  ('€673','€699');

INSERT INTO price_for_group (price_for_students_group,payment_for_instructor_group)
VALUES
  ('€960','€15'),
  ('€538','€401'),
  ('€933','€540'),
  ('€956','€327'),
  ('€397','€543'),
  ('€530','€295'),
  ('€545','€759'),
  ('€381','€460'),
  ('€682','€918'),
  ('€673','€699');

INSERT INTO price_for_lesson (price_for_students_lesson,payment_for_instructor_lesson)
VALUES
  ('€358','€739'),
  ('€579','€579'),
  ('€315','€760'),
  ('€706','€569'),
  ('€419','€96'),
  ('€972','€455'),
  ('€961','€89'),
  ('€820','€640'),
  ('€518','€562'),
  ('€564','€716');

INSERT INTO rental (lease_start_date,monthly_cost)
VALUES
  ('May 23rd, 2024','€8,103'),
  ('February 13th, 2024','€3,807'),
  ('October 7th, 2024','€8,882'),
  ('November 29th, 2023','€3,376'),
  ('September 19th, 2024','€3,869'),
  ('November 4th, 2024','€4,719'),
  ('April 22nd, 2024','€3,668'),
  ('March 12th, 2024','€8,704'),
  ('September 23rd, 2024','€9,718'),
  ('July 25th, 2024','€4,647');

INSERT INTO specified_instruments_instructor (specified_instruments_instructor)
VALUES
  ('Guitar'),
  ('Bass, Violin, Piano, Guitar'),
  ('Violin, Guitar, Bass'),
  ('Piano'),
  ('Violin'),
  ('Bass, Guitar, Violin, Piano'),
  ('Bass, Violin, Piano'),
  ('Piano, Violin, Guitar, Bass'),
  ('Guitar, Bass, Piano, Violin'),
  ('Violin, Piano, Guitar');

INSERT INTO time_slot (slot)
VALUES
  ('8:59'),
  ('18:53'),
  ('13:36'),
  ('8:26'),
  ('13:17'),
  ('15:48'),
  ('9:03'),
  ('19:27'),
  ('13:19'),
  ('9:29');

INSERT INTO adress (street,zip_code,city)
VALUES
  ('Ap #165-8186 Vitae Avenue','89-189','Lelystad'),
  ('773-2999 Proin Ave','UD6 3JU','Antártica'),
  ('843-4118 Gravida Av.','93197','Maranguape'),
  ('Ap #767-1185 Et Av.','826773','Landeck'),
  ('P.O. Box 997, 1179 Nec Road','30616','Ukkel'),
  ('Ap #809-6584 Nisl Road','85477','Falun'),
  ('Ap #835-627 Elit. Ave','8711','Iksan'),
  ('3602 Lobortis Rd.','75355','Jiangsu'),
  ('Ap #693-9895 Sollicitudin Rd.','7675','San Marcos'),
  ('388 Consectetuer, Ave','33672','Montemignaio');

INSERT INTO instrument_quantity (instrument_quantity)
VALUES
  (38),
  (41),
  (69),
  (17),
  (38),
  (86),
  (100),
  (99),
  (74),
  (95);
INSERT INTO contact_detail (contact_person_first_name,contact_person_last_name)
VALUES
  ('Deanna','Sanchez'),
  ('Hillary','Herrera'),
  ('Giacomo','Meadows'),
  ('Daphne','Houston'),
  ('Marsden','Pacheco'),
  ('Rachel','Pate'),
  ('Vera','Wood'),
  ('Chloe','Chan'),
  ('Maggy','Rivers'),
  ('Caleb','Perez');

INSERT INTO discount (price_reduction)
VALUES
  ('Yes'),
  ('Yes'),
  ('No'),
  ('Yes'),
  ('No'),
  ('Yes'),
  ('Yes'),
  ('No'),
  ('No'),
  ('Yes');

INSERT INTO email (email)
VALUES
  ('eu.tempor@protonmail.com'),
  ('non.arcu@aol.edu'),
  ('quam.pellentesque.habitant@hotmail.ca'),
  ('lacus@google.net'),
  ('lorem.vitae.odio@protonmail.couk'),
  ('convallis.erat@protonmail.net'),
  ('ornare.lectus.justo@aol.com'),
  ('nec@icloud.org'),
  ('morbi.tristique@outlook.edu'),
  ('aliquam@yahoo.couk');

INSERT INTO enrollment (instrument_to_learn,room_left,skill_level)
VALUES
  ('Guitar','Yes','Advanced'),
  ('Guitar','Yes','Advanced'),
  ('Guitar','No','Beginner'),
  ('Guitar','No','Advanced'),
  ('Piano','Yes','Advanced'),
  ('Guitar','No','Intermediate'),
  ('Guitar','No','Beginner'),
  ('Guitar','No','Beginner'),
  ('Bass','No','Intermediate'),
  ('Violin','No','Advanced');

INSERT INTO group_lesson (minimum_students,skill_level)
VALUES
  (30,'Beginner'),
  (21,'Advanced'),
  (54,'Beginner'),
  (15,'Intermediate'),
  (51,'Advanced'),
  (1,'Intermediate'),
  (96,'Advanced'),
  (86,'Advanced'),
  (82,'Advanced'),
  (79,'Intermediate');

INSERT INTO instructor (ensemble_proficiency,person_number,first_name,last_name)
VALUES
  ('Yes','294321423191','Ingrid','Floyd'),
  ('No','767563762243','Elmo','Mullen'),
  ('No','316258737368','Mohammad','Graham'),
  ('No','614644373763','Chiquita','Henderson'),
  ('No','645476593172','Fiona','Molina'),
  ('Yes','553721147665','Freya','Carter'),
  ('No','436593883917','Isabelle','Ray'),
  ('Yes','588646988361','Kaitlin','Vincent'),
  ('No','116265228429','Nyssa','Ballard'),
  ('Yes','637366125021','Cameron','Burke');

INSERT INTO available_instructor (availability)
VALUES
  ('Yes'),
  ('Yes'),
  ('No'),
  ('Yes'),
  ('Yes'),
  ('No'),
  ('Yes'),
  ('No'),
  ('No'),
  ('Yes');

INSERT INTO instrument_for_renting (brand,instrument_type)
VALUES
  ('luctus','Piano'),
  ('parturient','Piano'),
  ('vestibulum','Bass'),
  ('nunc.','Violin'),
  ('enim,','Guitar'),
  ('blandit','Violin'),
  ('Aliquam','Piano'),
  ('porttitor','Bass'),
  ('nibh.','Bass'),
  ('elit','Violin');
