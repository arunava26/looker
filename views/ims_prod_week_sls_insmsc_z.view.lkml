# The name of this view in Looker is "Ims Prod Week Sls Insmsc Z"
view: ims_prod_week_sls_insmsc_z {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_WEEK_SLS_INSMSC_Z`
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

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_seq_nbr {
    type: sum
    sql: ${seq_nbr} ;;
  }

  measure: average_seq_nbr {
    type: average
    sql: ${seq_nbr} ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
