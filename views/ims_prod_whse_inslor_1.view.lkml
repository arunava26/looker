# The name of this view in Looker is "Ims Prod Whse Inslor 1"
view: ims_prod_whse_inslor_1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_WHSE_INSLOR_1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bal on Hand" in Explore.

  dimension: bal_on_hand {
    type: number
    sql: ${TABLE}.BAL_ON_HAND ;;
  }

  dimension: bin_type {
    type: string
    sql: ${TABLE}.BIN_TYPE ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cost {
    type: sum
    sql: ${cost} ;;
  }

  measure: average_cost {
    type: average
    sql: ${cost} ;;
  }

  dimension: fifo_receipt_date {
    type: number
    sql: ${TABLE}.FIFO_RECEIPT_DATE ;;
  }

  dimension: hold_date {
    type: number
    sql: ${TABLE}.HOLD_DATE ;;
  }

  dimension: lot_serial {
    type: string
    sql: ${TABLE}.LOT_SERIAL ;;
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

  dimension: original_qty {
    type: number
    sql: ${TABLE}.ORIGINAL_QTY ;;
  }

  dimension: pending_usage {
    type: string
    sql: ${TABLE}.PENDING_USAGE ;;
  }

  dimension: qty_committed {
    type: number
    sql: ${TABLE}.QTY_COMMITTED ;;
  }

  dimension: qty_in_transit {
    type: number
    sql: ${TABLE}.QTY_IN_TRANSIT ;;
  }

  dimension: reciept_date {
    type: number
    sql: ${TABLE}.RECIEPT_DATE ;;
  }

  dimension: seg_type {
    type: string
    sql: ${TABLE}.SEG_TYPE ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: status_qty {
    type: string
    sql: ${TABLE}.STATUS_QTY ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: whse_location {
    type: string
    sql: ${TABLE}.WHSE_LOCATION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
