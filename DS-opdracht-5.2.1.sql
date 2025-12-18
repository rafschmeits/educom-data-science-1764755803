SELECT 
    s.name, 
    CASE 
        WHEN c.name IS NULL THEN 't.a.v de directie'
        ELSE c.name 
    END AS aanhef,
    CASE
        WHEN NULLIF(TRIM(s.p_address), '') IS NULL
            THEN CONCAT_WS(' ', s.straat, s.huisnr)
        ELSE s.p_address
    END AS adres,
    CASE
        WHEN NULLIF(TRIM(s.p_address), '') IS NULL
            THEN s.postcode
        ELSE s.p_postcode
    END AS postcode,
    e.name
FROM mhl_suppliers s 
LEFT JOIN mhl_contacts c 
    ON s.id = c.supplier_ID 
JOIN mhl_cities e
    ON s.city_ID = e.id
JOIN mhl_communes g 
    ON e.commune_ID = g.id
JOIN mhl_districts d 
    ON g.district_ID = d.id
ORDER BY d.name, e.name, s.name;