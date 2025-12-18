SELECT s.name,
CASE
WHEN d.name IS NULL THEN 't.a.v directie'
ELSE d.name 
END AS contact,
v.adres, v.postcode, v.stad
FROM mhl_suppliers s 
LEFT JOIN directie d 
ON s.id = d.supplier_ID 
LEFT JOIN verzendlijst v 
ON s.id = v.id 