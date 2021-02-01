SELECT SUM(assignment_submissions.duration) FROM assignment_submissions  
JOIN assignments on assignment_submissions.assignment_id = assignments.id
JOIN students on assignment_submissions.student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';
