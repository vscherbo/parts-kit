psql -h vm-pg-devel -U arc_energo -c '\copy asm_parts(part_id,part_name) FROM '/smb/it/DB/ARCEnergo/parts-kit/parts-body.csv' WITH (format csv, delimiter "," , header true, encoding UTF8) ;' 
