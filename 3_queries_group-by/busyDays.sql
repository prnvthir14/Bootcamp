SELECT day AS "day", count(id) AS total_assignemnts 
FROM assignments
GROUP BY day
HAVING count(id) >= 10
ORDER BY day;