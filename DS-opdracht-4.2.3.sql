SELECT
    r.id,
    r.name AS hoofdrubriek,
    g.name AS subrubriek
FROM mhl_rubrieken r
LEFT JOIN mhl_rubrieken g
    ON g.parent = r.id
WHERE r.parent = 0
ORDER BY r.name, g.name;