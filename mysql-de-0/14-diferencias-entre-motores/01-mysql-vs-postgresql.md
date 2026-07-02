# 01 — MySQL vs PostgreSQL

| Tema | MySQL | PostgreSQL |
|---|---|---|
| IDs | AUTO_INCREMENT | GENERATED AS IDENTITY |
| Schema | DATABASE y SCHEMA son sinónimos | una base contiene schemas |
| Boolean | alias de TINYINT(1) | BOOLEAN nativo |
| JSON | JSON | JSON y JSONB |
| Full join | no nativo | nativo |
| Upsert | ON DUPLICATE KEY UPDATE | ON CONFLICT |
