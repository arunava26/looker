# The name of this view in Looker is "Ods Order Crcrd Own Inf"
view: ods_order_crcrd_own_inf {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_ORDER_CRCRD_OWN_INF`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acvs Rslt Cd" in Explore.

  dimension: acvs_rslt_cd {
    type: string
    sql: ${TABLE}.ACVS_RSLT_CD ;;
  }

  dimension: auth_cd {
    type: string
    sql: ${TABLE}.AUTH_CD ;;
  }

  dimension: auth_resp_cd {
    type: string
    sql: ${TABLE}.AUTH_RESP_CD ;;
  }

  dimension: auto_post_ar_sw {
    type: string
    sql: ${TABLE}.AUTO_POST_AR_SW ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: ccn_frst_nam {
    type: string
    sql: ${TABLE}.CCN_FRST_NAM ;;
  }

  dimension: ccn_last_nam {
    type: string
    sql: ${TABLE}.CCN_LAST_NAM ;;
  }

  dimension: ccn_note_1_txt {
    type: string
    sql: ${TABLE}.CCN_NOTE_1_TXT ;;
  }

  dimension: ccn_note_2_txt {
    type: string
    sql: ${TABLE}.CCN_NOTE_2_TXT ;;
  }

  dimension: ccs_encrt_key {
    type: string
    sql: ${TABLE}.CCS_ENCRT_KEY ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: crd_nbr {
    type: string
    sql: ${TABLE}.CRD_NBR ;;
  }

  dimension: crd_typ {
    type: string
    sql: ${TABLE}.CRD_TYP ;;
  }

  dimension: exp_mth {
    type: string
    sql: ${TABLE}.EXP_MTH ;;
  }

  dimension: exp_yr {
    type: string
    sql: ${TABLE}.EXP_YR ;;
  }

  dimension: frgn_paym_amt {
    type: number
    sql: ${TABLE}.FRGN_PAYM_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_frgn_paym_amt {
    type: sum
    sql: ${frgn_paym_amt} ;;
  }

  measure: average_frgn_paym_amt {
    type: average
    sql: ${frgn_paym_amt} ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
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

  dimension_group: ordr_dt {
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
    sql: ${TABLE}.ORDR_DT ;;
  }

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: orsa_city {
    type: string
    sql: ${TABLE}.ORSA_CITY ;;
  }

  dimension: orsa_st {
    type: string
    sql: ${TABLE}.ORSA_ST ;;
  }

  dimension: orsa_zip {
    type: string
    sql: ${TABLE}.ORSA_ZIP ;;
  }

  dimension: own_addr_1_line {
    type: string
    sql: ${TABLE}.OWN_ADDR_1_LINE ;;
  }

  dimension: own_addr_2_line {
    type: string
    sql: ${TABLE}.OWN_ADDR_2_LINE ;;
  }

  dimension: own_emal_id {
    type: string
    sql: ${TABLE}.OWN_EMAL_ID ;;
  }

  dimension: paym_amt {
    type: number
    sql: ${TABLE}.PAYM_AMT ;;
  }

  dimension: paym_cd {
    type: string
    sql: ${TABLE}.PAYM_CD ;;
  }

  dimension: prov_cd {
    type: string
    sql: ${TABLE}.PROV_CD ;;
  }

  dimension: sec_id {
    type: string
    sql: ${TABLE}.SEC_ID ;;
  }

  dimension: sec_resp {
    type: string
    sql: ${TABLE}.SEC_RESP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
