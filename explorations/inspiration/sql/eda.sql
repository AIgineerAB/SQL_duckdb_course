SELECT * FROM study_technique.studieteknik;

SELECT
	COUNT(*) AS number_students
FROM
	study_technique.studieteknik;


SELECT
	studieteknik,
	COUNT(*) AS number_students
FROM
	study_technique.studieteknik
GROUP BY
	studieteknik;


SELECT
	jobb_studier,
	COUNT(*) AS number_students
FROM
	study_technique.studieteknik
GROUP BY
	jobb_studier;
	
-- most favorite techniques top 3
SELECT
	studieteknik,
	COUNT(*) AS number_students
FROM
	study_technique.studieteknik
GROUP BY
	studieteknik
ORDER BY
	number_students DESC
LIMIT 3;


SELECT * FROM study_technique.studieteknik WHERE student = 'Student_1';

SELECT * FROM study_technique.studieteknik WHERE student IN ('Student_1', 'Student_5');