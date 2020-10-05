-- Checks if all the records from source have been merged into target
select distinct LIFNR FROM "ARRAY_DB"."ARRAY_DB_EDW"."VENDOR_ATTR" minus
select distinct LIFNR FROM DIM_VENDOR