SELECT c.name, c.id AS stad_ID_1, d.id AS stad_id_2, g.id AS gemeente_ID_1, f.id AS gemeent_id_2, g.name AS gemeente_1, f.name AS gemeente_2
FROM mhl_cities c 
JOIN mhl_communes g 
ON c.commune_ID = g.id 
JOIN mhl_cities d 
ON c.name = d.name 
JOIN mhl_communes f 
ON d.commune_ID = f.id
WHERE c.id < d.id
AND NOT f.id = 0
And NOT g.id = 0 
ORDER BY c.name  