# The name of this view in Looker is "Ims Prod Csw Inslor 6"
view: ims_prod_csw_inslor_6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_CSW_INSLOR_6`
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

  dimension: csw_c_hold_qty {
    type: number
    sql: ${TABLE}.CSW_C_HOLD_QTY ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_csw_c_hold_qty {
    type: sum
    sql: ${csw_c_hold_qty} ;;
  }

  measure: average_csw_c_hold_qty {
    type: average
    sql: ${csw_c_hold_qty} ;;
  }

  dimension: csw_f_hold_qty {
    type: number
    sql: ${TABLE}.CSW_F_HOLD_QTY ;;
  }

  dimension: csw_p_hold_qty {
    type: number
    sql: ${TABLE}.CSW_P_HOLD_QTY ;;
  }

  dimension: csw_q_hold_qty {
    type: number
    sql: ${TABLE}.CSW_Q_HOLD_QTY ;;
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

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: whse_location {
    type: string
    sql: ${TABLE}.WHSE_LOCATION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
