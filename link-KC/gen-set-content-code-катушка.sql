SELECT 'UPDATE asm_parts SET content_code='
|| "КодСодержания" 
|| ' WHERE part_name=' || quote_literal(part_name) || ';'
|| '-- ' || "Кратко"
FROM asm_parts
, "Содержание" c
WHERE 
 "Кратко" LIKE 'КС-__-%'
  AND "Кратко" SIMILAR TO part_name || '%'
  -- AND "Кратко" SIMILAR TO replace(part_name, '.', '_')||'%'


/*
SELECT "КодСодержания", "Кратко"
FROM "Содержание"
WHERE 
"Кратко" LIKE 'КС-__-%' --OR "Кратко" LIKE '%РЭПВ-5%'
ORDER BY "Кратко"
*/