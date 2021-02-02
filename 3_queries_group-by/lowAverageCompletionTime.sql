SELECT students.name, AVG(assignment_submissions.duration) AS "average_assignment_duration", AVG(assignments.duration) AS "average_estimated_duration" FROM students
JOIN assignment_submissions on assignment_submissions.student_id = students.id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL 
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration) ASC;