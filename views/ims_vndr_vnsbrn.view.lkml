# The name of this view in Looker is "Ims Vndr Vnsbrn"
view: ims_vndr_vnsbrn {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSBRN`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age A Amt" in Explore.

  dimension: age_a_amt {
    type: number
    sql: ${TABLE}.AGE_A_AMT ;;
  }

  dimension: age_b_amt {
    type: number
    sql: ${TABLE}.AGE_B_AMT ;;
  }

  dimension: age_c_amt {
    type: number
    sql: ${TABLE}.AGE_C_AMT ;;
  }

  dimension: age_d_amt {
    type: number
    sql: ${TABLE}.AGE_D_AMT ;;
  }

  dimension: avg_inv_value_vend {
    type: number
    sql: ${TABLE}.AVG_INV_VALUE_VEND ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: buyer {
    type: string
    sql: ${TABLE}.BUYER ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cycle_forecast_sw {
    type: string
    sql: ${TABLE}.CYCLE_FORECAST_SW ;;
  }

  dimension: def_vend_nbr {
    type: string
    sql: ${TABLE}.DEF_VEND_NBR ;;
  }

  dimension: def_vend_suf {
    type: string
    sql: ${TABLE}.DEF_VEND_SUF ;;
  }

  dimension: fast_mover_cutoff {
    type: number
    sql: ${TABLE}.FAST_MOVER_CUTOFF ;;
  }

  dimension: forecast_cost {
    type: number
    sql: ${TABLE}.FORECAST_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_forecast_cost {
    type: sum
    sql: ${forecast_cost} ;;
  }

  measure: average_forecast_cost {
    type: average
    sql: ${forecast_cost} ;;
  }

  dimension: forecast_int_default {
    type: number
    sql: ${TABLE}.FORECAST_INT_DEFAULT ;;
  }

  dimension: forecast_int_used {
    type: number
    sql: ${TABLE}.FORECAST_INT_USED ;;
  }

  dimension: forecast_weight {
    type: number
    sql: ${TABLE}.FORECAST_WEIGHT ;;
  }

  dimension: items_at_min {
    type: number
    sql: ${TABLE}.ITEMS_AT_MIN ;;
  }

  dimension: items_forecast {
    type: number
    sql: ${TABLE}.ITEMS_FORECAST ;;
  }

  dimension: items_stk_out {
    type: number
    sql: ${TABLE}.ITEMS_STK_OUT ;;
  }

  dimension: items_zero_stk {
    type: number
    sql: ${TABLE}.ITEMS_ZERO_STK ;;
  }

  dimension: last_cycle_review {
    type: number
    sql: ${TABLE}.LAST_CYCLE_REVIEW ;;
  }

  dimension: nbr_items_stocked {
    type: number
    sql: ${TABLE}.NBR_ITEMS_STOCKED ;;
  }

  dimension: next_cycle_review {
    type: number
    sql: ${TABLE}.NEXT_CYCLE_REVIEW ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_lst_upd_ts {
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
    sql: ${TABLE}.ODS_LST_UPD_TS ;;
  }

  dimension: po_switch {
    type: string
    sql: ${TABLE}.PO_SWITCH ;;
  }

  dimension: review_time_wks {
    type: number
    sql: ${TABLE}.REVIEW_TIME_WKS ;;
  }

  dimension: status_vend_br {
    type: string
    sql: ${TABLE}.STATUS_VEND_BR ;;
  }

  dimension: total_on_order_cost {
    type: number
    sql: ${TABLE}.TOTAL_ON_ORDER_COST ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
