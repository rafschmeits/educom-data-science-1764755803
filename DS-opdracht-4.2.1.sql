SELECT c.name, g.id
FROM mhl_cities c 
JOIN mhl_communes g 
ON c.commune_ID = g.id 
WHERE c.commune_ID = 0 
 