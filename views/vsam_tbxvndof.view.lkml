# The name of this view in Looker is "Vsam Tbxvndof"
view: vsam_tbxvndof {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXVNDOF`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "API Schema Name" in Explore.

  dimension: api_schema_name {
    type: string
    sql: ${TABLE}.API_SCHEMA_NAME ;;
  }

  dimension: api_sub_schema {
    type: string
    sql: ${TABLE}.API_SUB_SCHEMA ;;
  }

  dimension: api_trigger_sw {
    type: string
    sql: ${TABLE}.API_TRIGGER_SW ;;
  }

  dimension: apple_nspart_sw {
    type: string
    sql: ${TABLE}.APPLE_NSPART_SW ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.COMPANY_CODE ;;
  }

  dimension: compat_check {
    type: string
    sql: ${TABLE}.COMPAT_CHECK ;;
  }

  dimension: consolidate_poc_sw {
    type: string
    sql: ${TABLE}.CONSOLIDATE_POC_SW ;;
  }

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_chg_ts {
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
    sql: ${TABLE}.LAST_CHG_TS ;;
  }

  dimension: nbr_of_seconday_serl {
    type: number
    sql: ${TABLE}.NBR_OF_SECONDAY_SERL ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_nbr_of_seconday_serl {
    type: sum
    sql: ${nbr_of_seconday_serl} ;;
  }

  measure: average_nbr_of_seconday_serl {
    type: average
    sql: ${nbr_of_seconday_serl} ;;
  }

  dimension: newdst_aftshp9_sw {
    type: string
    sql: ${TABLE}.NEWDST_AFTSHP9_SW ;;
  }

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

  dimension: send_pos_sw {
    type: string
    sql: ${TABLE}.SEND_POS_SW ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  dimension: updt_esd_sw {
    type: string
    sql: ${TABLE}.UPDT_ESD_SW ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
  }

  dimension: vendor_code {
    type: string
    sql: ${TABLE}.VENDOR_CODE ;;
  }

  dimension: warr_days_past {
    type: number
    sql: ${TABLE}.WARR_DAYS_PAST ;;
  }

  dimension: warranty_vendor_sw {
    type: string
    sql: ${TABLE}.WARRANTY_VENDOR_SW ;;
  }

  measure: count {
    type: count
    drill_fields: [api_schema_name]
  }
}
