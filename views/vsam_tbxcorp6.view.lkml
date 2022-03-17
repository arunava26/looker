# The name of this view in Looker is "Vsam Tbxcorp6"
view: vsam_tbxcorp6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCORP6`
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

  dimension: tb_cpo6_account_stmt_avail_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ACCOUNT_STMT_AVAIL_SW ;;
  }

  dimension: tb_cpo6_acct_stmt_sup_inv_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ACCT_STMT_SUP_INV_SW ;;
  }

  dimension: tb_cpo6_add_free_frt_desc_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ADD_FREE_FRT_DESC_SW ;;
  }

  dimension: tb_cpo6_allow_dup_ser_nbr_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ALLOW_DUP_SER_NBR_SW ;;
  }

  dimension: tb_cpo6_allow_eu_non_ss_ord_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ALLOW_EU_NON_SS_ORD_SW ;;
  }

  dimension: tb_cpo6_allow_mixmatch_bund_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ALLOW_MIXMATCH_BUND_SW ;;
  }

  dimension: tb_cpo6_allow_neg_margin_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ALLOW_NEG_MARGIN_SW ;;
  }

  dimension: tb_cpo6_allow_spec_ord_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ALLOW_SPEC_ORD_SW ;;
  }

  dimension: tb_cpo6_altsales_structures_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ALTSALES_STRUCTURES_SW ;;
  }

  dimension: tb_cpo6_ar_openitem_max {
    type: number
    sql: ${TABLE}.TB_CPO6_AR_OPENITEM_MAX ;;
  }

  dimension: tb_cpo6_arlopn_xref_enable_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ARLOPN_XREF_ENABLE_SW ;;
  }

  dimension: tb_cpo6_bbs_pricefile_days {
    type: number
    sql: ${TABLE}.TB_CPO6_BBS_PRICEFILE_DAYS ;;
  }

  dimension: tb_cpo6_bulk_credit_rel_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_BULK_CREDIT_REL_SW ;;
  }

  dimension: tb_cpo6_carrier_validation_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_CARRIER_VALIDATION_SW ;;
  }

  dimension: tb_cpo6_chamber_of_commerce_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_CHAMBER_OF_COMMERCE_SW ;;
  }

  dimension: tb_cpo6_comm_var_pct {
    type: number
    sql: ${TABLE}.TB_CPO6_COMM_VAR_PCT ;;
  }

  dimension: tb_cpo6_company_code {
    type: string
    sql: ${TABLE}.TB_CPO6_COMPANY_CODE ;;
  }

  dimension: tb_cpo6_cons_inv_retntn_period {
    type: number
    sql: ${TABLE}.TB_CPO6_CONS_INV_RETNTN_PERIOD ;;
  }

  dimension: tb_cpo6_cust_group_keep_days {
    type: number
    sql: ${TABLE}.TB_CPO6_CUST_GROUP_KEEP_DAYS ;;
  }

  dimension: tb_cpo6_default_bankslip_code {
    type: string
    sql: ${TABLE}.TB_CPO6_DEFAULT_BANKSLIP_CODE ;;
  }

  dimension: tb_cpo6_el_vendor_ret_fax_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_EL_VENDOR_RET_FAX_SW ;;
  }

  dimension: tb_cpo6_electronic_pick_tic_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ELECTRONIC_PICK_TIC_SW ;;
  }

  dimension: tb_cpo6_email_screen_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_EMAIL_SCREEN_SW ;;
  }

  dimension: tb_cpo6_enhanced_ecom_rlse_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_ENHANCED_ECOM_RLSE_SW ;;
  }

  dimension: tb_cpo6_eta_base_date {
    type: string
    sql: ${TABLE}.TB_CPO6_ETA_BASE_DATE ;;
  }

  dimension: tb_cpo6_eta_beyond_days {
    type: number
    sql: ${TABLE}.TB_CPO6_ETA_BEYOND_DAYS ;;
  }

  dimension: tb_cpo6_frgn_curr_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_FRGN_CURR_SW ;;
  }

  dimension: tb_cpo6_gcoa_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_GCOA_SW ;;
  }

  dimension: tb_cpo6_gl_corp_desc_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_GL_CORP_DESC_SW ;;
  }

  dimension: tb_cpo6_include_tax_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_INCLUDE_TAX_SW ;;
  }

  dimension_group: tb_cpo6_last_chg_ts {
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
    sql: ${TABLE}.TB_CPO6_LAST_CHG_TS ;;
  }

  dimension: tb_cpo6_min_neg_floor_pct {
    type: number
    sql: ${TABLE}.TB_CPO6_MIN_NEG_FLOOR_PCT ;;
  }

  dimension: tb_cpo6_misc_security_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_MISC_SECURITY_SW ;;
  }

  dimension: tb_cpo6_mp255_tax_disc_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_MP255_TAX_DISC_SW ;;
  }

  dimension: tb_cpo6_multiple_view_rsm {
    type: string
    sql: ${TABLE}.TB_CPO6_MULTIPLE_VIEW_RSM ;;
  }

  dimension: tb_cpo6_negative_comm_check_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_NEGATIVE_COMM_CHECK_SW ;;
  }

  dimension: tb_cpo6_po_br_a_cnt {
    type: number
    sql: ${TABLE}.TB_CPO6_PO_BR_A_CNT ;;
  }

  dimension: tb_cpo6_po_br_n_cnt {
    type: number
    sql: ${TABLE}.TB_CPO6_PO_BR_N_CNT ;;
  }

  dimension: tb_cpo6_po_br_r_cnt {
    type: number
    sql: ${TABLE}.TB_CPO6_PO_BR_R_CNT ;;
  }

  dimension: tb_cpo6_po_dss_retention {
    type: number
    sql: ${TABLE}.TB_CPO6_PO_DSS_RETENTION ;;
  }

  dimension: tb_cpo6_po_fax_eta_dt_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_PO_FAX_ETA_DT_SW ;;
  }

  dimension: tb_cpo6_po_ld_days_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_PO_LD_DAYS_SW ;;
  }

  dimension: tb_cpo6_pymt_default_wire_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_PYMT_DEFAULT_WIRE_SW ;;
  }

  dimension: tb_cpo6_reverse_vat_amount {
    type: number
    sql: ${TABLE}.TB_CPO6_REVERSE_VAT_AMOUNT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_cpo6_reverse_vat_amount {
    type: sum
    sql: ${tb_cpo6_reverse_vat_amount} ;;
  }

  measure: average_tb_cpo6_reverse_vat_amount {
    type: average
    sql: ${tb_cpo6_reverse_vat_amount} ;;
  }

  dimension: tb_cpo6_reverse_vat_applied_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_REVERSE_VAT_APPLIED_SW ;;
  }

  dimension: tb_cpo6_rma_billed_today_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_RMA_BILLED_TODAY_SW ;;
  }

  dimension: tb_cpo6_rslr_eu_edit_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_RSLR_EU_EDIT_SW ;;
  }

  dimension: tb_cpo6_rslr_sfx_edit_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_RSLR_SFX_EDIT_SW ;;
  }

  dimension: tb_cpo6_sales_eta_date_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_SALES_ETA_DATE_SW ;;
  }

  dimension: tb_cpo6_ss_noneg_bypass_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_SS_NONEG_BYPASS_SW ;;
  }

  dimension: tb_cpo6_stop_annexo_print_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_STOP_ANNEXO_PRINT_SW ;;
  }

  dimension: tb_cpo6_tac4_vendor_returns_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_TAC4_VENDOR_RETURNS_SW ;;
  }

  dimension: tb_cpo6_tds_corp_wthld_pct {
    type: number
    sql: ${TABLE}.TB_CPO6_TDS_CORP_WTHLD_PCT ;;
  }

  dimension: tb_cpo6_tds_non_corp_wthld_pct {
    type: number
    sql: ${TABLE}.TB_CPO6_TDS_NON_CORP_WTHLD_PCT ;;
  }

  dimension: tb_cpo6_tds_withheld_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_TDS_WITHHELD_SW ;;
  }

  dimension: tb_cpo6_update_eta_in_batch_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_UPDATE_ETA_IN_BATCH_SW ;;
  }

  dimension: tb_cpo6_volumetric_freight_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_VOLUMETRIC_FREIGHT_SW ;;
  }

  dimension: tb_cpo6_warehouse_alert_sw {
    type: string
    sql: ${TABLE}.TB_CPO6_WAREHOUSE_ALERT_SW ;;
  }

  dimension: tb_cpo6_warranty_days {
    type: number
    sql: ${TABLE}.TB_CPO6_WARRANTY_DAYS ;;
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
