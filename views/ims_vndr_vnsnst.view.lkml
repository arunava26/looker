# The name of this view in Looker is "Ims Vndr Vnsnst"
view: ims_vndr_vnsnst {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSNST`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add to Po Sw" in Explore.

  dimension: add_to_po_sw {
    type: string
    sql: ${TABLE}.ADD_TO_PO_SW ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: date_of_order {
    type: number
    sql: ${TABLE}.DATE_OF_ORDER ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_date_of_order {
    type: sum
    sql: ${date_of_order} ;;
  }

  measure: average_date_of_order {
    type: average
    sql: ${date_of_order} ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
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

  dimension: order_nbr {
    type: string
    sql: ${TABLE}.ORDER_NBR ;;
  }

  dimension: qty_of_order {
    type: number
    sql: ${TABLE}.QTY_OF_ORDER ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: so_company {
    type: string
    sql: ${TABLE}.SO_COMPANY ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: vnn_br_nbr {
    type: string
    sql: ${TABLE}.VNN_BR_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
