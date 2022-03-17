# The name of this view in Looker is "Ims Prod Prc Qbrk Insmsc 12"
view: ims_prod_prc_qbrk_insmsc_12 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_PRC_QBRK_INSMSC_12`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Br Ind" in Explore.

  dimension: br_ind {
    type: string
    sql: ${TABLE}.BR_IND ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
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

  dimension: price_break_1 {
    type: number
    sql: ${TABLE}.PRICE_BREAK_1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price_break_1 {
    type: sum
    sql: ${price_break_1} ;;
  }

  measure: average_price_break_1 {
    type: average
    sql: ${price_break_1} ;;
  }

  dimension: price_break_2 {
    type: number
    sql: ${TABLE}.PRICE_BREAK_2 ;;
  }

  dimension: price_break_3 {
    type: number
    sql: ${TABLE}.PRICE_BREAK_3 ;;
  }

  dimension: price_break_4 {
    type: number
    sql: ${TABLE}.PRICE_BREAK_4 ;;
  }

  dimension: price_qty_1 {
    type: number
    sql: ${TABLE}.PRICE_QTY_1 ;;
  }

  dimension: price_qty_2 {
    type: number
    sql: ${TABLE}.PRICE_QTY_2 ;;
  }

  dimension: price_qty_3 {
    type: number
    sql: ${TABLE}.PRICE_QTY_3 ;;
  }

  dimension: price_qty_4 {
    type: number
    sql: ${TABLE}.PRICE_QTY_4 ;;
  }

  dimension: qty_break_col_1 {
    type: string
    sql: ${TABLE}.QTY_BREAK_COL_1 ;;
  }

  dimension: qty_break_col_2 {
    type: string
    sql: ${TABLE}.QTY_BREAK_COL_2 ;;
  }

  dimension: qty_break_col_3 {
    type: string
    sql: ${TABLE}.QTY_BREAK_COL_3 ;;
  }

  dimension: qty_break_col_4 {
    type: string
    sql: ${TABLE}.QTY_BREAK_COL_4 ;;
  }

  dimension: qty_break_pct_1 {
    type: number
    sql: ${TABLE}.QTY_BREAK_PCT_1 ;;
  }

  dimension: qty_break_pct_2 {
    type: number
    sql: ${TABLE}.QTY_BREAK_PCT_2 ;;
  }

  dimension: qty_break_pct_3 {
    type: number
    sql: ${TABLE}.QTY_BREAK_PCT_3 ;;
  }

  dimension: qty_break_pct_4 {
    type: number
    sql: ${TABLE}.QTY_BREAK_PCT_4 ;;
  }

  dimension: qty_break_sw {
    type: string
    sql: ${TABLE}.QTY_BREAK_SW ;;
  }

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
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
