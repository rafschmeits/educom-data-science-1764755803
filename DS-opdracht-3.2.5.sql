SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s 
WHERE s.huisnr BETWEEN 10 and 20