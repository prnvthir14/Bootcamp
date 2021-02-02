SELECT teachers.name AS "teacher", students.name AS "student", assignments.name, (assistance_requests.completed_at - assistance_requests.started_at) AS "duration" 
FROM assistance_requests
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN assignment_submissions ON assistance_requests.student_id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
ORDER BY (assistance_requests.completed_at - assistance_requests.started_at);