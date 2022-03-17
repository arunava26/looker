# The name of this view in Looker is "Vsam Tbxmchg"
view: vsam_tbxmchg {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXMCHG`
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

  dimension: tb_mchg_auto_line_qty {
    type: string
    sql: ${TABLE}.TB_MCHG_AUTO_LINE_QTY ;;
  }

  dimension: tb_mchg_charge_sw {
    type: string
    sql: ${TABLE}.TB_MCHG_CHARGE_SW ;;
  }

  dimension: tb_mchg_co_code {
    type: string
    sql: ${TABLE}.TB_MCHG_CO_CODE ;;
  }

  dimension: tb_mchg_code {
    type: string
    sql: ${TABLE}.TB_MCHG_CODE ;;
  }

  dimension: tb_mchg_desc {
    type: string
    sql: ${TABLE}.TB_MCHG_DESC ;;
  }

  dimension: tb_mchg_fixed_amt {
    type: number
    sql: ${TABLE}.TB_MCHG_FIXED_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_mchg_fixed_amt {
    type: sum
    sql: ${tb_mchg_fixed_amt} ;;
  }

  measure: average_tb_mchg_fixed_amt {
    type: average
    sql: ${tb_mchg_fixed_amt} ;;
  }

  dimension: tb_mchg_gl_account_number_1 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCOUNT_NUMBER_1 ;;
  }

  dimension: tb_mchg_gl_account_number_2 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCOUNT_NUMBER_2 ;;
  }

  dimension: tb_mchg_gl_account_number_3 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCOUNT_NUMBER_3 ;;
  }

  dimension: tb_mchg_gl_account_number_4 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCOUNT_NUMBER_4 ;;
  }

  dimension: tb_mchg_gl_account_number_5 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCOUNT_NUMBER_5 ;;
  }

  dimension: tb_mchg_gl_account_number_6 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCOUNT_NUMBER_6 ;;
  }

  dimension: tb_mchg_gl_account_number_7 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCOUNT_NUMBER_7 ;;
  }

  dimension: tb_mchg_gl_account_number_8 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCOUNT_NUMBER_8 ;;
  }

  dimension: tb_mchg_gl_acct_dr_cr_flag_1 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCT_DR_CR_FLAG_1 ;;
  }

  dimension: tb_mchg_gl_acct_dr_cr_flag_2 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCT_DR_CR_FLAG_2 ;;
  }

  dimension: tb_mchg_gl_acct_dr_cr_flag_3 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCT_DR_CR_FLAG_3 ;;
  }

  dimension: tb_mchg_gl_acct_dr_cr_flag_4 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCT_DR_CR_FLAG_4 ;;
  }

  dimension: tb_mchg_gl_acct_dr_cr_flag_5 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCT_DR_CR_FLAG_5 ;;
  }

  dimension: tb_mchg_gl_acct_dr_cr_flag_6 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCT_DR_CR_FLAG_6 ;;
  }

  dimension: tb_mchg_gl_acct_dr_cr_flag_7 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCT_DR_CR_FLAG_7 ;;
  }

  dimension: tb_mchg_gl_acct_dr_cr_flag_8 {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCT_DR_CR_FLAG_8 ;;
  }

  dimension: tb_mchg_gl_accum_sw {
    type: string
    sql: ${TABLE}.TB_MCHG_GL_ACCUM_SW ;;
  }

  dimension: tb_mchg_iva_tax_code {
    type: string
    sql: ${TABLE}.TB_MCHG_IVA_TAX_CODE ;;
  }

  dimension_group: tb_mchg_last_chg_ts {
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
    sql: ${TABLE}.TB_MCHG_LAST_CHG_TS ;;
  }

  dimension: tb_mchg_margin_sw {
    type: string
    sql: ${TABLE}.TB_MCHG_MARGIN_SW ;;
  }

  dimension: tb_mchg_pct {
    type: number
    sql: ${TABLE}.TB_MCHG_PCT ;;
  }

  dimension: tb_mchg_slscst_sw {
    type: string
    sql: ${TABLE}.TB_MCHG_SLSCST_SW ;;
  }

  dimension: tb_mchg_tax_code {
    type: string
    sql: ${TABLE}.TB_MCHG_TAX_CODE ;;
  }

  dimension: tb_mchg_tes_code {
    type: string
    sql: ${TABLE}.TB_MCHG_TES_CODE ;;
  }

  dimension: tb_mchg_vat_tax_code {
    type: string
    sql: ${TABLE}.TB_MCHG_VAT_TAX_CODE ;;
  }

  dimension: tb_mchg_vtx_prod_cd {
    type: string
    sql: ${TABLE}.TB_MCHG_VTX_PROD_CD ;;
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
