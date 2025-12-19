SELECT
    j.name,
    x.numsup
FROM
(
    SELECT
        r.name AS name,
        r.id AS rubriek_id
    FROM mhl_rubrieken r
    WHERE r.parent = 0

    UNION ALL

    SELECT
        CONCAT(p.name, ' - ', c.name) AS name,
        c.id AS rubriek_id
    FROM mhl_rubrieken p
    JOIN mhl_rubrieken c
        ON c.parent = p.id
) j
LEFT JOIN
(
    SELECT
        k.mhl_rubriek_view_ID AS rubriek_id,
        COUNT(k.mhl_suppliers_ID) AS numsup
    FROM mhl_suppliers_mhl_rubriek_view k
    GROUP BY k.mhl_rubriek_view_ID
) x
ON x.rubriek_id = j.rubriek_id
ORDER BY j.name;