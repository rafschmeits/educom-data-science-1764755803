SELECT year, 
CASE
WHEN month = 1 then 'Januari'
WHEN month = 2 then 'Februari'
WHEN month = 3 then 'maart'
WHEN month = 4 then 'april'
WHEN month = 5 THEN 'mei'
WHEN month = 6 THEN 'juni'
WHEN month = 7 THEN 'juli'
WHEN month = 8 THEN 'augustus'
WHEN month = 9 THEN 'September'
WHEN month = 10 THEN 'Oktober'
WHEN month = 11 THEN 'Novermber'
WHEN month = 12 THEN 'december'
ELSE 'month unknown'
END AS maand,
COUNT(supplier_ID) AS 'aantal leveranciers',
SUM(hitcount) AS 'totaal aantal hits'
FROM mhl_hitcount
GROUP BY year, month 
ORDER BY year DESC, month DESC