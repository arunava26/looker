# The name of this view in Looker is "Ims Prod Qbrk Ovrd Insmsc 0"
view: ims_prod_qbrk_ovrd_insmsc_0 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_QBRK_OVRD_INSMSC_0`
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

  dimension: qb_col_1 {
    type: string
    sql: ${TABLE}.QB_COL_1 ;;
  }

  dimension: qb_col_2 {
    type: string
    sql: ${TABLE}.QB_COL_2 ;;
  }

  dimension: qb_col_3 {
    type: string
    sql: ${TABLE}.QB_COL_3 ;;
  }

  dimension: qb_col_4 {
    type: string
    sql: ${TABLE}.QB_COL_4 ;;
  }

  dimension: qb_margin_1 {
    type: number
    sql: ${TABLE}.QB_MARGIN_1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_qb_margin_1 {
    type: sum
    sql: ${qb_margin_1} ;;
  }

  measure: average_qb_margin_1 {
    type: average
    sql: ${qb_margin_1} ;;
  }

  dimension: qb_margin_2 {
    type: number
    sql: ${TABLE}.QB_MARGIN_2 ;;
  }

  dimension: qb_margin_3 {
    type: number
    sql: ${TABLE}.QB_MARGIN_3 ;;
  }

  dimension: qb_margin_4 {
    type: number
    sql: ${TABLE}.QB_MARGIN_4 ;;
  }

  dimension: qb_price_1 {
    type: number
    sql: ${TABLE}.QB_PRICE_1 ;;
  }

  dimension: qb_price_2 {
    type: number
    sql: ${TABLE}.QB_PRICE_2 ;;
  }

  dimension: qb_price_3 {
    type: number
    sql: ${TABLE}.QB_PRICE_3 ;;
  }

  dimension: qb_price_4 {
    type: number
    sql: ${TABLE}.QB_PRICE_4 ;;
  }

  dimension: qb_price_sw_1 {
    type: string
    sql: ${TABLE}.QB_PRICE_SW_1 ;;
  }

  dimension: qb_price_sw_2 {
    type: string
    sql: ${TABLE}.QB_PRICE_SW_2 ;;
  }

  dimension: qb_price_sw_3 {
    type: string
    sql: ${TABLE}.QB_PRICE_SW_3 ;;
  }

  dimension: qb_price_sw_4 {
    type: string
    sql: ${TABLE}.QB_PRICE_SW_4 ;;
  }

  dimension: qb_price_type_sw_1 {
    type: string
    sql: ${TABLE}.QB_PRICE_TYPE_SW_1 ;;
  }

  dimension: qb_price_type_sw_2 {
    type: string
    sql: ${TABLE}.QB_PRICE_TYPE_SW_2 ;;
  }

  dimension: qb_price_type_sw_3 {
    type: string
    sql: ${TABLE}.QB_PRICE_TYPE_SW_3 ;;
  }

  dimension: qb_price_type_sw_4 {
    type: string
    sql: ${TABLE}.QB_PRICE_TYPE_SW_4 ;;
  }

  dimension: qb_qty_1 {
    type: number
    sql: ${TABLE}.QB_QTY_1 ;;
  }

  dimension: qb_qty_2 {
    type: number
    sql: ${TABLE}.QB_QTY_2 ;;
  }

  dimension: qb_qty_3 {
    type: number
    sql: ${TABLE}.QB_QTY_3 ;;
  }

  dimension: qb_qty_4 {
    type: number
    sql: ${TABLE}.QB_QTY_4 ;;
  }

  dimension: qb_qty_sw_1 {
    type: string
    sql: ${TABLE}.QB_QTY_SW_1 ;;
  }

  dimension: qb_qty_sw_2 {
    type: string
    sql: ${TABLE}.QB_QTY_SW_2 ;;
  }

  dimension: qb_qty_sw_3 {
    type: string
    sql: ${TABLE}.QB_QTY_SW_3 ;;
  }

  dimension: qb_qty_sw_4 {
    type: string
    sql: ${TABLE}.QB_QTY_SW_4 ;;
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
