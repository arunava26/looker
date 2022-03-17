# The name of this view in Looker is "Db2 Ww Company"
view: db2_ww_company {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.DB2_WW_COMPANY`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bus Regn Cd" in Explore.

  dimension: bus_regn_cd {
    type: string
    sql: ${TABLE}.BUS_REGN_CD ;;
  }

  dimension: cntry_cd {
    type: string
    sql: ${TABLE}.CNTRY_CD ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: co_nam {
    type: string
    sql: ${TABLE}.CO_NAM ;;
  }

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  dimension: last_upd_id {
    type: string
    sql: ${TABLE}.LAST_UPD_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_upd_ts {
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
    sql: ${TABLE}.LAST_UPD_TS ;;
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

  dimension: partition_nbr {
    type: number
    sql: ${TABLE}.PARTITION_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_partition_nbr {
    type: sum
    sql: ${partition_nbr} ;;
  }

  measure: average_partition_nbr {
    type: average
    sql: ${partition_nbr} ;;
  }

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
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
