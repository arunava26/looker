# The name of this view in Looker is "Ims Cust Cusmsc Over Amt Z3"
view: ims_cust_cusmsc_over_amt_z3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_OVER_AMT_Z3`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Br Nbr" in Explore.

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: microd_amt_1 {
    type: number
    sql: ${TABLE}.MICROD_AMT_1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_microd_amt_1 {
    type: sum
    sql: ${microd_amt_1} ;;
  }

  measure: average_microd_amt_1 {
    type: average
    sql: ${microd_amt_1} ;;
  }

  dimension: microd_amt_2 {
    type: number
    sql: ${TABLE}.MICROD_AMT_2 ;;
  }

  dimension: microd_amt_3 {
    type: number
    sql: ${TABLE}.MICROD_AMT_3 ;;
  }

  dimension: microd_amt_4 {
    type: number
    sql: ${TABLE}.MICROD_AMT_4 ;;
  }

  dimension: microd_amt_5 {
    type: number
    sql: ${TABLE}.MICROD_AMT_5 ;;
  }

  dimension: microd_z_type {
    type: string
    sql: ${TABLE}.MICROD_Z_TYPE ;;
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

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
