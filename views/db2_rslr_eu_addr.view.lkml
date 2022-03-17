# The name of this view in Looker is "Db2 Rslr Eu Addr"
view: db2_rslr_eu_addr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.DB2_RSLR_EU_ADDR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Addr Seq Nbr" in Explore.

  dimension: addr_seq_nbr {
    type: number
    sql: ${TABLE}.ADDR_SEQ_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_addr_seq_nbr {
    type: sum
    sql: ${addr_seq_nbr} ;;
  }

  measure: average_addr_seq_nbr {
    type: average
    sql: ${addr_seq_nbr} ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: city_nam {
    type: string
    sql: ${TABLE}.CITY_NAM ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  dimension: ctry_cd {
    type: string
    sql: ${TABLE}.CTRY_CD ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: eu_addr_1_txt {
    type: string
    sql: ${TABLE}.EU_ADDR_1_TXT ;;
  }

  dimension: eu_addr_2_txt {
    type: string
    sql: ${TABLE}.EU_ADDR_2_TXT ;;
  }

  dimension: eu_addr_3_txt {
    type: string
    sql: ${TABLE}.EU_ADDR_3_TXT ;;
  }

  dimension: inact_flg {
    type: string
    sql: ${TABLE}.INACT_FLG ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_actv_dt {
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
    sql: ${TABLE}.LAST_ACTV_DT ;;
  }

  dimension: last_upd_id {
    type: string
    sql: ${TABLE}.LAST_UPD_ID ;;
  }

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

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: post_cd {
    type: string
    sql: ${TABLE}.POST_CD ;;
  }

  dimension: rslr_eu_id {
    type: number
    sql: ${TABLE}.RSLR_EU_ID ;;
  }

  dimension: st_pvnc_cd {
    type: string
    sql: ${TABLE}.ST_PVNC_CD ;;
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
