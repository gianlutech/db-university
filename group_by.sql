
/* 1. Contare quanti iscritti ci sono stati ogni anno */
SELECT COUNT(*) AS 'numero_studenti', `enrolment_date` FROM `students` GROUP BY `enrolment_date` ORDER BY `enrolment_date` ASC

/* 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio */
SELECT COUNT(*) AS 'insegnanti', `office_address` as 'stesso_ufficio' FROM `teachers` GROUP BY `office_address` ORDER BY `office_address`

/* 3. Calcolare la media dei voti di ogni appello d'esame */
SELECT AVG(vote) FROM `exam_student` WHERE `exam_id`

/* 4. Contare quanti corsi di laurea ci sono per ogni dipartimento */
SELECT COUNT(*) AS `numero_corsi`, `department_id` FROM `degrees` GROUP BY `department_id`