# The name of this view in Looker is "Vsam Tbxcorp2"
view: vsam_tbxcorp2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCORP2`
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

  dimension: tb_cpo2_a_r_fax_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_A_R_FAX_SW ;;
  }

  dimension: tb_cpo2_a_r_stmt_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_A_R_STMT_SW ;;
  }

  dimension: tb_cpo2_add_future_xref_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_ADD_FUTURE_XREF_SW ;;
  }

  dimension: tb_cpo2_add_promise_date_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_ADD_PROMISE_DATE_SW ;;
  }

  dimension: tb_cpo2_adj_cost_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_ADJ_COST_SW ;;
  }

  dimension: tb_cpo2_allow_po_rate_chg_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_ALLOW_PO_RATE_CHG_SW ;;
  }

  dimension: tb_cpo2_arldep_key_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_ARLDEP_KEY_SW ;;
  }

  dimension: tb_cpo2_auto_bo_prnt_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_AUTO_BO_PRNT_SW ;;
  }

  dimension: tb_cpo2_auto_price_prot_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_AUTO_PRICE_PROT_SW ;;
  }

  dimension: tb_cpo2_auto_print_future {
    type: string
    sql: ${TABLE}.TB_CPO2_AUTO_PRINT_FUTURE ;;
  }

  dimension: tb_cpo2_auto_print_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_AUTO_PRINT_SW ;;
  }

  dimension: tb_cpo2_auto_returns_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_AUTO_RETURNS_SW ;;
  }

  dimension: tb_cpo2_baserate_ovrsize_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_BASERATE_OVRSIZE_SW ;;
  }

  dimension: tb_cpo2_bckord_shipcomp_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_BCKORD_SHIPCOMP_SW ;;
  }

  dimension: tb_cpo2_bin_dec_at_print_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_BIN_DEC_AT_PRINT_SW ;;
  }

  dimension: tb_cpo2_bt_cust_sf_flag {
    type: string
    sql: ${TABLE}.TB_CPO2_BT_CUST_SF_FLAG ;;
  }

  dimension: tb_cpo2_bt_def_config {
    type: string
    sql: ${TABLE}.TB_CPO2_BT_DEF_CONFIG ;;
  }

  dimension: tb_cpo2_bypass_bid_apprv_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_BYPASS_BID_APPRV_SW ;;
  }

  dimension: tb_cpo2_bypass_inv_excp_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_BYPASS_INV_EXCP_SW ;;
  }

  dimension: tb_cpo2_calc_pricing_auto_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_CALC_PRICING_AUTO_SW ;;
  }

  dimension: tb_cpo2_calendar_gl_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_CALENDAR_GL_SW ;;
  }

  dimension: tb_cpo2_cfgcat_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_CFGCAT_SW ;;
  }

  dimension: tb_cpo2_clear_stat_future_ord {
    type: string
    sql: ${TABLE}.TB_CPO2_CLEAR_STAT_FUTURE_ORD ;;
  }

  dimension: tb_cpo2_cofins_rate {
    type: number
    sql: ${TABLE}.TB_CPO2_COFINS_RATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_cpo2_cofins_rate {
    type: sum
    sql: ${tb_cpo2_cofins_rate} ;;
  }

  measure: average_tb_cpo2_cofins_rate {
    type: average
    sql: ${tb_cpo2_cofins_rate} ;;
  }

  dimension: tb_cpo2_company_code {
    type: string
    sql: ${TABLE}.TB_CPO2_COMPANY_CODE ;;
  }

  dimension: tb_cpo2_cost_price_recalc_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_COST_PRICE_RECALC_SW ;;
  }

  dimension: tb_cpo2_cr_aging_adjust_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_CR_AGING_ADJUST_SW ;;
  }

  dimension: tb_cpo2_cr_intrim_cr_hold_rel {
    type: string
    sql: ${TABLE}.TB_CPO2_CR_INTRIM_CR_HOLD_REL ;;
  }

  dimension: tb_cpo2_cslmst_y2_k_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_CSLMST_Y2K_SW ;;
  }

  dimension: tb_cpo2_debit_cust_br {
    type: string
    sql: ${TABLE}.TB_CPO2_DEBIT_CUST_BR ;;
  }

  dimension: tb_cpo2_debit_cust_nbr {
    type: string
    sql: ${TABLE}.TB_CPO2_DEBIT_CUST_NBR ;;
  }

  dimension: tb_cpo2_default_hold_code {
    type: string
    sql: ${TABLE}.TB_CPO2_DEFAULT_HOLD_CODE ;;
  }

  dimension: tb_cpo2_default_hold_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_DEFAULT_HOLD_SW ;;
  }

  dimension: tb_cpo2_dis_orig_price_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_DIS_ORIG_PRICE_SW ;;
  }

  dimension: tb_cpo2_discount_pct {
    type: number
    sql: ${TABLE}.TB_CPO2_DISCOUNT_PCT ;;
  }

  dimension: tb_cpo2_display_xrate_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_DISPLAY_XRATE_SW ;;
  }

  dimension: tb_cpo2_eu_tax_address_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_EU_TAX_ADDRESS_SW ;;
  }

  dimension: tb_cpo2_euro_partic_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_EURO_PARTIC_SW ;;
  }

  dimension: tb_cpo2_euro_proforma_enh_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_EURO_PROFORMA_ENH_SW ;;
  }

  dimension: tb_cpo2_force_lang_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_FORCE_LANG_SW ;;
  }

  dimension: tb_cpo2_foreign_price_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_FOREIGN_PRICE_SW ;;
  }

  dimension: tb_cpo2_fw_cancel_days {
    type: number
    sql: ${TABLE}.TB_CPO2_FW_CANCEL_DAYS ;;
  }

  dimension: tb_cpo2_grp1_code1_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_GRP1_CODE1_SW ;;
  }

  dimension: tb_cpo2_hardware_split_percent {
    type: number
    sql: ${TABLE}.TB_CPO2_HARDWARE_SPLIT_PERCENT ;;
  }

  dimension: tb_cpo2_incl_frto_gp_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_INCL_FRTO_GP_SW ;;
  }

  dimension: tb_cpo2_instant_credit_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_INSTANT_CREDIT_SW ;;
  }

  dimension: tb_cpo2_instant_rebate_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_INSTANT_REBATE_SW ;;
  }

  dimension: tb_cpo2_intl_phone_prefix {
    type: string
    sql: ${TABLE}.TB_CPO2_INTL_PHONE_PREFIX ;;
  }

  dimension: tb_cpo2_invoice_curr_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_INVOICE_CURR_SW ;;
  }

  dimension_group: tb_cpo2_last_chg_ts {
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
    sql: ${TABLE}.TB_CPO2_LAST_CHG_TS ;;
  }

  dimension: tb_cpo2_link_rma_dms_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_LINK_RMA_DMS_SW ;;
  }

  dimension: tb_cpo2_master_sku_co_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_MASTER_SKU_CO_SW ;;
  }

  dimension: tb_cpo2_max_amt_for_autofax {
    type: number
    sql: ${TABLE}.TB_CPO2_MAX_AMT_FOR_AUTOFAX ;;
  }

  dimension: tb_cpo2_min_price_ck_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_MIN_PRICE_CK_SW ;;
  }

  dimension: tb_cpo2_next_aval_eta_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_NEXT_AVAL_ETA_SW ;;
  }

  dimension: tb_cpo2_nexus_active_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_NEXUS_ACTIVE_SW ;;
  }

  dimension: tb_cpo2_nexus_config_def_br {
    type: string
    sql: ${TABLE}.TB_CPO2_NEXUS_CONFIG_DEF_BR ;;
  }

  dimension: tb_cpo2_nexus_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_NEXUS_SW ;;
  }

  dimension: tb_cpo2_no_of_days_auto_print {
    type: string
    sql: ${TABLE}.TB_CPO2_NO_OF_DAYS_AUTO_PRINT ;;
  }

  dimension: tb_cpo2_no_print_bo_line_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_NO_PRINT_BO_LINE_SW ;;
  }

  dimension: tb_cpo2_nolmst_y2_k_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_NOLMST_Y2K_SW ;;
  }

  dimension: tb_cpo2_order_print_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_ORDER_PRINT_SW ;;
  }

  dimension: tb_cpo2_orig_order_xref_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_ORIG_ORDER_XREF_SW ;;
  }

  dimension: tb_cpo2_pan_ins_limit {
    type: number
    sql: ${TABLE}.TB_CPO2_PAN_INS_LIMIT ;;
  }

  dimension: tb_cpo2_pna_lg_default {
    type: string
    sql: ${TABLE}.TB_CPO2_PNA_LG_DEFAULT ;;
  }

  dimension: tb_cpo2_pna_realtime_boh_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_PNA_REALTIME_BOH_SW ;;
  }

  dimension: tb_cpo2_pna_show_class_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_PNA_SHOW_CLASS_SW ;;
  }

  dimension: tb_cpo2_pna_sup_inv_shr_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_PNA_SUP_INV_SHR_SW ;;
  }

  dimension: tb_cpo2_po_duty_chg_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_PO_DUTY_CHG_SW ;;
  }

  dimension: tb_cpo2_po_incoterms_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_PO_INCOTERMS_SW ;;
  }

  dimension: tb_cpo2_pre_calculate_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_PRE_CALCULATE_SW ;;
  }

  dimension: tb_cpo2_price_negotiation_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_PRICE_NEGOTIATION_SW ;;
  }

  dimension: tb_cpo2_price_with_vat_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_PRICE_WITH_VAT_SW ;;
  }

  dimension: tb_cpo2_pricing_curr_code {
    type: string
    sql: ${TABLE}.TB_CPO2_PRICING_CURR_CODE ;;
  }

  dimension: tb_cpo2_recalculate_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_RECALCULATE_SW ;;
  }

  dimension: tb_cpo2_sales_hold_ac_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_SALES_HOLD_AC_SW ;;
  }

  dimension: tb_cpo2_scratch_pad_del_days {
    type: number
    sql: ${TABLE}.TB_CPO2_SCRATCH_PAD_DEL_DAYS ;;
  }

  dimension: tb_cpo2_ser_nbr_load_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_SER_NBR_LOAD_SW ;;
  }

  dimension: tb_cpo2_sku_reuse_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_SKU_REUSE_SW ;;
  }

  dimension: tb_cpo2_software_split_percent {
    type: number
    sql: ${TABLE}.TB_CPO2_SOFTWARE_SPLIT_PERCENT ;;
  }

  dimension: tb_cpo2_sup_competitor_lne_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_SUP_COMPETITOR_LNE_SW ;;
  }

  dimension: tb_cpo2_suppress_lb_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_SUPPRESS_LB_SW ;;
  }

  dimension: tb_cpo2_swissco_comp_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_SWISSCO_COMP_SW ;;
  }

  dimension: tb_cpo2_tax_id_nbr {
    type: string
    sql: ${TABLE}.TB_CPO2_TAX_ID_NBR ;;
  }

  dimension: tb_cpo2_update_via_mq_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_UPDATE_VIA_MQ_SW ;;
  }

  dimension: tb_cpo2_upseur_beg_trk {
    type: number
    sql: ${TABLE}.TB_CPO2_UPSEUR_BEG_TRK ;;
  }

  dimension: tb_cpo2_upseur_end_trk {
    type: number
    sql: ${TABLE}.TB_CPO2_UPSEUR_END_TRK ;;
  }

  dimension: tb_cpo2_use_adj_cost_factor_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_ADJ_COST_FACTOR_SW ;;
  }

  dimension: tb_cpo2_use_alpha_order_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_ALPHA_ORDER_SW ;;
  }

  dimension: tb_cpo2_use_cost_maint_scr_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_COST_MAINT_SCR_SW ;;
  }

  dimension: tb_cpo2_use_enh_messaging_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_ENH_MESSAGING_SW ;;
  }

  dimension: tb_cpo2_use_line_prom_dt_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_LINE_PROM_DT_SW ;;
  }

  dimension: tb_cpo2_use_other_lookup_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_OTHER_LOOKUP_SW ;;
  }

  dimension: tb_cpo2_use_promo_db2_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_PROMO_DB2_SW ;;
  }

  dimension: tb_cpo2_use_swissco_gl_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_SWISSCO_GL_SW ;;
  }

  dimension: tb_cpo2_use_us_sale_hold_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_USE_US_SALE_HOLD_SW ;;
  }

  dimension: tb_cpo2_vat_code_req_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_VAT_CODE_REQ_SW ;;
  }

  dimension: tb_cpo2_vat_lookup_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_VAT_LOOKUP_SW ;;
  }

  dimension: tb_cpo2_vendor_fx_sw {
    type: string
    sql: ${TABLE}.TB_CPO2_VENDOR_FX_SW ;;
  }

  dimension: tb_cpo2_vnd_def_bin_type {
    type: string
    sql: ${TABLE}.TB_CPO2_VND_DEF_BIN_TYPE ;;
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
