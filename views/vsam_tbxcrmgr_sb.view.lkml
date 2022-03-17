# The name of this view in Looker is "Vsam Tbxcrmgr Sb"
view: vsam_tbxcrmgr_sb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCRMGR_SB`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acct Group" in Explore.

  dimension: acct_group {
    type: string
    sql: ${TABLE}.ACCT_GROUP ;;
  }

  dimension: addl_dest_flag {
    type: string
    sql: ${TABLE}.ADDL_DEST_FLAG ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: crmgr_code {
    type: string
    sql: ${TABLE}.CRMGR_CODE ;;
  }

  dimension: crmgr_level {
    type: string
    sql: ${TABLE}.CRMGR_LEVEL ;;
  }

  dimension: crmgr_name {
    type: string
    sql: ${TABLE}.CRMGR_NAME ;;
  }

  dimension: crmgr_type {
    type: string
    sql: ${TABLE}.CRMGR_TYPE ;;
  }

  dimension: east_west_flag {
    type: string
    sql: ${TABLE}.EAST_WEST_FLAG ;;
  }

  dimension: interest_waive_sw {
    type: string
    sql: ${TABLE}.INTEREST_WAIVE_SW ;;
  }

  dimension: nodsp_flag {
    type: string
    sql: ${TABLE}.NODSP_FLAG ;;
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

  dimension: pct_over_limit {
    type: number
    sql: ${TABLE}.PCT_OVER_LIMIT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pct_over_limit {
    type: sum
    sql: ${pct_over_limit} ;;
  }

  measure: average_pct_over_limit {
    type: average
    sql: ${pct_over_limit} ;;
  }

  dimension: phone_ext {
    type: string
    sql: ${TABLE}.PHONE_EXT ;;
  }

  dimension: special_acct {
    type: string
    sql: ${TABLE}.SPECIAL_ACCT ;;
  }

  measure: count {
    type: count
    drill_fields: [crmgr_name]
  }
}
