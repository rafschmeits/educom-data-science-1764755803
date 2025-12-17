SELECT h.hitcount, s.name AS leverancier, c.name AS stad, g.name AS gemeente, d.name AS provincie
FROM mhl_suppliers s 
JOIN mhl_cities c 
ON s.city_ID = c.id 
JOIN mhl_communes g 
ON c.commune_ID = g.id 
JOIN mhl_districts d 
ON g.district_ID = d.id 
JOIN mhl_hitcount h
ON s.id = h.supplier_ID
WHERE h.year = 2014
AND h.month = 1 
AND d.name IN('Limburg', 'Noord-Brabant', 'Zeeland') 