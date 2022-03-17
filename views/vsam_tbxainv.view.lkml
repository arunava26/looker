# The name of this view in Looker is "Vsam Tbxainv"
view: vsam_tbxainv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXAINV`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Correl ID" in Explore.

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: tb_ainv_alias_branch {
    type: string
    sql: ${TABLE}.TB_AINV_ALIAS_BRANCH ;;
  }

  dimension: tb_ainv_allow_acop_sw {
    type: string
    sql: ${TABLE}.TB_AINV_ALLOW_ACOP_SW ;;
  }

  dimension: tb_ainv_allow_altinv_sw {
    type: string
    sql: ${TABLE}.TB_AINV_ALLOW_ALTINV_SW ;;
  }

  dimension: tb_ainv_alt_backorder_sw {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_BACKORDER_SW ;;
  }

  dimension: tb_ainv_alt_branch {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_BRANCH ;;
  }

  dimension: tb_ainv_alt_co_br_has_boh {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_CO_BR_HAS_BOH ;;
  }

  dimension: tb_ainv_alt_co_cod_sw {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_CO_COD_SW ;;
  }

  dimension: tb_ainv_alt_company {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_COMPANY ;;
  }

  dimension: tb_ainv_alt_currency {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_CURRENCY ;;
  }

  dimension: tb_ainv_alt_ordbatch_sw {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_ORDBATCH_SW ;;
  }

  dimension: tb_ainv_alt_update_sw {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_UPDATE_SW ;;
  }

  dimension: tb_ainv_alt_warehouse_br {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_WAREHOUSE_BR ;;
  }

  dimension: tb_ainv_alt_warehouse_name {
    type: string
    sql: ${TABLE}.TB_AINV_ALT_WAREHOUSE_NAME ;;
  }

  dimension: tb_ainv_auto_payee_nbr {
    type: string
    sql: ${TABLE}.TB_AINV_AUTO_PAYEE_NBR ;;
  }

  dimension: tb_ainv_br_has_zero_cost_sw {
    type: string
    sql: ${TABLE}.TB_AINV_BR_HAS_ZERO_COST_SW ;;
  }

  dimension: tb_ainv_company_code {
    type: string
    sql: ${TABLE}.TB_AINV_COMPANY_CODE ;;
  }

  dimension: tb_ainv_currency_split_sw {
    type: string
    sql: ${TABLE}.TB_AINV_CURRENCY_SPLIT_SW ;;
  }

  dimension: tb_ainv_cutoff_time {
    type: number
    sql: ${TABLE}.TB_AINV_CUTOFF_TIME ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_ainv_cutoff_time {
    type: sum
    sql: ${tb_ainv_cutoff_time} ;;
  }

  measure: average_tb_ainv_cutoff_time {
    type: average
    sql: ${tb_ainv_cutoff_time} ;;
  }

  dimension: tb_ainv_default_payee_nbr {
    type: string
    sql: ${TABLE}.TB_AINV_DEFAULT_PAYEE_NBR ;;
  }

  dimension: tb_ainv_ih_cfg_br {
    type: string
    sql: ${TABLE}.TB_AINV_IH_CFG_BR ;;
  }

  dimension: tb_ainv_ih_cfg_co {
    type: string
    sql: ${TABLE}.TB_AINV_IH_CFG_CO ;;
  }

  dimension: tb_ainv_ih_local_cp_sw {
    type: string
    sql: ${TABLE}.TB_AINV_IH_LOCAL_CP_SW ;;
  }

  dimension: tb_ainv_ih_local_sw {
    type: string
    sql: ${TABLE}.TB_AINV_IH_LOCAL_SW ;;
  }

  dimension: tb_ainv_ih_physical_cntry {
    type: string
    sql: ${TABLE}.TB_AINV_IH_PHYSICAL_CNTRY ;;
  }

  dimension_group: tb_ainv_last_chg_ts {
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
    sql: ${TABLE}.TB_AINV_LAST_CHG_TS ;;
  }

  dimension: tb_ainv_max_weight {
    type: number
    sql: ${TABLE}.TB_AINV_MAX_WEIGHT ;;
  }

  dimension: tb_ainv_order_distrib_sw {
    type: string
    sql: ${TABLE}.TB_AINV_ORDER_DISTRIB_SW ;;
  }

  dimension: tb_ainv_remote_freight_fee {
    type: number
    sql: ${TABLE}.TB_AINV_REMOTE_FREIGHT_FEE ;;
  }

  dimension: tb_ainv_remote_handling_fee {
    type: number
    sql: ${TABLE}.TB_AINV_REMOTE_HANDLING_FEE ;;
  }

  dimension: tb_ainv_remote_min_order {
    type: number
    sql: ${TABLE}.TB_AINV_REMOTE_MIN_ORDER ;;
  }

  dimension: tb_ainv_remote_print_sw {
    type: string
    sql: ${TABLE}.TB_AINV_REMOTE_PRINT_SW ;;
  }

  dimension: tb_ainv_secondary_curr {
    type: string
    sql: ${TABLE}.TB_AINV_SECONDARY_CURR ;;
  }

  dimension: tb_ainv_secondary_payee_nbr {
    type: string
    sql: ${TABLE}.TB_AINV_SECONDARY_PAYEE_NBR ;;
  }

  dimension: tb_ainv_ups_frt_rev_type {
    type: string
    sql: ${TABLE}.TB_AINV_UPS_FRT_REV_TYPE ;;
  }

  dimension: tb_ainv_use_enhanced_invshr {
    type: string
    sql: ${TABLE}.TB_AINV_USE_ENHANCED_INVSHR ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [tb_ainv_alt_warehouse_name]
  }
}
