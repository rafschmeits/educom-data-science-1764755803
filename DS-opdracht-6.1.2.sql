SELECT f.gemeente, f.leverancier, f.total_hitcount, g.avg_hits
FROM

(SELECT
   SUM(h.hitcount) AS total_hitcount,
 g.name AS gemeente,
 s.name AS Leverancier
FROM mhl_suppliers s 
JOIN mhl_cities c 
ON s.city_ID = c.id 
JOIN mhl_communes g 
ON c.commune_ID = g.id 
JOIN mhl_hitcount h 
ON s.id = h.supplier_ID
GROUP BY g.name, s.name
 ) f
JOIN 
( SELECT 
 g.name AS gemeente, 
 AVG(h.hitcount) AS avg_hits
FROM mhl_suppliers s 
JOIN mhl_cities c 
ON s.city_ID = c.id 
JOIN mhl_communes g 
ON c.commune_ID = g.id 
JOIN mhl_hitcount h 
ON s.id = h.supplier_ID
GROUP BY g.name) g
ON f.gemeente = g.gemeente
WHERE f.total_hitcount> g.avg_hits
ORDER BY f.gemeente, f.total_hitcount DESC
