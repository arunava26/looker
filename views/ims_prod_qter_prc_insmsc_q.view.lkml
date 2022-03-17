# The name of this view in Looker is "Ims Prod Qter Prc Insmsc Q"
view: ims_prod_qter_prc_insmsc_q {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_QTER_PRC_INSMSC_Q`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Base Price" in Explore.

  dimension: base_price {
    type: number
    sql: ${TABLE}.BASE_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_base_price {
    type: sum
    sql: ${base_price} ;;
  }

  measure: average_base_price {
    type: average
    sql: ${base_price} ;;
  }

  dimension: br_ind {
    type: string
    sql: ${TABLE}.BR_IND ;;
  }

  dimension: column_1_mult {
    type: number
    sql: ${TABLE}.COLUMN_1_MULT ;;
  }

  dimension: column_2_mult {
    type: number
    sql: ${TABLE}.COLUMN_2_MULT ;;
  }

  dimension: column_3_mult {
    type: number
    sql: ${TABLE}.COLUMN_3_MULT ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cost_mult {
    type: number
    sql: ${TABLE}.COST_MULT ;;
  }

  dimension: eff_date {
    type: number
    sql: ${TABLE}.EFF_DATE ;;
  }

  dimension: exp_date {
    type: number
    sql: ${TABLE}.EXP_DATE ;;
  }

  dimension: frt_mult {
    type: number
    sql: ${TABLE}.FRT_MULT ;;
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

  dimension: price_zone {
    type: string
    sql: ${TABLE}.PRICE_ZONE ;;
  }

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: um {
    type: string
    sql: ${TABLE}.UM ;;
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
