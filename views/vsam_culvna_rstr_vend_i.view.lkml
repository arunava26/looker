# The name of this view in Looker is "Vsam Culvna Rstr Vend I"
view: vsam_culvna_rstr_vend_i {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_CULVNA_RSTR_VEND_I`
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

  dimension: cust_suffix {
    type: string
    sql: ${TABLE}.CUST_SUFFIX ;;
  }

  dimension: end_user_va_sw {
    type: string
    sql: ${TABLE}.END_USER_VA_SW ;;
  }

  dimension: last_chg_date {
    type: number
    sql: ${TABLE}.LAST_CHG_DATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_last_chg_date {
    type: sum
    sql: ${last_chg_date} ;;
  }

  measure: average_last_chg_date {
    type: average
    sql: ${last_chg_date} ;;
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

  dimension: opid {
    type: string
    sql: ${TABLE}.OPID ;;
  }

  dimension: primary_sw {
    type: string
    sql: ${TABLE}.PRIMARY_SW ;;
  }

  dimension: res_pn {
    type: string
    sql: ${TABLE}.RES_PN ;;
  }

  dimension: restrict_code {
    type: string
    sql: ${TABLE}.RESTRICT_CODE ;;
  }

  dimension: retain_auth_sw {
    type: string
    sql: ${TABLE}.RETAIN_AUTH_SW ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  dimension: stand_alone {
    type: string
    sql: ${TABLE}.STAND_ALONE ;;
  }

  dimension: suite {
    type: string
    sql: ${TABLE}.SUITE ;;
  }

  dimension: suite_counter {
    type: number
    sql: ${TABLE}.SUITE_COUNTER ;;
  }

  dimension: suite_counter_x {
    type: string
    sql: ${TABLE}.SUITE_COUNTER_X ;;
  }

  dimension: vend_cust_nbr {
    type: string
    sql: ${TABLE}.VEND_CUST_NBR ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.VENDOR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
