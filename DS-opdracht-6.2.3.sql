SELECT
    DAYNAME(joindate) AS dag,
    COUNT(*) AS aantal_leveranciers
FROM mhl_suppliers
GROUP BY dag
ORDER BY DAYOFWEEK(joindate);