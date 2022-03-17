# The name of this view in Looker is "Db2 Acop Trk"
view: db2_acop_trk {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.DB2_ACOP_TRK`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Actv Flg" in Explore.

  dimension: acop_actv_flg {
    type: string
    sql: ${TABLE}.ACOP_ACTV_FLG ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: acop_eff_dt {
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
    sql: ${TABLE}.ACOP_EFF_DT ;;
  }

  dimension: acop_eff_tm {
    type: string
    sql: ${TABLE}.ACOP_EFF_TM ;;
  }

  dimension: acop_eu_id {
    type: number
    sql: ${TABLE}.ACOP_EU_ID ;;
  }

  dimension_group: acop_exp_dt {
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
    sql: ${TABLE}.ACOP_EXP_DT ;;
  }

  dimension: acop_exp_tm {
    type: string
    sql: ${TABLE}.ACOP_EXP_TM ;;
  }

  dimension: acop_prod_gp_cd {
    type: string
    sql: ${TABLE}.ACOP_PROD_GP_CD ;;
  }

  dimension: acop_rvs_flg {
    type: string
    sql: ${TABLE}.ACOP_RVS_FLG ;;
  }

  dimension: acop_seq_nbr {
    type: number
    sql: ${TABLE}.ACOP_SEQ_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_acop_seq_nbr {
    type: sum
    sql: ${acop_seq_nbr} ;;
  }

  measure: average_acop_seq_nbr {
    type: average
    sql: ${acop_seq_nbr} ;;
  }

  dimension: acop_trk_nbr {
    type: number
    sql: ${TABLE}.ACOP_TRK_NBR ;;
  }

  dimension: acop_typ_cd {
    type: string
    sql: ${TABLE}.ACOP_TYP_CD ;;
  }

  dimension: auth_acop_flg {
    type: string
    sql: ${TABLE}.AUTH_ACOP_FLG ;;
  }

  dimension: bid_cmnt_txt {
    type: string
    sql: ${TABLE}.BID_CMNT_TXT ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: im_main_pgm_cd {
    type: string
    sql: ${TABLE}.IM_MAIN_PGM_CD ;;
  }

  dimension: last_upd_id {
    type: string
    sql: ${TABLE}.LAST_UPD_ID ;;
  }

  dimension_group: last_upd_ts {
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
    sql: ${TABLE}.LAST_UPD_TS ;;
  }

  dimension: mrkt_sgmt_typ_cd {
    type: string
    sql: ${TABLE}.MRKT_SGMT_TYP_CD ;;
  }

  dimension_group: ods_isrt_ts {
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
    sql: ${TABLE}.ODS_ISRT_TS ;;
  }

  dimension_group: ods_upd_ts {
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
    sql: ${TABLE}.ODS_UPD_TS ;;
  }

  dimension: part_nbr {
    type: string
    sql: ${TABLE}.PART_NBR ;;
  }

  dimension: paye_vend_nbr {
    type: string
    sql: ${TABLE}.PAYE_VEND_NBR ;;
  }

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  dimension: vend_acop_pgm_cd {
    type: string
    sql: ${TABLE}.VEND_ACOP_PGM_CD ;;
  }

  dimension: vend_bid_nbr {
    type: string
    sql: ${TABLE}.VEND_BID_NBR ;;
  }

  dimension: vend_nbr {
    type: string
    sql: ${TABLE}.VEND_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
