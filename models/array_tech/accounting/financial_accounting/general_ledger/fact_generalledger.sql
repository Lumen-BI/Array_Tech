{{
  config(
    materialized='incremental',
    incremental_strategy='merge',
	unique_key='ID'
  )
}}

WITH FACT_GENERALLEDGER AS (
SELECT
    RCLNT||'-'||RLDNR||'-'||RBUKRS||'-'||GJAHR||'-'||BELNR||'-'||DOCLN as ID,
	RTCUR,
	RWCUR,
	RHCUR,
	RKCUR,
	RUNIT,
	RCNTR,
	PRCTR,
	KOKRS,
	TSL,
	WSL,
	HSL,
	KSL,
	MSL,
	DRCRK,
	POPER,
	PERIV,
	FISCYEARPER,
	BUDAT,
	BLDAT,
	BLART,
	BSCHL,
	GLACCOUNT_TYPE,
	KTOPL,
	KDAUF,
	KDPOS,
	MATNR,
	WERKS,
	LIFNR,
	KUNNR,
	VKORG,
	VTWEG,
	SPART,
	KDGRP,
--LAND
	RCLNT,
	RLDNR,
	RBUKRS,
	GJAHR,
	BELNR,
	DOCLN,
	RYEAR,
	RRCTY,
	RACCT
FROM ARRAY_DB.ARRAY_DB_EDW.FI_ACDOCA_10
)

select * from FACT_GENERALLEDGER