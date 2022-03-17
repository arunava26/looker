# The name of this view in Looker is "Vsam Tbxterms"
view: vsam_tbxterms {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXTERMS`
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

  dimension: tb_terms_allow_inv_split {
    type: string
    sql: ${TABLE}.TB_TERMS_ALLOW_INV_SPLIT ;;
  }

  dimension: tb_terms_bypass_credit_hold_sw {
    type: string
    sql: ${TABLE}.TB_TERMS_BYPASS_CREDIT_HOLD_SW ;;
  }

  dimension: tb_terms_co {
    type: string
    sql: ${TABLE}.TB_TERMS_CO ;;
  }

  dimension: tb_terms_code {
    type: number
    sql: ${TABLE}.TB_TERMS_CODE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_terms_code {
    type: sum
    sql: ${tb_terms_code} ;;
  }

  measure: average_tb_terms_code {
    type: average
    sql: ${tb_terms_code} ;;
  }

  dimension: tb_terms_date_ind {
    type: string
    sql: ${TABLE}.TB_TERMS_DATE_IND ;;
  }

  dimension: tb_terms_description {
    type: string
    sql: ${TABLE}.TB_TERMS_DESCRIPTION ;;
  }

  dimension: tb_terms_dirdeb_credt_days {
    type: number
    sql: ${TABLE}.TB_TERMS_DIRDEB_CREDT_DAYS ;;
  }

  dimension: tb_terms_disc_chrg_pct {
    type: number
    sql: ${TABLE}.TB_TERMS_DISC_CHRG_PCT ;;
  }

  dimension: tb_terms_disc_days {
    type: number
    sql: ${TABLE}.TB_TERMS_DISC_DAYS ;;
  }

  dimension: tb_terms_disc_pct {
    type: number
    sql: ${TABLE}.TB_TERMS_DISC_PCT ;;
  }

  dimension: tb_terms_draft_debit_ind {
    type: string
    sql: ${TABLE}.TB_TERMS_DRAFT_DEBIT_IND ;;
  }

  dimension: tb_terms_due_days {
    type: number
    sql: ${TABLE}.TB_TERMS_DUE_DAYS ;;
  }

  dimension: tb_terms_extended_days {
    type: number
    sql: ${TABLE}.TB_TERMS_EXTENDED_DAYS ;;
  }

  dimension: tb_terms_fixed_date_date {
    type: number
    sql: ${TABLE}.TB_TERMS_FIXED_DATE_DATE ;;
  }

  dimension: tb_terms_interval {
    type: number
    sql: ${TABLE}.TB_TERMS_INTERVAL ;;
  }

  dimension: tb_terms_interval_code {
    type: string
    sql: ${TABLE}.TB_TERMS_INTERVAL_CODE ;;
  }

  dimension_group: tb_terms_last_chg_ts {
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
    sql: ${TABLE}.TB_TERMS_LAST_CHG_TS ;;
  }

  dimension: tb_terms_mchg_code {
    type: string
    sql: ${TABLE}.TB_TERMS_MCHG_CODE ;;
  }

  dimension: tb_terms_next_terms {
    type: number
    sql: ${TABLE}.TB_TERMS_NEXT_TERMS ;;
  }

  dimension: tb_terms_no_of_payments {
    type: number
    sql: ${TABLE}.TB_TERMS_NO_OF_PAYMENTS ;;
  }

  dimension: tb_terms_prox_cutoff {
    type: number
    sql: ${TABLE}.TB_TERMS_PROX_CUTOFF ;;
  }

  dimension: tb_terms_prox_disc_day {
    type: number
    sql: ${TABLE}.TB_TERMS_PROX_DISC_DAY ;;
  }

  dimension: tb_terms_prox_due_day {
    type: number
    sql: ${TABLE}.TB_TERMS_PROX_DUE_DAY ;;
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
