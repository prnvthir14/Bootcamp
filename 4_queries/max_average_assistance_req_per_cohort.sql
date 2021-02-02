
select MAX(average_assistance_time) FROM
(SELECT cohorts.name, AVG(completed_at - started_at) AS "average_assistance_time"
FROM assistance_requests
JOIN students on assistance_requests.student_id = students.id 
JOIN cohorts on students.cohort_id = cohorts.id
GROUP BY cohorts.name) AS average_assistance_times
