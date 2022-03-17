# The name of this view in Looker is "Vsam Rwlpkm Pkg Mnfs Typ 1"
view: vsam_rwlpkm_pkg_mnfs_typ_1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_RWLPKM_PKG_MNFS_TYP_1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alt Flg" in Explore.

  dimension: alt_flg {
    type: string
    sql: ${TABLE}.ALT_FLG ;;
  }

  dimension: aod_nbr {
    type: string
    sql: ${TABLE}.AOD_NBR ;;
  }

  dimension: bill_dt {
    type: number
    sql: ${TABLE}.BILL_DT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bill_dt {
    type: sum
    sql: ${bill_dt} ;;
  }

  measure: average_bill_dt {
    type: average
    sql: ${bill_dt} ;;
  }

  dimension: bill_opid {
    type: string
    sql: ${TABLE}.BILL_OPID ;;
  }

  dimension: bill_tm {
    type: number
    sql: ${TABLE}.BILL_TM ;;
  }

  dimension: box_hght {
    type: number
    sql: ${TABLE}.BOX_HGHT ;;
  }

  dimension: box_lng {
    type: number
    sql: ${TABLE}.BOX_LNG ;;
  }

  dimension: box_nbr {
    type: string
    sql: ${TABLE}.BOX_NBR ;;
  }

  dimension: box_wdth {
    type: number
    sql: ${TABLE}.BOX_WDTH ;;
  }

  dimension: cm_appd_amt {
    type: number
    sql: ${TABLE}.CM_APPD_AMT ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: cod_amt {
    type: number
    sql: ${TABLE}.COD_AMT ;;
  }

  dimension: cod_chrg_amt {
    type: number
    sql: ${TABLE}.COD_CHRG_AMT ;;
  }

  dimension: cons_dt {
    type: number
    sql: ${TABLE}.CONS_DT ;;
  }

  dimension: cons_opid {
    type: string
    sql: ${TABLE}.CONS_OPID ;;
  }

  dimension: cons_tm {
    type: number
    sql: ${TABLE}.CONS_TM ;;
  }

  dimension: crtn_ship_dt {
    type: number
    sql: ${TABLE}.CRTN_SHIP_DT ;;
  }

  dimension: ctn_nbr {
    type: number
    sql: ${TABLE}.CTN_NBR ;;
  }

  dimension: ctn_per_palt_cnt {
    type: string
    sql: ${TABLE}.CTN_PER_PALT_CNT ;;
  }

  dimension: ctrl_nbr {
    type: string
    sql: ${TABLE}.CTRL_NBR ;;
  }

  dimension: ctrl_typ_cd {
    type: string
    sql: ${TABLE}.CTRL_TYP_CD ;;
  }

  dimension: dim_wgt {
    type: number
    sql: ${TABLE}.DIM_WGT ;;
  }

  dimension: dv_crtn_flg {
    type: string
    sql: ${TABLE}.DV_CRTN_FLG ;;
  }

  dimension: dv_crtn_valu_amt {
    type: number
    sql: ${TABLE}.DV_CRTN_VALU_AMT ;;
  }

  dimension: dv_insu_fee_amt {
    type: number
    sql: ${TABLE}.DV_INSU_FEE_AMT ;;
  }

  dimension: dv_insu_prgm_cd {
    type: string
    sql: ${TABLE}.DV_INSU_PRGM_CD ;;
  }

  dimension: dv_whiteglove_flg {
    type: string
    sql: ${TABLE}.DV_WHITEGLOVE_FLG ;;
  }

  dimension: enty_wgt {
    type: string
    sql: ${TABLE}.ENTY_WGT ;;
  }

  dimension: epc_nbr {
    type: string
    sql: ${TABLE}.EPC_NBR ;;
  }

  dimension: fc_ovrd_flg {
    type: string
    sql: ${TABLE}.FC_OVRD_FLG ;;
  }

  dimension: host_dt {
    type: number
    sql: ${TABLE}.HOST_DT ;;
  }

  dimension: host_tm {
    type: number
    sql: ${TABLE}.HOST_TM ;;
  }

  dimension: lb_wgt {
    type: number
    sql: ${TABLE}.LB_WGT ;;
  }

  dimension: mrkup_pct {
    type: number
    sql: ${TABLE}.MRKUP_PCT ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_lst_upd_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.ODS_LST_UPD_DT ;;
  }

  dimension: ord_flat_fee_amt {
    type: number
    sql: ${TABLE}.ORD_FLAT_FEE_AMT ;;
  }

  dimension: ordr_br_nbr {
    type: string
    sql: ${TABLE}.ORDR_BR_NBR ;;
  }

  dimension: ordr_dist_nbr {
    type: string
    sql: ${TABLE}.ORDR_DIST_NBR ;;
  }

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: ordr_ship_nbr {
    type: string
    sql: ${TABLE}.ORDR_SHIP_NBR ;;
  }

  dimension: oz_wgt {
    type: number
    sql: ${TABLE}.OZ_WGT ;;
  }

  dimension: picked_dt {
    type: number
    sql: ${TABLE}.PICKED_DT ;;
  }

  dimension: picked_opid {
    type: string
    sql: ${TABLE}.PICKED_OPID ;;
  }

  dimension: picked_tm {
    type: number
    sql: ${TABLE}.PICKED_TM ;;
  }

  dimension: pkg_id {
    type: string
    sql: ${TABLE}.PKG_ID ;;
  }

  dimension: prc_stgy_cd {
    type: string
    sql: ${TABLE}.PRC_STGY_CD ;;
  }

  dimension: prim_frt_amt {
    type: number
    sql: ${TABLE}.PRIM_FRT_AMT ;;
  }

  dimension: qa_dt {
    type: number
    sql: ${TABLE}.QA_DT ;;
  }

  dimension: qa_opid {
    type: string
    sql: ${TABLE}.QA_OPID ;;
  }

  dimension: qa_stus_cd {
    type: string
    sql: ${TABLE}.QA_STUS_CD ;;
  }

  dimension: qa_tm {
    type: number
    sql: ${TABLE}.QA_TM ;;
  }

  dimension: rated_wgt {
    type: number
    sql: ${TABLE}.RATED_WGT ;;
  }

  dimension: rec_typ_cd {
    type: string
    sql: ${TABLE}.REC_TYP_CD ;;
  }

  dimension: sf_br_nbr {
    type: string
    sql: ${TABLE}.SF_BR_NBR ;;
  }

  dimension: split_dt {
    type: number
    sql: ${TABLE}.SPLIT_DT ;;
  }

  dimension: split_opid {
    type: string
    sql: ${TABLE}.SPLIT_OPID ;;
  }

  dimension: split_tm {
    type: number
    sql: ${TABLE}.SPLIT_TM ;;
  }

  dimension: splt_frt_amt {
    type: number
    sql: ${TABLE}.SPLT_FRT_AMT ;;
  }

  dimension: sscc_nbr {
    type: string
    sql: ${TABLE}.SSCC_NBR ;;
  }

  dimension: stus_cd {
    type: string
    sql: ${TABLE}.STUS_CD ;;
  }

  dimension: unit_wgt {
    type: string
    sql: ${TABLE}.UNIT_WGT ;;
  }

  dimension: void_dt {
    type: number
    sql: ${TABLE}.VOID_DT ;;
  }

  dimension: void_opid {
    type: string
    sql: ${TABLE}.VOID_OPID ;;
  }

  dimension: void_tm {
    type: number
    sql: ${TABLE}.VOID_TM ;;
  }

  dimension: wgt {
    type: number
    sql: ${TABLE}.WGT ;;
  }

  dimension: zone_chrg_amt {
    type: number
    sql: ${TABLE}.ZONE_CHRG_AMT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
