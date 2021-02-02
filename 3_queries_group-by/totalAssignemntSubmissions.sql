SELECT cohorts.name, count(assignment_submissions.assignment_id) AS "total_submissions" FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assignment_submissions on assignment_submissions.student_id = students.id 
GROUP BY cohorts.name 
ORDER BY count(students.id) DESC;



