# The name of this view in Looker is "Vsam Culvna Auth Vend A"
view: vsam_culvna_auth_vend_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_CULVNA_AUTH_VEND_A`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Atas Br Nbr" in Explore.

  dimension: atas_br_nbr {
    type: string
    sql: ${TABLE}.ATAS_BR_NBR ;;
  }

  dimension: atas_company {
    type: string
    sql: ${TABLE}.ATAS_COMPANY ;;
  }

  dimension: atas_cust_nbr {
    type: string
    sql: ${TABLE}.ATAS_CUST_NBR ;;
  }

  dimension: atas_cust_suffix {
    type: string
    sql: ${TABLE}.ATAS_CUST_SUFFIX ;;
  }

  dimension: atas_expire_date {
    type: number
    sql: ${TABLE}.ATAS_EXPIRE_DATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_atas_expire_date {
    type: sum
    sql: ${atas_expire_date} ;;
  }

  measure: average_atas_expire_date {
    type: average
    sql: ${atas_expire_date} ;;
  }

  dimension: atas_last_chg_date {
    type: number
    sql: ${TABLE}.ATAS_LAST_CHG_DATE ;;
  }

  dimension: atas_opid {
    type: string
    sql: ${TABLE}.ATAS_OPID ;;
  }

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

  dimension: restrict_code {
    type: string
    sql: ${TABLE}.RESTRICT_CODE ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
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
