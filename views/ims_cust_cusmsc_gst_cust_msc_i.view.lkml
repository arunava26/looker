# The name of this view in Looker is "Ims Cust Cusmsc Gst Cust Msc I"
view: ims_cust_cusmsc_gst_cust_msc_i {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_GST_CUST_MSC_I`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bank Gua Amt" in Explore.

  dimension: bank_gua_amt {
    type: number
    sql: ${TABLE}.BANK_GUA_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bank_gua_amt {
    type: sum
    sql: ${bank_gua_amt} ;;
  }

  measure: average_bank_gua_amt {
    type: average
    sql: ${bank_gua_amt} ;;
  }

  dimension: bank_gua_expd_dt {
    type: number
    sql: ${TABLE}.BANK_GUA_EXPD_DT ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: comp_rating {
    type: string
    sql: ${TABLE}.COMP_RATING ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: const_bisin {
    type: string
    sql: ${TABLE}.CONST_BISIN ;;
  }

  dimension: corp_gua_amt {
    type: number
    sql: ${TABLE}.CORP_GUA_AMT ;;
  }

  dimension: corp_gua_exp_dt {
    type: number
    sql: ${TABLE}.CORP_GUA_EXP_DT ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: gst_seg_suffix {
    type: string
    sql: ${TABLE}.GST_SEG_SUFFIX ;;
  }

  dimension: gstin {
    type: string
    sql: ${TABLE}.GSTIN ;;
  }

  dimension: insur_amt {
    type: number
    sql: ${TABLE}.INSUR_AMT ;;
  }

  dimension: insur_expd_dt {
    type: number
    sql: ${TABLE}.INSUR_EXPD_DT ;;
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

  dimension: tan_no {
    type: string
    sql: ${TABLE}.TAN_NO ;;
  }

  dimension: unlinked_prnt {
    type: string
    sql: ${TABLE}.UNLINKED_PRNT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
