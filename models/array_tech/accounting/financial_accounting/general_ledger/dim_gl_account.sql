{{
config(
materialized='incremental',
incremental_strategy='merge',
unique_key='GL_AC_ID'
)
}}

with dim_gl_account as
(
SELECT 
ATT.KTOPL||'-'||ATT.SAKNR as GL_AC_ID,

ATT.KTOPL,
ATT.SAKNR,
BILKT,
GVTYP,
VBUND,
XBILK,
SAKAN,
ERDAT,
ERNAM,
KTOKS,
XLOEV,
XSPEA,
XSPEB,
XSPEP,
FUNC_AREA,
MUSTR,
NVL(LANGU,'') LANGU,
TXTSH,
TXTLG
FROM "ARRAY_DB"."ARRAY_DB_EDW".GL_ACCOUNT_ATTR ATT 
LEFT OUTER JOIN "ARRAY_DB"."ARRAY_DB_EDW".GL_ACCOUNT_TEXT TXT 
ON (ATT.KTOPL=TXT.KTOPL AND ATT.SAKNR=TXT.SAKNR)
WHERE LANGU='E'
)
select * from dim_gl_account