# The name of this view in Looker is "Ims Prod Wms Inslor 8"
view: ims_prod_wms_inslor_8 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_WMS_INSLOR_8`
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

  dimension: seg_type {
    type: string
    sql: ${TABLE}.SEG_TYPE ;;
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

  dimension: whse_location {
    type: string
    sql: ${TABLE}.WHSE_LOCATION ;;
  }

  dimension: wms_c_hold_qty {
    type: number
    sql: ${TABLE}.WMS_C_HOLD_QTY ;;
  }

  dimension: wms_f_hold_qty {
    type: number
    sql: ${TABLE}.WMS_F_HOLD_QTY ;;
  }

  dimension: wms_p_hold_qty {
    type: number
    sql: ${TABLE}.WMS_P_HOLD_QTY ;;
  }

  dimension: wms_q_hold_qty {
    type: number
    sql: ${TABLE}.WMS_Q_HOLD_QTY ;;
  }

  dimension: wms_r_hold_qty {
    type: number
    sql: ${TABLE}.WMS_R_HOLD_QTY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
