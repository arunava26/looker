# The name of this view in Looker is "Ims Prod Col Prc Insmsc E"
view: ims_prod_col_prc_insmsc_e {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_COL_PRC_INSMSC_E`
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

  dimension: col_1_price {
    type: number
    sql: ${TABLE}.COL_1_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_col_1_price {
    type: sum
    sql: ${col_1_price} ;;
  }

  measure: average_col_1_price {
    type: average
    sql: ${col_1_price} ;;
  }

  dimension: col_2_price {
    type: number
    sql: ${TABLE}.COL_2_PRICE ;;
  }

  dimension: col_3_price {
    type: number
    sql: ${TABLE}.COL_3_PRICE ;;
  }

  dimension: col_4_price {
    type: number
    sql: ${TABLE}.COL_4_PRICE ;;
  }

  dimension: col_5_price {
    type: number
    sql: ${TABLE}.COL_5_PRICE ;;
  }

  dimension: col_6_price {
    type: number
    sql: ${TABLE}.COL_6_PRICE ;;
  }

  dimension: col_7_price {
    type: number
    sql: ${TABLE}.COL_7_PRICE ;;
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

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
