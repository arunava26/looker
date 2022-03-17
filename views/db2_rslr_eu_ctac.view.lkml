# The name of this view in Looker is "Db2 Rslr Eu Ctac"
view: db2_rslr_eu_ctac {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.DB2_RSLR_EU_CTAC`
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

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: eu_ctac_emal_id {
    type: string
    sql: ${TABLE}.EU_CTAC_EMAL_ID ;;
  }

  dimension: eu_ctac_ext_nbr {
    type: string
    sql: ${TABLE}.EU_CTAC_EXT_NBR ;;
  }

  dimension: eu_ctac_fax_nbr {
    type: string
    sql: ${TABLE}.EU_CTAC_FAX_NBR ;;
  }

  dimension: eu_ctac_nam {
    type: string
    sql: ${TABLE}.EU_CTAC_NAM ;;
  }

  dimension: eu_ctac_phn_nbr {
    type: string
    sql: ${TABLE}.EU_CTAC_PHN_NBR ;;
  }

  dimension: eu_ctac_ttl_nam {
    type: string
    sql: ${TABLE}.EU_CTAC_TTL_NAM ;;
  }

  dimension: inact_flg {
    type: string
    sql: ${TABLE}.INACT_FLG ;;
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

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: rslr_eu_ctac_id {
    type: number
    sql: ${TABLE}.RSLR_EU_CTAC_ID ;;
  }

  dimension: rslr_eu_id {
    type: number
    sql: ${TABLE}.RSLR_EU_ID ;;
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
