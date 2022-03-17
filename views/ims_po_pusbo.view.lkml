# The name of this view in Looker is "Ims Po Pusbo"
view: ims_po_pusbo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PO_PUSBO`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bo From Dist" in Explore.

  dimension: bo_from_dist {
    type: string
    sql: ${TABLE}.BO_FROM_DIST ;;
  }

  dimension: bo_from_order {
    type: string
    sql: ${TABLE}.BO_FROM_ORDER ;;
  }

  dimension: bo_from_ship {
    type: string
    sql: ${TABLE}.BO_FROM_SHIP ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cso_fulf_sku {
    type: string
    sql: ${TABLE}.CSO_FULF_SKU ;;
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

  dimension_group: ods_prod_lst_upd_dt {
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
    sql: ${TABLE}.ODS_PROD_LST_UPD_DT ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: pub_orig_order_qty {
    type: number
    sql: ${TABLE}.PUB_ORIG_ORDER_QTY ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pub_orig_order_qty {
    type: sum
    sql: ${pub_orig_order_qty} ;;
  }

  measure: average_pub_orig_order_qty {
    type: average
    sql: ${pub_orig_order_qty} ;;
  }

  dimension: rtd_qty {
    type: number
    sql: ${TABLE}.RTD_QTY ;;
  }

  dimension: ship_br_nbr {
    type: string
    sql: ${TABLE}.SHIP_BR_NBR ;;
  }

  dimension: ship_company {
    type: string
    sql: ${TABLE}.SHIP_COMPANY ;;
  }

  dimension: ship_line_nbr {
    type: string
    sql: ${TABLE}.SHIP_LINE_NBR ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: ship_order_nbr {
    type: string
    sql: ${TABLE}.SHIP_ORDER_NBR ;;
  }

  dimension: so_entry_date {
    type: number
    sql: ${TABLE}.SO_ENTRY_DATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
