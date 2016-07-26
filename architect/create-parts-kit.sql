
CREATE TABLE arc_energo.asm_parts (
                part_id INTEGER NOT NULL,
                part_name VARCHAR NOT NULL,
                content_code INTEGER,
                can_be_sold BOOLEAN DEFAULT 't' NOT NULL,
                CONSTRAINT asm_parts_pk PRIMARY KEY (part_id)
);
COMMENT ON TABLE arc_energo.asm_parts IS 'Составные части товара. Сами могут и не быть товаром.';
COMMENT ON COLUMN arc_energo.asm_parts.content_code IS 'NULL если деталь-НЕтовар';


CREATE TABLE arc_energo.asm_complect (
                complect_id INTEGER NOT NULL,
                parent_part_id INTEGER NOT NULL,
                part_part_id INTEGER NOT NULL,
                quantity INTEGER NOT NULL,
                complexity INTEGER DEFAULT 1 NOT NULL,
                CONSTRAINT asm_complect_pk PRIMARY KEY (complect_id, parent_part_id, part_part_id)
);


ALTER TABLE arc_energo.asm_complect ADD CONSTRAINT parts_device_complect_fk
FOREIGN KEY (part_part_id)
REFERENCES arc_energo.asm_parts (part_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE arc_energo.asm_complect ADD CONSTRAINT parent_parts_device_complect_fk
FOREIGN KEY (parent_part_id)
REFERENCES arc_energo.asm_parts (part_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
