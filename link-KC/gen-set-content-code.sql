SELECT 'UPDATE asm_parts SET content_code='
|| "КодСодержания" 
|| ' WHERE part_name=' || quote_literal(part_name) || ';'
|| '-- ' || "Кратко"
FROM asm_parts
, "Содержание" c
WHERE 
 "Кратко" LIKE '%РЭПВ%'
 AND "Кратко" SIMILAR TO replace(part_name, '.', '_')||'%'

/*
SELECT "КодСодержания", "Кратко"
FROM "Содержание"
WHERE 
"Кратко" LIKE '%РЭПВ-5%' --OR "Кратко" LIKE '%РЭПВ-5%'
ORDER BY "Кратко"
*/