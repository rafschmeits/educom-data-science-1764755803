SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s 
JOIN mhl_yn_properties y 
ON s.id = y.supplier_ID
JOIN mhl_propertytypes p 
ON y.propertytype_ID = p.id
WHERE p.name IN('specialistische leverancier', 'ook voor particulieren');