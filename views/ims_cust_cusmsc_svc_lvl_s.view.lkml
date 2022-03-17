# The name of this view in Looker is "Ims Cust Cusmsc Svc Lvl S"
view: ims_cust_cusmsc_svc_lvl_s {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_SVC_LVL_S`
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

  dimension: frt_as_cust_br {
    type: string
    sql: ${TABLE}.FRT_AS_CUST_BR ;;
  }

  dimension: frt_as_cust_nbr {
    type: string
    sql: ${TABLE}.FRT_AS_CUST_NBR ;;
  }

  dimension: frt_as_cust_sfx {
    type: string
    sql: ${TABLE}.FRT_AS_CUST_SFX ;;
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

  dimension: sl_asn_fee_amt_pct {
    type: number
    sql: ${TABLE}.SL_ASN_FEE_AMT_PCT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sl_asn_fee_amt_pct {
    type: sum
    sql: ${sl_asn_fee_amt_pct} ;;
  }

  measure: average_sl_asn_fee_amt_pct {
    type: average
    sql: ${sl_asn_fee_amt_pct} ;;
  }

  dimension: sl_asn_fee_sw {
    type: string
    sql: ${TABLE}.SL_ASN_FEE_SW ;;
  }

  dimension: sl_consolidation_ind {
    type: string
    sql: ${TABLE}.SL_CONSOLIDATION_IND ;;
  }

  dimension: sl_cust_asn_req_sw {
    type: string
    sql: ${TABLE}.SL_CUST_ASN_REQ_SW ;;
  }

  dimension: sl_cust_suffix {
    type: string
    sql: ${TABLE}.SL_CUST_SUFFIX ;;
  }

  dimension: sl_deliver_fri {
    type: string
    sql: ${TABLE}.SL_DELIVER_FRI ;;
  }

  dimension: sl_deliver_mon {
    type: string
    sql: ${TABLE}.SL_DELIVER_MON ;;
  }

  dimension: sl_deliver_sat {
    type: string
    sql: ${TABLE}.SL_DELIVER_SAT ;;
  }

  dimension: sl_deliver_thu {
    type: string
    sql: ${TABLE}.SL_DELIVER_THU ;;
  }

  dimension: sl_deliver_tue {
    type: string
    sql: ${TABLE}.SL_DELIVER_TUE ;;
  }

  dimension: sl_deliver_wed {
    type: string
    sql: ${TABLE}.SL_DELIVER_WED ;;
  }

  dimension: sl_prm_fee_amt_pct {
    type: number
    sql: ${TABLE}.SL_PRM_FEE_AMT_PCT ;;
  }

  dimension: sl_prm_fee_sw {
    type: string
    sql: ${TABLE}.SL_PRM_FEE_SW ;;
  }

  dimension: sl_prm_service {
    type: string
    sql: ${TABLE}.SL_PRM_SERVICE ;;
  }

  dimension: sl_speed_fee_amt_pct {
    type: number
    sql: ${TABLE}.SL_SPEED_FEE_AMT_PCT ;;
  }

  dimension: sl_speed_fee_sw {
    type: string
    sql: ${TABLE}.SL_SPEED_FEE_SW ;;
  }

  dimension: sl_speed_service {
    type: string
    sql: ${TABLE}.SL_SPEED_SERVICE ;;
  }

  dimension: sl_toll_fee_amt_pct {
    type: number
    sql: ${TABLE}.SL_TOLL_FEE_AMT_PCT ;;
  }

  dimension: sl_truck_toll_fee_sw {
    type: string
    sql: ${TABLE}.SL_TRUCK_TOLL_FEE_SW ;;
  }

  dimension: sl_truck_toll_waive_sw {
    type: string
    sql: ${TABLE}.SL_TRUCK_TOLL_WAIVE_SW ;;
  }

  dimension: sl_type {
    type: string
    sql: ${TABLE}.SL_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
