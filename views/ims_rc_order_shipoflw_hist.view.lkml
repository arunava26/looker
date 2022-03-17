# The name of this view in Looker is "Ims Rc Order Shipoflw Hist"
view: ims_rc_order_shipoflw_hist {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_RC_ORDER_SHIPOFLW_HIST`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Authorization Nbr" in Explore.

  dimension: authorization_nbr {
    type: string
    sql: ${TABLE}.AUTHORIZATION_NBR ;;
  }

  dimension: authorized_amt {
    type: number
    sql: ${TABLE}.AUTHORIZED_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_authorized_amt {
    type: sum
    sql: ${authorized_amt} ;;
  }

  measure: average_authorized_amt {
    type: average
    sql: ${authorized_amt} ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: comp_frt_amt {
    type: number
    sql: ${TABLE}.COMP_FRT_AMT ;;
  }

  dimension: comp_frt_amt_ind {
    type: string
    sql: ${TABLE}.COMP_FRT_AMT_IND ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: das_carr_chrg {
    type: number
    sql: ${TABLE}.DAS_CARR_CHRG ;;
  }

  dimension: das_cust_chrg {
    type: number
    sql: ${TABLE}.DAS_CUST_CHRG ;;
  }

  dimension: das_sw {
    type: string
    sql: ${TABLE}.DAS_SW ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: frm_carrier_flg {
    type: string
    sql: ${TABLE}.FRM_CARRIER_FLG ;;
  }

  dimension: guarfrt_calc_meth {
    type: string
    sql: ${TABLE}.GUARFRT_CALC_METH ;;
  }

  dimension: guarfrt_short_ship_ind {
    type: string
    sql: ${TABLE}.GUARFRT_SHORT_SHIP_IND ;;
  }

  dimension: guarfrt_sw {
    type: string
    sql: ${TABLE}.GUARFRT_SW ;;
  }

  dimension: im_choice_carrier {
    type: string
    sql: ${TABLE}.IM_CHOICE_CARRIER ;;
  }

  dimension: im_choice_foc {
    type: string
    sql: ${TABLE}.IM_CHOICE_FOC ;;
  }

  dimension: im_choice_frt_amt {
    type: number
    sql: ${TABLE}.IM_CHOICE_FRT_AMT ;;
  }

  dimension: man_upd_frt_out_amt_sw {
    type: string
    sql: ${TABLE}.MAN_UPD_FRT_OUT_AMT_SW ;;
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

  dimension: order_nbr {
    type: string
    sql: ${TABLE}.ORDER_NBR ;;
  }

  dimension: orsshhof_key_0 {
    type: string
    sql: ${TABLE}.ORSSHHOF_KEY_0 ;;
  }

  dimension: pre_dc_carrchg_carrier {
    type: string
    sql: ${TABLE}.PRE_DC_CARRCHG_CARRIER ;;
  }

  dimension: rdp3_c_fee {
    type: number
    sql: ${TABLE}.RDP3_C_FEE ;;
  }

  dimension: rdp3_c_waive_flg {
    type: string
    sql: ${TABLE}.RDP3_C_WAIVE_FLG ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
