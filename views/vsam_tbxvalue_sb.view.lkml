# The name of this view in Looker is "Vsam Tbxvalue Sb"
view: vsam_tbxvalue_sb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXVALUE_SB`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Apo Company Sw" in Explore.

  dimension: apo_company_sw {
    type: string
    sql: ${TABLE}.APO_COMPANY_SW ;;
  }

  dimension: bill_not_export_sw {
    type: string
    sql: ${TABLE}.BILL_NOT_EXPORT_SW ;;
  }

  dimension: chkp_db_id {
    type: string
    sql: ${TABLE}.CHKP_DB_ID ;;
  }

  dimension: cntry_code {
    type: string
    sql: ${TABLE}.CNTRY_CODE ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.COMPANY_CODE ;;
  }

  dimension: compare_type {
    type: string
    sql: ${TABLE}.COMPARE_TYPE ;;
  }

  dimension: exp_compl_sw {
    type: string
    sql: ${TABLE}.EXP_COMPL_SW ;;
  }

  dimension: exp_fulfill_co_sw {
    type: string
    sql: ${TABLE}.EXP_FULFILL_CO_SW ;;
  }

  dimension: expt_before_prt_sw {
    type: string
    sql: ${TABLE}.EXPT_BEFORE_PRT_SW ;;
  }

  dimension: focus_del_days {
    type: number
    sql: ${TABLE}.FOCUS_DEL_DAYS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_focus_del_days {
    type: sum
    sql: ${focus_del_days} ;;
  }

  measure: average_focus_del_days {
    type: average
    sql: ${focus_del_days} ;;
  }

  dimension: fr_tch_3_m_lim {
    type: number
    sql: ${TABLE}.FR_TCH_3M_LIM ;;
  }

  dimension: fr_tch_mtd_lim {
    type: number
    sql: ${TABLE}.FR_TCH_MTD_LIM ;;
  }

  dimension: freight_forwarder_sw {
    type: string
    sql: ${TABLE}.FREIGHT_FORWARDER_SW ;;
  }

  dimension: fulfil_ord_limit {
    type: number
    sql: ${TABLE}.FULFIL_ORD_LIMIT ;;
  }

  dimension: fut_ord_date_sw {
    type: string
    sql: ${TABLE}.FUT_ORD_DATE_SW ;;
  }

  dimension: gatt_region_sw {
    type: string
    sql: ${TABLE}.GATT_REGION_SW ;;
  }

  dimension: notification {
    type: string
    sql: ${TABLE}.NOTIFICATION ;;
  }

  dimension: notify_days {
    type: number
    sql: ${TABLE}.NOTIFY_DAYS ;;
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

  dimension: regional_sw {
    type: string
    sql: ${TABLE}.REGIONAL_SW ;;
  }

  dimension: rma_return_days {
    type: number
    sql: ${TABLE}.RMA_RETURN_DAYS ;;
  }

  dimension: rma_sb_fee_amt {
    type: number
    sql: ${TABLE}.RMA_SB_FEE_AMT ;;
  }

  dimension: rma_sb_threshold {
    type: number
    sql: ${TABLE}.RMA_SB_THRESHOLD ;;
  }

  dimension: sales_3_mth_am {
    type: number
    sql: ${TABLE}.SALES_3_MTH_AM ;;
  }

  dimension: ts_threshold_a {
    type: number
    sql: ${TABLE}.TS_THRESHOLD_A ;;
  }

  dimension: ts_threshold_b {
    type: number
    sql: ${TABLE}.TS_THRESHOLD_B ;;
  }

  dimension: ts_threshold_c {
    type: number
    sql: ${TABLE}.TS_THRESHOLD_C ;;
  }

  dimension: wgt_ent_unit_sw {
    type: string
    sql: ${TABLE}.WGT_ENT_UNIT_SW ;;
  }

  dimension: xfut_ord_prt_sw {
    type: string
    sql: ${TABLE}.XFUT_ORD_PRT_SW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
