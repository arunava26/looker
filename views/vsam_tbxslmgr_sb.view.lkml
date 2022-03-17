# The name of this view in Looker is "Vsam Tbxslmgr Sb"
view: vsam_tbxslmgr_sb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXSLMGR_SB`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Company" in Explore.

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: east_west_flag {
    type: string
    sql: ${TABLE}.EAST_WEST_FLAG ;;
  }

  dimension: mgr_type {
    type: string
    sql: ${TABLE}.MGR_TYPE ;;
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

  dimension: payee_nbr {
    type: string
    sql: ${TABLE}.PAYEE_NBR ;;
  }

  dimension: phone_ext {
    type: string
    sql: ${TABLE}.PHONE_EXT ;;
  }

  dimension: slmgr_code {
    type: string
    sql: ${TABLE}.SLMGR_CODE ;;
  }

  dimension: slmgr_name {
    type: string
    sql: ${TABLE}.SLMGR_NAME ;;
  }

  dimension: slmgr_phone {
    type: string
    sql: ${TABLE}.SLMGR_PHONE ;;
  }

  dimension: ssn_unused {
    type: string
    sql: ${TABLE}.SSN_UNUSED ;;
  }

  dimension: team_ext {
    type: string
    sql: ${TABLE}.TEAM_EXT ;;
  }

  measure: count {
    type: count
    drill_fields: [slmgr_name]
  }
}
