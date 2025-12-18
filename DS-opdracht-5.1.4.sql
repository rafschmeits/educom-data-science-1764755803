SELECT s.name, SUM(h.hitcount), COUNT(h.month), SUM(h.hitcount)/COUNT(h.month) AS avgpermonth
FROM mhl_hitcount h
JOIN mhl_suppliers s 
ON h.supplier_ID = s.id
GROUP BY s.name
HAVING SUM(h.hitcount) >100
ORDER BY SUM(h.hitcount)DESC