/* 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
SELECT `students`.`name`as `name` , `students`.`surname`as `surname` , `degrees`.`name` as `corses` FROM `students` JOIN `degrees` ON `degrees`.`id` = `students`.`degree_id` WHERE `degrees`.`name` = 'Corso di Laurea in Economia'

/* 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze */
SELECT `degrees`.`name` as `corsi`, `departments`.`name` as `dipartimento` FROM `degrees` JOIN `departments` ON `departments`.`id` = `degrees`.`department_id` WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'

/* 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) */
SELECT `courses`.`name` as `name` , `teachers`.`id` as `teacher`, `teachers`.`name` as `name`, `teachers`.`surname` as `surname` FROM `courses` JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id` JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id` WHERE `teachers`.`id` = 44

/* 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
relativo dipartimento, in ordine alfabetico per cognome e nome */
SELECT `students`.`surname` AS `cognome_studenti`, `students`.`name` AS `nome_studenti`, `degrees`.`name` as `corsi`, `departments`.`name` as `dipartimenti` FROM `students` JOIN `degrees` ON `degrees`.`id`= `students`.`degree_id` JOIN `departments` ON `departments`.`id`= `degrees`.`department_id` ORDER BY `students`.`surname`

/* 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti */
SELECT `degrees`.`name` AS `corsi_laurea` , `courses`.`name`AS `corsi`, `teachers`.`name` as `teachers` FROM `degrees` JOIN `courses` ON `degrees`.`id` = `courses`.`degree_id` JOIN `course_teacher` ON `degrees`.`id` = `course_teacher`.`teacher_id` JOIN `teachers` ON `teachers`.`id`= `course_teacher`.`course_id`

/* 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54) */
SELECT DISTINCT(`teachers`.`name`) as `name`, `teachers`.`surname` as `surname`, `departments`.`name` AS `departments` FROM `teachers` JOIN `course_teacher` ON `teachers`.`id` = `course_teacher`.`teacher_id` JOIN `courses` ON `courses`.`id` = `course_teacher`.`course_id` JOIN `degrees` ON `degrees`.`id` = `courses`.`degree_id` JOIN `departments` ON `departments`.id = `degrees`.`department_id` WHERE `departments`.`name` = 'Dipartimento di Matematica' ORDER BY `teachers`.`surname`

/* 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
superare ciascuno dei suoi esami */