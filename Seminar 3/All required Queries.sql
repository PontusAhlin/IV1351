--1st Query--

SELECT 
    CASE EXTRACT(MONTH FROM coalesce(ts_gls.time_slot, ls.appointed_time, ts_ens.time_slot))
        WHEN 1 THEN 'January'
        WHEN 2 THEN 'February'
        WHEN 3 THEN 'March'
        WHEN 4 THEN 'April'
        WHEN 5 THEN 'May'
        WHEN 6 THEN 'June'
        WHEN 7 THEN 'July'
        WHEN 8 THEN 'August'
        WHEN 9 THEN 'September'
        WHEN 10 THEN 'October'
        WHEN 11 THEN 'November'
        WHEN 12 THEN 'December'
    END AS month_name,
	SUM(CASE WHEN pfl.price_id IS NOT NULL THEN 1 ELSE 0 END) AS total,
    COUNT(DISTINCT ls.id) AS individual,
    COUNT(DISTINCT gls.id) AS "group",
    COUNT(DISTINCT ens.id) AS ensemble
FROM price_for_lessons AS pfl
	LEFT JOIN lesson AS ls ON pfl.price_id = ls.price_id 
	LEFT JOIN group_lesson AS gls ON pfl.price_id = gls.price_id
	LEFT JOIN ensemble AS ens ON pfl.price_id = ens.price_id

	LEFT JOIN time_slot AS ts_gls ON gls.id = ts_gls.group_lesson_id  
	LEFT JOIN time_slot AS ts_ens ON ens.id = ts_ens.ensemble_id 
	WHERE EXTRACT(YEAR FROM COALESCE(ts_gls.time_slot, ls.appointed_time, ts_ens.time_slot)) = 2023
GROUP BY month_name
ORDER BY total DESC;


--2nd Query--

SELECT
  siblings AS number_of_siblings,
  COUNT(student_id) AS number_of_students
FROM (
  SELECT s.id AS student_id, COUNT(sb.sibling_id) AS siblings
  FROM student AS s
  LEFT JOIN sibling sb ON s.id = sb.student_id1 OR s.id = sb.student_id2
  GROUP BY s.id
) AS student_siblings
GROUP BY siblings
ORDER BY siblings;

--3rd Query--

SELECT 
    inst.id AS instructor_id,
    inst.first_name,
    inst.last_name,
    COUNT(DISTINCT COALESCE(les.id, ts_gl.group_lesson_id, ts_ens.ensemble_id)) AS number_of_lessons
FROM
    instructor AS inst 
LEFT JOIN lesson AS les ON les.instructor_id = inst.id 
LEFT JOIN group_lesson AS gl ON gl.instructor_id = inst.id
LEFT JOIN ensemble AS ens ON ens.instructor_id = inst.id
LEFT JOIN time_slot AS ts_gl ON gl.id = ts_gl.group_lesson_id 
LEFT JOIN time_slot AS ts_ens ON ens.id = ts_ens.ensemble_id 
WHERE 
    EXTRACT(MONTH FROM les.appointed_time) = EXTRACT(MONTH FROM CURRENT_DATE) 
    OR EXTRACT(MONTH FROM ts_gl.time_slot) = EXTRACT(MONTH FROM CURRENT_DATE) 
    OR EXTRACT(MONTH FROM ts_ens.time_slot) = EXTRACT(MONTH FROM CURRENT_DATE) 
GROUP BY inst.id, inst.first_name, inst.last_name
ORDER BY number_of_lessons DESC;


--4th Query--

SELECT 
	CASE EXTRACT(DOW FROM ts.time_slot)
        WHEN 0 THEN 'Sunday'
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
	END AS day_held,
    en.genre_played AS genre,
    en.max_allowed_students AS max_seats,
    COUNT(DISTINCT se.student_id) AS occupied_seats,
	en.max_allowed_students - COUNT(DISTINCT se.student_id) AS remaining_seats,
	CASE 
		WHEN en.max_allowed_students - COUNT(DISTINCT se.student_id) > 2 THEN 'Many seats'
		WHEN en.max_allowed_students - COUNT(DISTINCT se.student_id) >= 1 
		AND en.max_allowed_students - COUNT(DISTINCT se.student_id) <= 2 THEN '1 or 2 seats'
		WHEN en.max_allowed_students - COUNT(DISTINCT se.student_id) = 0 THEN 'No seats'
	END AS "No of free seats"
FROM 
    ensemble AS en 
    LEFT JOIN time_slot AS ts ON en.id = ts.ensemble_id
    LEFT JOIN student_ensemble AS se ON se.ensemble_id = en.id
	WHERE ts.time_slot >= CURRENT_DATE AND ts.time_slot < CURRENT_DATE + 7 	
GROUP BY 
    day_held, genre, total_seats
ORDER BY 
	total_seats DESC;
