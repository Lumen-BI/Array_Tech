{{
config(
materialized='incremental',
incremental_strategy='merge',
unique_key= 'NODEID'
)
}}

with gl_account_hier as(
select 
NODEID ,	
NODENAME,
TLEVEL 	,
LINK 	,
PARENTID,
CHILDID ,
NEXTID 	,
FIELDNM ,
KTOPL 	,
SAKNR   ,
RSIGN   ,
PLUMI   ,
TXTSH   ,
TXTMD   ,
TXTLG
from ARRAY_DB.ARRAY_DB_EDW.GL_ACCOUNT_T011_HIER
)
select * from gl_account_hier