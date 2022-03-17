# The name of this view in Looker is "Ims Cust Cusmsc Gst Cust Inf F"
view: ims_cust_cusmsc_gst_cust_inf_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_GST_CUST_INF_F`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "App Gst Tds" in Explore.

  dimension: app_gst_tds {
    type: string
    sql: ${TABLE}.APP_GST_TDS ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cust_lckflag {
    type: string
    sql: ${TABLE}.CUST_LCKFLAG ;;
  }

  dimension: cust_lckrsn {
    type: string
    sql: ${TABLE}.CUST_LCKRSN ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: exempt_flag {
    type: string
    sql: ${TABLE}.EXEMPT_FLAG ;;
  }

  dimension: exempt_number {
    type: string
    sql: ${TABLE}.EXEMPT_NUMBER ;;
  }

  dimension: exempt_val_date {
    type: number
    sql: ${TABLE}.EXEMPT_VAL_DATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_exempt_val_date {
    type: sum
    sql: ${exempt_val_date} ;;
  }

  measure: average_exempt_val_date {
    type: average
    sql: ${exempt_val_date} ;;
  }

  dimension: gst_seg_suffix {
    type: string
    sql: ${TABLE}.GST_SEG_SUFFIX ;;
  }

  dimension: gst_tds_rate {
    type: number
    sql: ${TABLE}.GST_TDS_RATE ;;
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

  dimension: panno {
    type: string
    sql: ${TABLE}.PANNO ;;
  }

  dimension: rate_app_flag {
    type: string
    sql: ${TABLE}.RATE_APP_FLAG ;;
  }

  dimension: regist_flag {
    type: string
    sql: ${TABLE}.REGIST_FLAG ;;
  }

  dimension: retent_flag {
    type: string
    sql: ${TABLE}.RETENT_FLAG ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  dimension: tds_max_amt {
    type: number
    sql: ${TABLE}.TDS_MAX_AMT ;;
  }

  dimension: tds_ref_no {
    type: string
    sql: ${TABLE}.TDS_REF_NO ;;
  }

  dimension: tds_type {
    type: string
    sql: ${TABLE}.TDS_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
