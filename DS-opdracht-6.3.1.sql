SELECT name,
    CONCAT(
        UPPER(LEFT(name, 1)),
        SUBSTRING(name, 2)
    ) AS nice_name
FROM mhl_cities
ORDER BY name