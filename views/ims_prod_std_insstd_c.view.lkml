# The name of this view in Looker is "Ims Prod Std Insstd C"
view: ims_prod_std_insstd_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_STD_INSSTD_C`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bar Code Nbr" in Explore.

  dimension: bar_code_nbr {
    type: string
    sql: ${TABLE}.BAR_CODE_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: isbn_nbr {
    type: string
    sql: ${TABLE}.ISBN_NBR ;;
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

  dimension: upc_nbr {
    type: string
    sql: ${TABLE}.UPC_NBR ;;
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
