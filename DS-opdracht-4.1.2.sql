SELECT s.name, s.straat, s.postcode, s.postcode, c.name
FROM mhl_suppliers s 
JOIN mhl_cities c 
ON s.city_ID = c.id 
JOIN mhl_communes g
ON c.commune_ID = g.id
WHERE g.name = 'Steenwijkerland';