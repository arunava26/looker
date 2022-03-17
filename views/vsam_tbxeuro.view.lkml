# The name of this view in Looker is "Vsam Tbxeuro"
view: vsam_tbxeuro {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXEURO`
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

  dimension: tb_euro_alt_curr_sw {
    type: string
    sql: ${TABLE}.TB_EURO_ALT_CURR_SW ;;
  }

  dimension: tb_euro_ap_bank {
    type: string
    sql: ${TABLE}.TB_EURO_AP_BANK ;;
  }

  dimension: tb_euro_company_code {
    type: string
    sql: ${TABLE}.TB_EURO_COMPANY_CODE ;;
  }

  dimension: tb_euro_compulsion_date {
    type: number
    sql: ${TABLE}.TB_EURO_COMPULSION_DATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_euro_compulsion_date {
    type: sum
    sql: ${tb_euro_compulsion_date} ;;
  }

  measure: average_tb_euro_compulsion_date {
    type: average
    sql: ${tb_euro_compulsion_date} ;;
  }

  dimension: tb_euro_conversion_month {
    type: string
    sql: ${TABLE}.TB_EURO_CONVERSION_MONTH ;;
  }

  dimension: tb_euro_conversion_year {
    type: string
    sql: ${TABLE}.TB_EURO_CONVERSION_YEAR ;;
  }

  dimension: tb_euro_eday_live_date {
    type: number
    sql: ${TABLE}.TB_EURO_EDAY_LIVE_DATE ;;
  }

  dimension: tb_euro_ncu_conv_rate {
    type: number
    sql: ${TABLE}.TB_EURO_NCU_CONV_RATE ;;
  }

  dimension: tb_euro_ncu_currency_code {
    type: string
    sql: ${TABLE}.TB_EURO_NCU_CURRENCY_CODE ;;
  }

  dimension: tb_euro_old_eu_currency_code1 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE1 ;;
  }

  dimension: tb_euro_old_eu_currency_code10 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE10 ;;
  }

  dimension: tb_euro_old_eu_currency_code11 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE11 ;;
  }

  dimension: tb_euro_old_eu_currency_code12 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE12 ;;
  }

  dimension: tb_euro_old_eu_currency_code13 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE13 ;;
  }

  dimension: tb_euro_old_eu_currency_code14 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE14 ;;
  }

  dimension: tb_euro_old_eu_currency_code15 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE15 ;;
  }

  dimension: tb_euro_old_eu_currency_code16 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE16 ;;
  }

  dimension: tb_euro_old_eu_currency_code17 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE17 ;;
  }

  dimension: tb_euro_old_eu_currency_code18 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE18 ;;
  }

  dimension: tb_euro_old_eu_currency_code19 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE19 ;;
  }

  dimension: tb_euro_old_eu_currency_code2 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE2 ;;
  }

  dimension: tb_euro_old_eu_currency_code20 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE20 ;;
  }

  dimension: tb_euro_old_eu_currency_code3 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE3 ;;
  }

  dimension: tb_euro_old_eu_currency_code4 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE4 ;;
  }

  dimension: tb_euro_old_eu_currency_code5 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE5 ;;
  }

  dimension: tb_euro_old_eu_currency_code6 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE6 ;;
  }

  dimension: tb_euro_old_eu_currency_code7 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE7 ;;
  }

  dimension: tb_euro_old_eu_currency_code8 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE8 ;;
  }

  dimension: tb_euro_old_eu_currency_code9 {
    type: string
    sql: ${TABLE}.TB_EURO_OLD_EU_CURRENCY_CODE9 ;;
  }

  dimension: tb_euro_packslip_ncu_sw {
    type: string
    sql: ${TABLE}.TB_EURO_PACKSLIP_NCU_SW ;;
  }

  dimension: tb_euro_stop_eu_po_sw {
    type: string
    sql: ${TABLE}.TB_EURO_STOP_EU_PO_SW ;;
  }

  dimension: tb_euro_stop_eu_vendor_sw {
    type: string
    sql: ${TABLE}.TB_EURO_STOP_EU_VENDOR_SW ;;
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
