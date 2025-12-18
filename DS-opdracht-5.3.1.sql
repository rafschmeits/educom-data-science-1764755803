DROP VIEW IF EXISTS directie;
CREATE VIEW directie AS 
SELECT c.supplier_ID, c.name, c.contacttype, 
CASE 
WHEN d.name = 'Directie' THEN 'Directie'
ELSE 'nvt' 
END AS department
FROM mhl_contacts c
LEFT JOIN mhl_departments d 
ON c.department = d.id
WHERE c.contacttype LIKE "%directeur%"