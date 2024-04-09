SELECT MAX(m.num) as num
FROM 
(SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) <=1) as m