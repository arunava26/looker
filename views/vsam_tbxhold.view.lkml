# The name of this view in Looker is "Vsam Tbxhold"
view: vsam_tbxhold {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXHOLD`
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

  dimension: tb_hld_code {
    type: string
    sql: ${TABLE}.TB_HLD_CODE ;;
  }

  dimension: tb_hld_company {
    type: string
    sql: ${TABLE}.TB_HLD_COMPANY ;;
  }

  dimension: tb_hld_delta_gm {
    type: string
    sql: ${TABLE}.TB_HLD_DELTA_GM ;;
  }

  dimension: tb_hld_description {
    type: string
    sql: ${TABLE}.TB_HLD_DESCRIPTION ;;
  }

  dimension: tb_hld_gm_ind {
    type: string
    sql: ${TABLE}.TB_HLD_GM_IND ;;
  }

  dimension_group: tb_hld_last_chg_ts {
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
    sql: ${TABLE}.TB_HLD_LAST_CHG_TS ;;
  }

  dimension: tb_hld_min_gm {
    type: string
    sql: ${TABLE}.TB_HLD_MIN_GM ;;
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
