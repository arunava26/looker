# The name of this view in Looker is "Ims Vndr Vnssts"
view: ims_vndr_vnssts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSSTS`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg Lead Days Vend" in Explore.

  dimension: avg_lead_days_vend {
    type: number
    sql: ${TABLE}.AVG_LEAD_DAYS_VEND ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: last_sale_date {
    type: number
    sql: ${TABLE}.LAST_SALE_DATE ;;
  }

  dimension: ly_profit {
    type: number
    sql: ${TABLE}.LY_PROFIT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ly_profit {
    type: sum
    sql: ${ly_profit} ;;
  }

  measure: average_ly_profit {
    type: average
    sql: ${ly_profit} ;;
  }

  dimension: ly_sales {
    type: number
    sql: ${TABLE}.LY_SALES ;;
  }

  dimension: month_end_date {
    type: number
    sql: ${TABLE}.MONTH_END_DATE ;;
  }

  dimension: mtd_profit {
    type: number
    sql: ${TABLE}.MTD_PROFIT ;;
  }

  dimension: mtd_rcpts {
    type: number
    sql: ${TABLE}.MTD_RCPTS ;;
  }

  dimension: mtd_sales {
    type: number
    sql: ${TABLE}.MTD_SALES ;;
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

  dimension: open_po_amt {
    type: number
    sql: ${TABLE}.OPEN_PO_AMT ;;
  }

  dimension: open_po_count {
    type: number
    sql: ${TABLE}.OPEN_PO_COUNT ;;
  }

  dimension: open_po_items {
    type: number
    sql: ${TABLE}.OPEN_PO_ITEMS ;;
  }

  dimension: seg_type_vnssts {
    type: string
    sql: ${TABLE}.SEG_TYPE_VNSSTS ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: ytd_nbr_bckordrs {
    type: number
    sql: ${TABLE}.YTD_NBR_BCKORDRS ;;
  }

  dimension: ytd_nbr_orders {
    type: number
    sql: ${TABLE}.YTD_NBR_ORDERS ;;
  }

  dimension: ytd_profit {
    type: number
    sql: ${TABLE}.YTD_PROFIT ;;
  }

  dimension: ytd_rcpts {
    type: number
    sql: ${TABLE}.YTD_RCPTS ;;
  }

  dimension: ytd_sales {
    type: number
    sql: ${TABLE}.YTD_SALES ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
