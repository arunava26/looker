# The name of this view in Looker is "Vsam Tbxslmgr"
view: vsam_tbxslmgr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXSLMGR`
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

  dimension: tb_slmgr_co {
    type: string
    sql: ${TABLE}.TB_SLMGR_CO ;;
  }

  dimension: tb_slmgr_code {
    type: string
    sql: ${TABLE}.TB_SLMGR_CODE ;;
  }

  dimension: tb_slmgr_east_west_flag {
    type: string
    sql: ${TABLE}.TB_SLMGR_EAST_WEST_FLAG ;;
  }

  dimension: tb_slmgr_mgr_type {
    type: string
    sql: ${TABLE}.TB_SLMGR_MGR_TYPE ;;
  }

  dimension: tb_slmgr_name {
    type: string
    sql: ${TABLE}.TB_SLMGR_NAME ;;
  }

  dimension: tb_slmgr_payee_nbr {
    type: string
    sql: ${TABLE}.TB_SLMGR_PAYEE_NBR ;;
  }

  dimension: tb_slmgr_phone {
    type: string
    sql: ${TABLE}.TB_SLMGR_PHONE ;;
  }

  dimension: tb_slmgr_phone_ext {
    type: string
    sql: ${TABLE}.TB_SLMGR_PHONE_EXT ;;
  }

  dimension: tb_slmgr_social_security {
    type: string
    sql: ${TABLE}.TB_SLMGR_SOCIAL_SECURITY ;;
  }

  dimension: tb_slmgr_team_ext {
    type: string
    sql: ${TABLE}.TB_SLMGR_TEAM_EXT ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [tb_slmgr_name]
  }
}
