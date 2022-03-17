# The name of this view in Looker is "Vsam Tbxcorp3"
view: vsam_tbxcorp3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCORP3`
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

  dimension: tb_cpo3_2_nd_tier_ord_val_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_2ND_TIER_ORD_VAL_SW ;;
  }

  dimension: tb_cpo3_895_line_in_batch_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_895_LINE_IN_BATCH_SW ;;
  }

  dimension: tb_cpo3_895_sec_check_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_895_SEC_CHECK_SW ;;
  }

  dimension: tb_cpo3_acop_best_pricing_ind {
    type: string
    sql: ${TABLE}.TB_CPO3_ACOP_BEST_PRICING_IND ;;
  }

  dimension: tb_cpo3_agency_pct {
    type: number
    sql: ${TABLE}.TB_CPO3_AGENCY_PCT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_cpo3_agency_pct {
    type: sum
    sql: ${tb_cpo3_agency_pct} ;;
  }

  measure: average_tb_cpo3_agency_pct {
    type: average
    sql: ${tb_cpo3_agency_pct} ;;
  }

  dimension: tb_cpo3_allow_chg_frt_out_p {
    type: string
    sql: ${TABLE}.TB_CPO3_ALLOW_CHG_FRT_OUT_P ;;
  }

  dimension: tb_cpo3_allow_chg_order_type_d {
    type: string
    sql: ${TABLE}.TB_CPO3_ALLOW_CHG_ORDER_TYPE_D ;;
  }

  dimension: tb_cpo3_apply_auto_mchg_line {
    type: string
    sql: ${TABLE}.TB_CPO3_APPLY_AUTO_MCHG_LINE ;;
  }

  dimension: tb_cpo3_apply_cost_uplift_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_APPLY_COST_UPLIFT_SW ;;
  }

  dimension: tb_cpo3_auto_bo_alloc_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_AUTO_BO_ALLOC_SW ;;
  }

  dimension: tb_cpo3_auto_vndr_db_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_AUTO_VNDR_DB_SW ;;
  }

  dimension: tb_cpo3_autorlse_min_amt {
    type: number
    sql: ${TABLE}.TB_CPO3_AUTORLSE_MIN_AMT ;;
  }

  dimension: tb_cpo3_bid_days_to_dele {
    type: number
    sql: ${TABLE}.TB_CPO3_BID_DAYS_TO_DELE ;;
  }

  dimension: tb_cpo3_br_has_zero_cost_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_BR_HAS_ZERO_COST_SW ;;
  }

  dimension: tb_cpo3_buysheet_wkly_sale_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_BUYSHEET_WKLY_SALE_SW ;;
  }

  dimension: tb_cpo3_calmst_db2_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_CALMST_DB2_SW ;;
  }

  dimension: tb_cpo3_caps_racf_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_CAPS_RACF_SW ;;
  }

  dimension: tb_cpo3_check_po_print_type_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_CHECK_PO_PRINT_TYPE_SW ;;
  }

  dimension: tb_cpo3_check_sku_sec_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_CHECK_SKU_SEC_SW ;;
  }

  dimension: tb_cpo3_company_code {
    type: string
    sql: ${TABLE}.TB_CPO3_COMPANY_CODE ;;
  }

  dimension: tb_cpo3_component_ih_po_ind_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_COMPONENT_IH_PO_IND_SW ;;
  }

  dimension: tb_cpo3_component_ih_used_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_COMPONENT_IH_USED_SW ;;
  }

  dimension: tb_cpo3_components_def_rtn_br {
    type: string
    sql: ${TABLE}.TB_CPO3_COMPONENTS_DEF_RTN_BR ;;
  }

  dimension: tb_cpo3_components_default_br {
    type: string
    sql: ${TABLE}.TB_CPO3_COMPONENTS_DEFAULT_BR ;;
  }

  dimension: tb_cpo3_components_default_co {
    type: string
    sql: ${TABLE}.TB_CPO3_COMPONENTS_DEFAULT_CO ;;
  }

  dimension: tb_cpo3_consolidate_selling_br {
    type: string
    sql: ${TABLE}.TB_CPO3_CONSOLIDATE_SELLING_BR ;;
  }

  dimension: tb_cpo3_cslmst_purge_days {
    type: number
    sql: ${TABLE}.TB_CPO3_CSLMST_PURGE_DAYS ;;
  }

  dimension: tb_cpo3_cust_def_ship_from_co {
    type: string
    sql: ${TABLE}.TB_CPO3_CUST_DEF_SHIP_FROM_CO ;;
  }

  dimension: tb_cpo3_default_config_br_comp {
    type: string
    sql: ${TABLE}.TB_CPO3_DEFAULT_CONFIG_BR_COMP ;;
  }

  dimension: tb_cpo3_default_config_br_ih {
    type: string
    sql: ${TABLE}.TB_CPO3_DEFAULT_CONFIG_BR_IH ;;
  }

  dimension: tb_cpo3_direct_updt_cost_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_DIRECT_UPDT_COST_SW ;;
  }

  dimension: tb_cpo3_edi_baserate_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_EDI_BASERATE_SW ;;
  }

  dimension: tb_cpo3_epod_days_pst_due_from {
    type: number
    sql: ${TABLE}.TB_CPO3_EPOD_DAYS_PST_DUE_FROM ;;
  }

  dimension: tb_cpo3_epod_days_pst_due_to {
    type: number
    sql: ${TABLE}.TB_CPO3_EPOD_DAYS_PST_DUE_TO ;;
  }

  dimension: tb_cpo3_extra_desc_limit {
    type: number
    sql: ${TABLE}.TB_CPO3_EXTRA_DESC_LIMIT ;;
  }

  dimension: tb_cpo3_frn_tax_at_line_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_FRN_TAX_AT_LINE_SW ;;
  }

  dimension: tb_cpo3_frt_limit_amt {
    type: number
    sql: ${TABLE}.TB_CPO3_FRT_LIMIT_AMT ;;
  }

  dimension: tb_cpo3_icp031_sec_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_ICP031_SEC_SW ;;
  }

  dimension: tb_cpo3_ih_default_br {
    type: string
    sql: ${TABLE}.TB_CPO3_IH_DEFAULT_BR ;;
  }

  dimension: tb_cpo3_ih_default_co {
    type: string
    sql: ${TABLE}.TB_CPO3_IH_DEFAULT_CO ;;
  }

  dimension: tb_cpo3_ih_default_rtn_br {
    type: string
    sql: ${TABLE}.TB_CPO3_IH_DEFAULT_RTN_BR ;;
  }

  dimension: tb_cpo3_ih_physical_cntry {
    type: string
    sql: ${TABLE}.TB_CPO3_IH_PHYSICAL_CNTRY ;;
  }

  dimension: tb_cpo3_iva_nonreg_rate {
    type: number
    sql: ${TABLE}.TB_CPO3_IVA_NONREG_RATE ;;
  }

  dimension: tb_cpo3_iva_reg_rate {
    type: number
    sql: ${TABLE}.TB_CPO3_IVA_REG_RATE ;;
  }

  dimension: tb_cpo3_keep_cu_addr_info_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_KEEP_CU_ADDR_INFO_SW ;;
  }

  dimension: tb_cpo3_kwhse_db2_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_KWHSE_DB2_SW ;;
  }

  dimension_group: tb_cpo3_last_chg_ts {
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
    sql: ${TABLE}.TB_CPO3_LAST_CHG_TS ;;
  }

  dimension: tb_cpo3_lent_inventory_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_LENT_INVENTORY_SW ;;
  }

  dimension: tb_cpo3_log_order_stat_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_LOG_ORDER_STAT_SW ;;
  }

  dimension: tb_cpo3_main_check_sec_loc {
    type: string
    sql: ${TABLE}.TB_CPO3_MAIN_CHECK_SEC_LOC ;;
  }

  dimension: tb_cpo3_min_margin_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_MIN_MARGIN_SW ;;
  }

  dimension: tb_cpo3_min_order_chrg_amt {
    type: number
    sql: ${TABLE}.TB_CPO3_MIN_ORDER_CHRG_AMT ;;
  }

  dimension: tb_cpo3_min_order_limit {
    type: number
    sql: ${TABLE}.TB_CPO3_MIN_ORDER_LIMIT ;;
  }

  dimension: tb_cpo3_multiple_order_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_MULTIPLE_ORDER_SW ;;
  }

  dimension: tb_cpo3_no_whse_no_stocks_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_NO_WHSE_NO_STOCKS_SW ;;
  }

  dimension: tb_cpo3_ord_chr3_alpha_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_ORD_CHR3_ALPHA_SW ;;
  }

  dimension: tb_cpo3_ord_chr5_alpha_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_ORD_CHR5_ALPHA_SW ;;
  }

  dimension: tb_cpo3_order_price_vat_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_ORDER_PRICE_VAT_SW ;;
  }

  dimension: tb_cpo3_orig_selling_br {
    type: string
    sql: ${TABLE}.TB_CPO3_ORIG_SELLING_BR ;;
  }

  dimension: tb_cpo3_orig_selling_co {
    type: string
    sql: ${TABLE}.TB_CPO3_ORIG_SELLING_CO ;;
  }

  dimension: tb_cpo3_pdc_peb_retain_days {
    type: number
    sql: ${TABLE}.TB_CPO3_PDC_PEB_RETAIN_DAYS ;;
  }

  dimension: tb_cpo3_phantom_promo_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_PHANTOM_PROMO_SW ;;
  }

  dimension: tb_cpo3_po_cutoff_time {
    type: number
    sql: ${TABLE}.TB_CPO3_PO_CUTOFF_TIME ;;
  }

  dimension: tb_cpo3_po_misc_chg_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_PO_MISC_CHG_SW ;;
  }

  dimension: tb_cpo3_po_receipt_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_PO_RECEIPT_SW ;;
  }

  dimension: tb_cpo3_po_tax_chg_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_PO_TAX_CHG_SW ;;
  }

  dimension: tb_cpo3_postdated_chk_term_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_POSTDATED_CHK_TERM_SW ;;
  }

  dimension: tb_cpo3_pp_keep_dealer_prc_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_PP_KEEP_DEALER_PRC_SW ;;
  }

  dimension: tb_cpo3_promo_debit_days {
    type: number
    sql: ${TABLE}.TB_CPO3_PROMO_DEBIT_DAYS ;;
  }

  dimension: tb_cpo3_prt_cust_sku_on_tkt_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_PRT_CUST_SKU_ON_TKT_SW ;;
  }

  dimension: tb_cpo3_purch_order_fin_pct {
    type: number
    sql: ${TABLE}.TB_CPO3_PURCH_ORDER_FIN_PCT ;;
  }

  dimension: tb_cpo3_rebate_exp_days {
    type: number
    sql: ${TABLE}.TB_CPO3_REBATE_EXP_DAYS ;;
  }

  dimension: tb_cpo3_recalc_freight_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_RECALC_FREIGHT_SW ;;
  }

  dimension: tb_cpo3_remove_overalloc {
    type: string
    sql: ${TABLE}.TB_CPO3_REMOVE_OVERALLOC ;;
  }

  dimension: tb_cpo3_rework_adj_cost_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_REWORK_ADJ_COST_SW ;;
  }

  dimension: tb_cpo3_rma_inv_age_days {
    type: number
    sql: ${TABLE}.TB_CPO3_RMA_INV_AGE_DAYS ;;
  }

  dimension: tb_cpo3_rsller_margin_intl_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_RSLLER_MARGIN_INTL_SW ;;
  }

  dimension: tb_cpo3_rt_backorder_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_RT_BACKORDER_SW ;;
  }

  dimension: tb_cpo3_rt_eta_days {
    type: string
    sql: ${TABLE}.TB_CPO3_RT_ETA_DAYS ;;
  }

  dimension: tb_cpo3_rt_eta_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_RT_ETA_SW ;;
  }

  dimension: tb_cpo3_rtn_to_inv_own_co_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_RTN_TO_INV_OWN_CO_SW ;;
  }

  dimension: tb_cpo3_select_source_intl_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_SELECT_SOURCE_INTL_SW ;;
  }

  dimension: tb_cpo3_selectsource_pct {
    type: number
    sql: ${TABLE}.TB_CPO3_SELECTSOURCE_PCT ;;
  }

  dimension: tb_cpo3_ticking_logic_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_TICKING_LOGIC_SW ;;
  }

  dimension: tb_cpo3_tl_handwriten_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_TL_HANDWRITEN_SW ;;
  }

  dimension: tb_cpo3_tl_hold_code_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_TL_HOLD_CODE_SW ;;
  }

  dimension: tb_cpo3_trigger_cost_push_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_TRIGGER_COST_PUSH_SW ;;
  }

  dimension: tb_cpo3_upload_gl_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_UPLOAD_GL_SW ;;
  }

  dimension: tb_cpo3_use_alpha_ord_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_USE_ALPHA_ORD_SW ;;
  }

  dimension: tb_cpo3_use_db2_inlhis_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_USE_DB2_INLHIS_SW ;;
  }

  dimension: tb_cpo3_use_ld_days_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_USE_LD_DAYS_SW ;;
  }

  dimension: tb_cpo3_use_min_qty_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_USE_MIN_QTY_SW ;;
  }

  dimension: tb_cpo3_use_po_case_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_USE_PO_CASE_SW ;;
  }

  dimension: tb_cpo3_use_tbxrskuc_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_USE_TBXRSKUC_SW ;;
  }

  dimension: tb_cpo3_use_vdr_exchg_rate_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_USE_VDR_EXCHG_RATE_SW ;;
  }

  dimension: tb_cpo3_valdte_sku_fld_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_VALDTE_SKU_FLD_SW ;;
  }

  dimension: tb_cpo3_vat_rate_company {
    type: string
    sql: ${TABLE}.TB_CPO3_VAT_RATE_COMPANY ;;
  }

  dimension: tb_cpo3_vat_tax_currency {
    type: string
    sql: ${TABLE}.TB_CPO3_VAT_TAX_CURRENCY ;;
  }

  dimension: tb_cpo3_vend_bank_maint_sw {
    type: string
    sql: ${TABLE}.TB_CPO3_VEND_BANK_MAINT_SW ;;
  }

  dimension: tb_cpo3_waive_min_order_web {
    type: string
    sql: ${TABLE}.TB_CPO3_WAIVE_MIN_ORDER_WEB ;;
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
