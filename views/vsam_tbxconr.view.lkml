# The name of this view in Looker is "Vsam Tbxconr"
view: vsam_tbxconr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCONR`
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

  dimension: tb_auto_pay_acct_nbr {
    type: string
    sql: ${TABLE}.TB_AUTO_PAY_ACCT_NBR ;;
  }

  dimension: tb_curr_co {
    type: string
    sql: ${TABLE}.TB_CURR_CO ;;
  }

  dimension: tb_curr_credit_limit {
    type: number
    sql: ${TABLE}.TB_CURR_CREDIT_LIMIT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_curr_credit_limit {
    type: sum
    sql: ${tb_curr_credit_limit} ;;
  }

  measure: average_tb_curr_credit_limit {
    type: average
    sql: ${tb_curr_credit_limit} ;;
  }

  dimension: tb_curr_from_curr_code {
    type: string
    sql: ${TABLE}.TB_CURR_FROM_CURR_CODE ;;
  }

  dimension: tb_curr_from_description {
    type: string
    sql: ${TABLE}.TB_CURR_FROM_DESCRIPTION ;;
  }

  dimension: tb_curr_gain_loss_acct {
    type: string
    sql: ${TABLE}.TB_CURR_GAIN_LOSS_ACCT ;;
  }

  dimension: tb_curr_gl_rate {
    type: number
    sql: ${TABLE}.TB_CURR_GL_RATE ;;
  }

  dimension_group: tb_curr_last_chg_ts {
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
    sql: ${TABLE}.TB_CURR_LAST_CHG_TS ;;
  }

  dimension: tb_curr_monthend_rate {
    type: number
    sql: ${TABLE}.TB_CURR_MONTHEND_RATE ;;
  }

  dimension: tb_curr_pay_high_divisor {
    type: number
    sql: ${TABLE}.TB_CURR_PAY_HIGH_DIVISOR ;;
  }

  dimension: tb_curr_pay_low_divisor {
    type: number
    sql: ${TABLE}.TB_CURR_PAY_LOW_DIVISOR ;;
  }

  dimension: tb_curr_prev_rate {
    type: number
    sql: ${TABLE}.TB_CURR_PREV_RATE ;;
  }

  dimension: tb_curr_rate {
    type: number
    sql: ${TABLE}.TB_CURR_RATE ;;
  }

  dimension: tb_curr_sell_rate {
    type: number
    sql: ${TABLE}.TB_CURR_SELL_RATE ;;
  }

  dimension: tb_curr_strmst_rec_1_key {
    type: string
    sql: ${TABLE}.TB_CURR_STRMST_REC_1_KEY ;;
  }

  dimension: tb_curr_strmst_rec_2_key {
    type: string
    sql: ${TABLE}.TB_CURR_STRMST_REC_2_KEY ;;
  }

  dimension: tb_curr_strmst_rec_3_key {
    type: string
    sql: ${TABLE}.TB_CURR_STRMST_REC_3_KEY ;;
  }

  dimension: tb_curr_strmst_rec_4_key {
    type: string
    sql: ${TABLE}.TB_CURR_STRMST_REC_4_KEY ;;
  }

  dimension: tb_curr_to_curr_code {
    type: string
    sql: ${TABLE}.TB_CURR_TO_CURR_CODE ;;
  }

  dimension: tb_curr_to_description {
    type: string
    sql: ${TABLE}.TB_CURR_TO_DESCRIPTION ;;
  }

  dimension: tb_gl_acct_ap_inv {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_AP_INV ;;
  }

  dimension: tb_gl_acct_ap_inv_curr_diff {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_AP_INV_CURR_DIFF ;;
  }

  dimension: tb_gl_acct_ap_inv_duty {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_AP_INV_DUTY ;;
  }

  dimension: tb_gl_acct_ap_inv_freight {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_AP_INV_FREIGHT ;;
  }

  dimension: tb_gl_acct_ap_inv_misc_cost {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_AP_INV_MISC_COST ;;
  }

  dimension: tb_gl_acct_ap_inv_tax {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_AP_INV_TAX ;;
  }

  dimension: tb_gl_acct_ap_purchase_disc {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_AP_PURCHASE_DISC ;;
  }

  dimension: tb_gl_acct_exp_curr_diff {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_EXP_CURR_DIFF ;;
  }

  dimension: tb_gl_acct_expenses {
    type: string
    sql: ${TABLE}.TB_GL_ACCT_EXPENSES ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
