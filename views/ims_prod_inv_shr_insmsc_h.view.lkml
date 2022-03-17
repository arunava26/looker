# The name of this view in Looker is "Ims Prod Inv Shr Insmsc H"
view: ims_prod_inv_shr_insmsc_h {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_INV_SHR_INSMSC_H`
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

  dimension: his_mtd_sales_qty {
    type: number
    sql: ${TABLE}.HIS_MTD_SALES_QTY ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_his_mtd_sales_qty {
    type: sum
    sql: ${his_mtd_sales_qty} ;;
  }

  measure: average_his_mtd_sales_qty {
    type: average
    sql: ${his_mtd_sales_qty} ;;
  }

  dimension: his_mtd_sales_value {
    type: number
    sql: ${TABLE}.HIS_MTD_SALES_VALUE ;;
  }

  dimension: his_sales_history_1 {
    type: number
    sql: ${TABLE}.HIS_SALES_HISTORY_1 ;;
  }

  dimension: his_sales_history_2 {
    type: number
    sql: ${TABLE}.HIS_SALES_HISTORY_2 ;;
  }

  dimension: his_sales_history_3 {
    type: number
    sql: ${TABLE}.HIS_SALES_HISTORY_3 ;;
  }

  dimension: his_sales_history_4 {
    type: number
    sql: ${TABLE}.HIS_SALES_HISTORY_4 ;;
  }

  dimension: his_sales_history_5 {
    type: number
    sql: ${TABLE}.HIS_SALES_HISTORY_5 ;;
  }

  dimension: his_sales_history_6 {
    type: number
    sql: ${TABLE}.HIS_SALES_HISTORY_6 ;;
  }

  dimension: his_ytd_sales_qty {
    type: number
    sql: ${TABLE}.HIS_YTD_SALES_QTY ;;
  }

  dimension: his_ytd_sales_value {
    type: number
    sql: ${TABLE}.HIS_YTD_SALES_VALUE ;;
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
