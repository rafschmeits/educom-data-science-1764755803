SELECT 
    c.name,
    SUM(CASE WHEN m.name = 'Gold'   THEN 1 ELSE 0 END) AS Gold,
    SUM(CASE WHEN m.name = 'Silver' THEN 1 ELSE 0 END) AS Silver,
    SUM(CASE WHEN m.name = 'Bronze' THEN 1 ELSE 0 END) AS Bronze,
    SUM(CASE WHEN m.name NOT IN('Gold', 'Silver', 'Bronze', 'Unknown membertype') THEN 1 ELSE 0 END) AS Other
FROM mhl_membertypes m 
JOIN mhl_suppliers s 
    ON m.id = s.membertype 
JOIN mhl_cities c 
    ON s.city_ID = c.id 
GROUP BY c.name
ORDER BY Gold DESC, Silver DESC, Bronze DESC, Other DESC