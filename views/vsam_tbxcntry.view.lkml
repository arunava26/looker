# The name of this view in Looker is "Vsam Tbxcntry"
view: vsam_tbxcntry {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCNTRY`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Correl ID" in Explore.

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_isrt_ts {
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
    sql: ${TABLE}.ODS_ISRT_TS ;;
  }

  dimension_group: ods_upd_ts {
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
    sql: ${TABLE}.ODS_UPD_TS ;;
  }

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: tb_cntry_co {
    type: string
    sql: ${TABLE}.TB_CNTRY_CO ;;
  }

  dimension: tb_cntry_code {
    type: string
    sql: ${TABLE}.TB_CNTRY_CODE ;;
  }

  dimension: tb_cntry_description {
    type: string
    sql: ${TABLE}.TB_CNTRY_DESCRIPTION ;;
  }

  dimension_group: tb_cntry_last_chg_ts {
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
    sql: ${TABLE}.TB_CNTRY_LAST_CHG_TS ;;
  }

  dimension: tb_cntry_remote_freight_fee {
    type: number
    sql: ${TABLE}.TB_CNTRY_REMOTE_FREIGHT_FEE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_cntry_remote_freight_fee {
    type: sum
    sql: ${tb_cntry_remote_freight_fee} ;;
  }

  measure: average_tb_cntry_remote_freight_fee {
    type: average
    sql: ${tb_cntry_remote_freight_fee} ;;
  }

  dimension: tb_cntry_ship_to_code {
    type: number
    sql: ${TABLE}.TB_CNTRY_SHIP_TO_CODE ;;
  }

  dimension: tb_cntry_ups_frt_rev_type {
    type: string
    sql: ${TABLE}.TB_CNTRY_UPS_FRT_REV_TYPE ;;
  }

  dimension: tb_cntry_ups_iso_code {
    type: string
    sql: ${TABLE}.TB_CNTRY_UPS_ISO_CODE ;;
  }

  dimension: tb_domestic_country_sw {
    type: string
    sql: ${TABLE}.TB_DOMESTIC_COUNTRY_SW ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
