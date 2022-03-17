# The name of this view in Looker is "Ims Vndr Vnsmsc Vend Purc V"
view: ims_vndr_vnsmsc_vend_purc_v {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSMSC_VEND_PURC_V`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Company" in Explore.

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: last_po_date {
    type: number
    sql: ${TABLE}.LAST_PO_DATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_last_po_date {
    type: sum
    sql: ${last_po_date} ;;
  }

  measure: average_last_po_date {
    type: average
    sql: ${last_po_date} ;;
  }

  dimension: lyr_1_st_comp {
    type: number
    sql: ${TABLE}.LYR_1ST_COMP ;;
  }

  dimension: lyr_avg_ld {
    type: number
    sql: ${TABLE}.LYR_AVG_LD ;;
  }

  dimension: lyr_line_1_st_comp {
    type: number
    sql: ${TABLE}.LYR_LINE_1ST_COMP ;;
  }

  dimension: lyr_lines_late {
    type: number
    sql: ${TABLE}.LYR_LINES_LATE ;;
  }

  dimension: lyr_lines_ordered {
    type: number
    sql: ${TABLE}.LYR_LINES_ORDERED ;;
  }

  dimension: lyr_ord_placed {
    type: number
    sql: ${TABLE}.LYR_ORD_PLACED ;;
  }

  dimension: lyr_purchases {
    type: number
    sql: ${TABLE}.LYR_PURCHASES ;;
  }

  dimension: lyr_returns {
    type: number
    sql: ${TABLE}.LYR_RETURNS ;;
  }

  dimension: mtd_1_st_comp {
    type: number
    sql: ${TABLE}.MTD_1ST_COMP ;;
  }

  dimension: mtd_avg_ld {
    type: number
    sql: ${TABLE}.MTD_AVG_LD ;;
  }

  dimension: mtd_line_1_st_comp {
    type: number
    sql: ${TABLE}.MTD_LINE_1ST_COMP ;;
  }

  dimension: mtd_lines_late {
    type: number
    sql: ${TABLE}.MTD_LINES_LATE ;;
  }

  dimension: mtd_lines_ordered {
    type: number
    sql: ${TABLE}.MTD_LINES_ORDERED ;;
  }

  dimension: mtd_ord_placed {
    type: number
    sql: ${TABLE}.MTD_ORD_PLACED ;;
  }

  dimension: mtd_purchases {
    type: number
    sql: ${TABLE}.MTD_PURCHASES ;;
  }

  dimension: mtd_returns {
    type: number
    sql: ${TABLE}.MTD_RETURNS ;;
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

  dimension: seg_type {
    type: string
    sql: ${TABLE}.SEG_TYPE ;;
  }

  dimension: vend_br_nbr {
    type: string
    sql: ${TABLE}.VEND_BR_NBR ;;
  }

  dimension: vend_suff {
    type: string
    sql: ${TABLE}.VEND_SUFF ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: ytd_1_st_comp {
    type: number
    sql: ${TABLE}.YTD_1ST_COMP ;;
  }

  dimension: ytd_avg_ld {
    type: number
    sql: ${TABLE}.YTD_AVG_LD ;;
  }

  dimension: ytd_line_1_st_comp {
    type: number
    sql: ${TABLE}.YTD_LINE_1ST_COMP ;;
  }

  dimension: ytd_lines_late {
    type: number
    sql: ${TABLE}.YTD_LINES_LATE ;;
  }

  dimension: ytd_lines_ordered {
    type: number
    sql: ${TABLE}.YTD_LINES_ORDERED ;;
  }

  dimension: ytd_ord_placed {
    type: number
    sql: ${TABLE}.YTD_ORD_PLACED ;;
  }

  dimension: ytd_purchases {
    type: number
    sql: ${TABLE}.YTD_PURCHASES ;;
  }

  dimension: ytd_returns {
    type: number
    sql: ${TABLE}.YTD_RETURNS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
