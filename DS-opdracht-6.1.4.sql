SELECT
    j.name AS rubriek,
    CASE
        WHEN SUM(h.hitcount) IS NULL THEN 'Geen hits'
        ELSE SUM(h.hitcount)
    END AS totale_hitcount
FROM
(
    SELECT
        r.id AS rubriek_id,
        r.name AS name
    FROM mhl_rubrieken r
    WHERE r.parent = 0

    UNION ALL

    SELECT
        c.id AS rubriek_id,
        CONCAT(p.name, ' - ', c.name) AS name
    FROM mhl_rubrieken p
    JOIN mhl_rubrieken c
        ON c.parent = p.id
) j
LEFT JOIN mhl_suppliers_mhl_rubriek_view sr
    ON j.rubriek_id = sr.mhl_rubriek_view_ID
LEFT JOIN mhl_hitcount h
    ON sr.mhl_suppliers_ID = h.supplier_ID
GROUP BY j.rubriek_id, j.name
ORDER BY j.name;