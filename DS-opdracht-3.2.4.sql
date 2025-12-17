SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s 
JOIN mhl_cities c 
ON s.city_ID = c.id
JOIN mhl_cities p 
ON s.p_city_ID = p.id
WHERE c.name = 'Amsterdam'
OR p.name = 'Den Haag'