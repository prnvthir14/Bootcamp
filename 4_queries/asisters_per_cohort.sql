SELECT teachers.name, cohorts.name, count(assistance_requests.id) AS "total_assistances"
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id 
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name in ('JUL02')
GROUP BY teachers.name, cohorts.name
ORDER BY count(assistance_requests.id) desc