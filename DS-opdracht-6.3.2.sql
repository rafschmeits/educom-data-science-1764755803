SELECT 
  name,
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(
              REPLACE(
                REPLACE(
                  REPLACE(
                    REPLACE(name, '&Uuml;', 'Ü'),
                  '&ouml;', 'ö'),
                '&eacute;', 'é'),
              '&egrave;', 'è'),
            '&aacute;', 'á'),
          '&iuml;', 'ï'),
        '&euml;', 'ë'),
      '&iacute;', 'í'),
    '&oacute;', 'ó'),
  '&uuml;', 'ü') AS nicename
FROM mhl_suppliers
WHERE name REGEXP '&(Uuml|ouml|eacute|egrave|aacute|iuml|euml|iacute|oacute|uuml);'
LIMIT 25;