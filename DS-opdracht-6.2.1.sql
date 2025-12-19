SELECT
    id,
    DATE_FORMAT(joindate, '%d-%m-%Y') AS joindate
FROM mhl_suppliers
WHERE joindate >= DATE_SUB(LAST_DAY(joindate), INTERVAL 7 DAY);