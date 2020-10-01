{{
  config(
    materialized='incremental',
    incremental_strategy='merge',
	unique_key='ID'
  )
}}

WITH DIM_COSTCENTER AS (
SELECT
	CCA.KOKRS||'-'||CCA.KOSTL||'-'||CCA.DATETO||'-'||NVL(CCT.LANGU,'') as ID,

	CCA.KOKRS,
	CCA.KOSTL,
	CCA.DATETO,

	NVL(CCT.LANGU,'') AS LANGU,

	CCA.DATEFROM,
	CCA.VERAK,
	CCA.BUKRS,
	CCA.GSBER,
	CCA.KOSAR,
	CCA.WAERS,
	CCA.PRCTR,
	CCA.BKZKP,
	CCA.PKZKP,
	CCA.VERAK_USER,
	CCA.KALSM,
	CCA.TXJCD,
	CCA.WERKS,
	CCA.LOGSYSTEM,
	CCA.ERSDA,
	CCA.USNAM,
	CCA.BKZKS,
	CCA.BKZER,
	CCA.BKZOB,
	CCA.PKZKS,
	CCA.PKZER,
	CCA.VMETH,
	CCA.MGEFL,
	CCA.ABTEI,
	CCA.NKOST,
	CCA.KVEWE,
	CCA.KAPPL,
	CCA.KOSZSCHL,
	CCA.LAND1,
	CCA.ANRED,
	CCA.NAME1,
	CCA.NAME2,
	CCA.NAME3,
	CCA.NAME4,
	CCA.ORT01,
	CCA.ORT02,
	CCA.STRAS,
	CCA.PFACH,
	CCA.PSTLZ,
	CCA.PSTL2,
	CCA.REGIO,
	CCA.SPRAS,
	CCA.TELBX,
	CCA.TELF1,
	CCA.TELF2,
	CCA.TELFX,
	CCA.TELTX,
	CCA.TELX1,
	CCA.DATLT,
	CCA.DRNAM,
	CCA.KHINR,
	CCA.CCKEY,
	CCA.KOMPL,
	CCA.STAKZ,
	CCA.OBJNR,
	CCA.FUNKT,
	CCA.AFUNK,
	CCA.CPI_TEMPL,
	CCA.CPD_TEMPL,
	CCA.FUNC_AREA,
	CCA.SCI_TEMPL,
	CCA.SCD_TEMPL,
	CCA.VNAME,
	CCA.RECID,
	CCA.ETYPE,
	CCA.JV_OTYPE,
	CCA.JV_JIBCL,
	CCA.JV_JIBSA,

	CCT.TXTSH,
	CCT.TXTMD,
	CCT.TXTMC

FROM ARRAY_DB.ARRAY_DB_EDW.COSTCENTER_ATTR CCA 
LEFT OUTER JOIN ARRAY_DB.ARRAY_DB_EDW.COSTCENTER_TEXT CCT 
ON (CCA.KOKRS=CCT.KOKRS and CCA.KOSTL=CCT.KOSTL and CCA.DATETO=CCT.DATETO)
)

select * from DIM_COSTCENTER
