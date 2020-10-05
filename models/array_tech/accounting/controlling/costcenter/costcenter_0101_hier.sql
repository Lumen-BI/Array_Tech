{{
  config(
    materialized='incremental',
    incremental_strategy='merge',
	unique_key='nodeid'
  )
}}

WITH COSTCENTER_0101_HIER AS (
SELECT
	NODEID,
	NODENAME,
	TLEVEL,
	LINK,
	PARENTID,
	CHILDID,
	NEXTID,
	INTERVL,
	FIELDNM,
	KOKRS,
	KOSTL,
	TXTSH,
	TXTMD,
	TXTLG
FROM ARRAY_DB.ARRAY_DB_EDW.COSTCENTER_0101_HIER
WHERE (KOKRS, KOSTL) IN (SELECT DISTINCT KOKRS, KOSTL FROM DIM_COSTCENTER)
)

select * from COSTCENTER_0101_HIER