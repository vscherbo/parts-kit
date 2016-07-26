SELECT 
c.complect_id AS "Комплект"
, dev.part_name AS "Прибор"
, (SELECT part_name FROM asm_parts WHERE part_id = c.part_part_id) as "Деталь"
, p.content_code AS "КодСодержания"
, c.quantity AS "Количество"
, c.complexity AS "Сложность"
FROM
asm_parts dev
JOIN asm_complect c ON dev.part_id = c.parent_part_id
JOIN asm_parts p ON p.part_id = c.part_part_id 
-- WHERE p.content_code IS NOT NULL
ORDER BY complect_id