SELECT s.name, s.straat, s.huisnr, s.postcode, r.name
FROM mhl_suppliers s 
JOIN mhl_cities c
ON s.city_ID = c.id
JOIN mhl_suppliers_mhl_rubriek_view e 
ON s.id = e.mhl_suppliers_ID 
JOIN mhl_rubrieken r 
ON e.mhl_rubriek_view_ID = r.id
JOIN mhl_rubrieken rp 
ON r.parent = rp.id 
WHERE c.name = 'Amsterdam' 
AND rp.name = 'drank'
ORDER BY r.name, s.name;
