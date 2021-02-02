SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.id) "total_requests" 
FROM assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id, assignments.name, assignments.day, assignments.chapter
ORDER BY count(assistance_requests.id)  

