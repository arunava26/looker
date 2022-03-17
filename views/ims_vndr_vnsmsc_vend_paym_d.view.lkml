# The name of this view in Looker is "Ims Vndr Vnsmsc Vend Paym D"
view: ims_vndr_vnsmsc_vend_paym_d {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSMSC_VEND_PAYM_D`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ap Curr Mth" in Explore.

  dimension: ap_curr_mth {
    type: number
    sql: ${TABLE}.AP_CURR_MTH ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ap_curr_mth {
    type: sum
    sql: ${ap_curr_mth} ;;
  }

  measure: average_ap_curr_mth {
    type: average
    sql: ${ap_curr_mth} ;;
  }

  dimension: ap_due_1_mth {
    type: number
    sql: ${TABLE}.AP_DUE_1_MTH ;;
  }

  dimension: ap_due_2_mth {
    type: number
    sql: ${TABLE}.AP_DUE_2_MTH ;;
  }

  dimension: ap_past_5_mth {
    type: number
    sql: ${TABLE}.AP_PAST_5_MTH ;;
  }

  dimension: ap_past_6_mth {
    type: number
    sql: ${TABLE}.AP_PAST_6_MTH ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: date_as_of_julian {
    type: number
    sql: ${TABLE}.DATE_AS_OF_JULIAN ;;
  }

  dimension: inv_boh {
    type: number
    sql: ${TABLE}.INV_BOH ;;
  }

  dimension: inv_in_transit {
    type: number
    sql: ${TABLE}.INV_IN_TRANSIT ;;
  }

  dimension: inv_on_order {
    type: number
    sql: ${TABLE}.INV_ON_ORDER ;;
  }

  dimension: inv_open_rma {
    type: number
    sql: ${TABLE}.INV_OPEN_RMA ;;
  }

  dimension: invr_ret_branch {
    type: number
    sql: ${TABLE}.INVR_RET_BRANCH ;;
  }

  dimension: invr_ret_vendor {
    type: number
    sql: ${TABLE}.INVR_RET_VENDOR ;;
  }

  dimension: mrktl_1_30 {
    type: number
    sql: ${TABLE}.MRKTL_1_30 ;;
  }

  dimension: mrktl_31_60 {
    type: number
    sql: ${TABLE}.MRKTL_31_60 ;;
  }

  dimension: mrktl_61_90 {
    type: number
    sql: ${TABLE}.MRKTL_61_90 ;;
  }

  dimension: mrktl_90_ovr {
    type: number
    sql: ${TABLE}.MRKTL_90_OVR ;;
  }

  dimension: mrktl_curr_mth {
    type: number
    sql: ${TABLE}.MRKTL_CURR_MTH ;;
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

  dimension: unvr_curr_mth {
    type: number
    sql: ${TABLE}.UNVR_CURR_MTH ;;
  }

  dimension: unvr_due_1_mth {
    type: number
    sql: ${TABLE}.UNVR_DUE_1_MTH ;;
  }

  dimension: unvr_due_2_mth {
    type: number
    sql: ${TABLE}.UNVR_DUE_2_MTH ;;
  }

  dimension: unvr_past_5_mth {
    type: number
    sql: ${TABLE}.UNVR_PAST_5_MTH ;;
  }

  dimension: unvr_past_6_mth {
    type: number
    sql: ${TABLE}.UNVR_PAST_6_MTH ;;
  }

  dimension: vend_payee {
    type: string
    sql: ${TABLE}.VEND_PAYEE ;;
  }

  dimension: vend_suffix {
    type: string
    sql: ${TABLE}.VEND_SUFFIX ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
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
