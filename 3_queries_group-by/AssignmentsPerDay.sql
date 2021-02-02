SELECT day AS "day", count(id) AS total_assignemnts 
FROM assignments
GROUP BY day
ORDER BY day;