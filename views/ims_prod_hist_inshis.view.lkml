# The name of this view in Looker is "Ims Prod Hist Inshis"
view: ims_prod_hist_inshis {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_HIST_INSHIS`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ads Override Sw" in Explore.

  dimension: ads_override_sw {
    type: string
    sql: ${TABLE}.ADS_OVERRIDE_SW ;;
  }

  dimension: avg_daily_sales_qty {
    type: number
    sql: ${TABLE}.AVG_DAILY_SALES_QTY ;;
  }

  dimension: avg_inv_value {
    type: number
    sql: ${TABLE}.AVG_INV_VALUE ;;
  }

  dimension: avg_trans_out {
    type: number
    sql: ${TABLE}.AVG_TRANS_OUT ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: demand_filter {
    type: string
    sql: ${TABLE}.DEMAND_FILTER ;;
  }

  dimension: eop {
    type: number
    sql: ${TABLE}.EOP ;;
  }

  dimension: eoq {
    type: number
    sql: ${TABLE}.EOQ ;;
  }

  dimension: fcst_lines {
    type: number
    sql: ${TABLE}.FCST_LINES ;;
  }

  dimension: fcst_method {
    type: string
    sql: ${TABLE}.FCST_METHOD ;;
  }

  dimension: fcst_sales {
    type: number
    sql: ${TABLE}.FCST_SALES ;;
  }

  dimension: last_me_date {
    type: number
    sql: ${TABLE}.LAST_ME_DATE ;;
  }

  dimension: last_phy_inv {
    type: number
    sql: ${TABLE}.LAST_PHY_INV ;;
  }

  dimension: lifo_cost {
    type: number
    sql: ${TABLE}.LIFO_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_lifo_cost {
    type: sum
    sql: ${lifo_cost} ;;
  }

  measure: average_lifo_cost {
    type: average
    sql: ${lifo_cost} ;;
  }

  dimension: mad {
    type: number
    sql: ${TABLE}.MAD ;;
  }

  dimension: max_qty {
    type: number
    sql: ${TABLE}.MAX_QTY ;;
  }

  dimension: min_qty {
    type: number
    sql: ${TABLE}.MIN_QTY ;;
  }

  dimension: moh {
    type: number
    sql: ${TABLE}.MOH ;;
  }

  dimension: mtd_adj_cost_of_sales {
    type: number
    sql: ${TABLE}.MTD_ADJ_COST_OF_SALES ;;
  }

  dimension: mtd_cost_of_sales {
    type: number
    sql: ${TABLE}.MTD_COST_OF_SALES ;;
  }

  dimension: mtd_lob_item {
    type: number
    sql: ${TABLE}.MTD_LOB_ITEM ;;
  }

  dimension: mtd_sales_qty {
    type: number
    sql: ${TABLE}.MTD_SALES_QTY ;;
  }

  dimension: mtd_sales_value {
    type: number
    sql: ${TABLE}.MTD_SALES_VALUE ;;
  }

  dimension: mtd_transfer_qty {
    type: number
    sql: ${TABLE}.MTD_TRANSFER_QTY ;;
  }

  dimension: no_of_days {
    type: number
    sql: ${TABLE}.NO_OF_DAYS ;;
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

  dimension: req_svc_level {
    type: number
    sql: ${TABLE}.REQ_SVC_LEVEL ;;
  }

  dimension: sales_history_1 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_1 ;;
  }

  dimension: sales_history_10 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_10 ;;
  }

  dimension: sales_history_11 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_11 ;;
  }

  dimension: sales_history_12 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_12 ;;
  }

  dimension: sales_history_2 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_2 ;;
  }

  dimension: sales_history_3 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_3 ;;
  }

  dimension: sales_history_4 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_4 ;;
  }

  dimension: sales_history_5 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_5 ;;
  }

  dimension: sales_history_6 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_6 ;;
  }

  dimension: sales_history_7 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_7 ;;
  }

  dimension: sales_history_8 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_8 ;;
  }

  dimension: sales_history_9 {
    type: number
    sql: ${TABLE}.SALES_HISTORY_9 ;;
  }

  dimension: seg_ind {
    type: string
    sql: ${TABLE}.SEG_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: strat_pct {
    type: number
    sql: ${TABLE}.STRAT_PCT ;;
  }

  dimension: variable_smoothing {
    type: number
    sql: ${TABLE}.VARIABLE_SMOOTHING ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: week_sales_1 {
    type: number
    sql: ${TABLE}.WEEK_SALES_1 ;;
  }

  dimension: week_sales_10 {
    type: number
    sql: ${TABLE}.WEEK_SALES_10 ;;
  }

  dimension: week_sales_11 {
    type: number
    sql: ${TABLE}.WEEK_SALES_11 ;;
  }

  dimension: week_sales_12 {
    type: number
    sql: ${TABLE}.WEEK_SALES_12 ;;
  }

  dimension: week_sales_2 {
    type: number
    sql: ${TABLE}.WEEK_SALES_2 ;;
  }

  dimension: week_sales_3 {
    type: number
    sql: ${TABLE}.WEEK_SALES_3 ;;
  }

  dimension: week_sales_4 {
    type: number
    sql: ${TABLE}.WEEK_SALES_4 ;;
  }

  dimension: week_sales_5 {
    type: number
    sql: ${TABLE}.WEEK_SALES_5 ;;
  }

  dimension: week_sales_6 {
    type: number
    sql: ${TABLE}.WEEK_SALES_6 ;;
  }

  dimension: week_sales_7 {
    type: number
    sql: ${TABLE}.WEEK_SALES_7 ;;
  }

  dimension: week_sales_8 {
    type: number
    sql: ${TABLE}.WEEK_SALES_8 ;;
  }

  dimension: week_sales_9 {
    type: number
    sql: ${TABLE}.WEEK_SALES_9 ;;
  }

  dimension: wk_sales_qty {
    type: number
    sql: ${TABLE}.WK_SALES_QTY ;;
  }

  dimension: woh {
    type: number
    sql: ${TABLE}.WOH ;;
  }

  dimension: ytd_adj_cost_of_sales {
    type: number
    sql: ${TABLE}.YTD_ADJ_COST_OF_SALES ;;
  }

  dimension: ytd_cost_of_sales {
    type: number
    sql: ${TABLE}.YTD_COST_OF_SALES ;;
  }

  dimension: ytd_lob_item {
    type: number
    sql: ${TABLE}.YTD_LOB_ITEM ;;
  }

  dimension: ytd_sales_qty {
    type: number
    sql: ${TABLE}.YTD_SALES_QTY ;;
  }

  dimension: ytd_sales_value {
    type: number
    sql: ${TABLE}.YTD_SALES_VALUE ;;
  }

  dimension: ytd_transfer_qty {
    type: number
    sql: ${TABLE}.YTD_TRANSFER_QTY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
