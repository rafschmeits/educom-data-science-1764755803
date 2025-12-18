SELECT year,
SUM(CASE WHEN month IN(1, 2, 3) THEN hitcount 
    ELSE 0 END) AS Eerste_kwartaal,
SUM(CASE WHEN month IN(4, 5, 6) THEN hitcount 
    ELSE 0 END) AS Tweede_kwartaal,
SUM(CASE WHEN month IN(7, 8, 9) THEN hitcount 
    ELSE 0 END) AS Derde_kwartaal,
    SUM(CASE WHEN month IN(10, 11, 12) THEN hitcount 
    ELSE 0 END) AS Vierde_kwartaal
FROM mhl_hitcount
GROUP BY year