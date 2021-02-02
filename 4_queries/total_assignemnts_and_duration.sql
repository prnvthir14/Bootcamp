SELECT day, count(id), sum(duration) FROM assignments   
GROUP BY day
ORDER BY day;