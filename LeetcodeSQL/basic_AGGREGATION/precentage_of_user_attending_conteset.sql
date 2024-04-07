SELECT r.contest_id, ROUND(COUNT(DISTINCT r.user_id)/COUNT(DISTINCT u.user_id)*100,2) as percentage
FROM Register r, Users u
GROUP BY r.contest_id
ORDER BY percentage DESC,r.contest_id ASC