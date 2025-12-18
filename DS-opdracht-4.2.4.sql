SELECT  s.name AS supplier, p.name AS property,
    CASE 
        WHEN y.content IS NULL THEN 'NOT SET'
        ELSE y.content
    END AS value
FROM mhl_suppliers s
JOIN mhl_cities c
    ON s.city_ID = c.id
JOIN mhl_propertytypes p
    ON p.proptype = 'A'
LEFT JOIN mhl_yn_properties y
    ON y.supplier_ID = s.id
   AND y.propertytype_ID = p.id
WHERE c.name = 'Amsterdam';