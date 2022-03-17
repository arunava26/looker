# The name of this view in Looker is "Ref New Subcat"
view: ref_new_subcat {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.REF_NEW_SUBCAT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cat Cd" in Explore.

  dimension: cat_cd {
    type: string
    sql: ${TABLE}.CAT_CD ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  dimension: imcom_cat_desc {
    type: string
    sql: ${TABLE}.IMCOM_CAT_DESC ;;
  }

  dimension: imcom_subcat_desc {
    type: string
    sql: ${TABLE}.IMCOM_SUBCAT_DESC ;;
  }

  dimension: implse_cat_desc {
    type: string
    sql: ${TABLE}.IMPLSE_CAT_DESC ;;
  }

  dimension: implse_subcat_desc {
    type: string
    sql: ${TABLE}.IMPLSE_SUBCAT_DESC ;;
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

  dimension: subcat_cd {
    type: string
    sql: ${TABLE}.SUBCAT_CD ;;
  }

  dimension: subcat_nick1_nm {
    type: string
    sql: ${TABLE}.SUBCAT_NICK1_NM ;;
  }

  dimension: subcat_nick2_nm {
    type: string
    sql: ${TABLE}.SUBCAT_NICK2_NM ;;
  }

  dimension: subcat_nick3_nm {
    type: string
    sql: ${TABLE}.SUBCAT_NICK3_NM ;;
  }

  dimension: subcat_nick4_nm {
    type: string
    sql: ${TABLE}.SUBCAT_NICK4_NM ;;
  }

  dimension: subcat_nick5_nm {
    type: string
    sql: ${TABLE}.SUBCAT_NICK5_NM ;;
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
