SELECT c.name, 
CASE 
WHEN g.id = 0 THEN 'INVALID'
ELSE g.name
END AS gemeente_naam
FROM mhl_cities c 
JOIN mhl_communes g 
ON c.commune_ID = g.id 
ORDER BY c.name
