psql -h vm-pg-devel -U arc_energo -c '\copy asm_parts to '/smb/it/DB/ARCEnergo/parts-kit/asm_parts.csv' WITH (FORMAT csv, HEADER true, DELIMITER ",")'
psql -h vm-pg-devel -U arc_energo -c '\copy asm_complect to '/smb/it/DB/ARCEnergo/parts-kit/asm_complect.csv' WITH (FORMAT csv, HEADER true, DELIMITER ",")'
