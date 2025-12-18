DROP VIEW verzendlijst;
CREATE VIEW verzendlijst AS
SELECT
    s.id,
    CASE
        WHEN s.p_address IS NOT NULL AND TRIM(s.p_address) <> ''
            THEN s.p_address
        ELSE CONCAT(TRIM(s.straat), ' ', TRIM(s.huisnr))
    END AS adres,

    CASE
        WHEN s.p_address IS NOT NULL AND TRIM(s.p_address) <> ''
            THEN s.p_postcode
        ELSE s.postcode
    END AS postcode,

    CASE
        WHEN s.p_address IS NOT NULL AND TRIM(s.p_address) <> ''
            THEN d.name
        ELSE c.name
    END AS stad

FROM mhl_suppliers s
JOIN mhl_cities c 
ON s.city_ID = c.id
LEFT JOIN mhl_cities d
ON s.p_city_ID = d.id;