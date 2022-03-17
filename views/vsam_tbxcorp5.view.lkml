# The name of this view in Looker is "Vsam Tbxcorp5"
view: vsam_tbxcorp5 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCORP5`
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

  dimension: tb_cpo5_acop_cycl_st_trk_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ACOP_CYCL_ST_TRK_SW ;;
  }

  dimension: tb_cpo5_adjusted_cost_calc_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ADJUSTED_COST_CALC_SW ;;
  }

  dimension: tb_cpo5_age_po_line_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_AGE_PO_LINE_SW ;;
  }

  dimension: tb_cpo5_allow_rma_on_delete_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ALLOW_RMA_ON_DELETE_SW ;;
  }

  dimension: tb_cpo5_auto_po_edi_send_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_AUTO_PO_EDI_SEND_SW ;;
  }

  dimension: tb_cpo5_auto_po_security_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_AUTO_PO_SECURITY_SW ;;
  }

  dimension: tb_cpo5_bbs_license_skus_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_BBS_LICENSE_SKUS_SW ;;
  }

  dimension: tb_cpo5_bid_quote_bypass_681 {
    type: string
    sql: ${TABLE}.TB_CPO5_BID_QUOTE_BYPASS_681 ;;
  }

  dimension: tb_cpo5_bt_add_line_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_BT_ADD_LINE_SW ;;
  }

  dimension: tb_cpo5_btl_cost_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_BTL_COST_SW ;;
  }

  dimension: tb_cpo5_calculate_prom_date_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CALCULATE_PROM_DATE_SW ;;
  }

  dimension: tb_cpo5_cfg_dup_comp_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CFG_DUP_COMP_SW ;;
  }

  dimension: tb_cpo5_char_conv_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CHAR_CONV_SW ;;
  }

  dimension: tb_cpo5_check_backorder_gm_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CHECK_BACKORDER_GM_SW ;;
  }

  dimension: tb_cpo5_check_br_on_direct_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CHECK_BR_ON_DIRECT_SW ;;
  }

  dimension: tb_cpo5_check_sf_hold_at_rlse {
    type: string
    sql: ${TABLE}.TB_CPO5_CHECK_SF_HOLD_AT_RLSE ;;
  }

  dimension: tb_cpo5_chg_priority_line_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CHG_PRIORITY_LINE_SW ;;
  }

  dimension: tb_cpo5_choice_advtg_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CHOICE_ADVTG_SW ;;
  }

  dimension: tb_cpo5_cod_fulfill_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_COD_FULFILL_SW ;;
  }

  dimension: tb_cpo5_cofins_rate {
    type: number
    sql: ${TABLE}.TB_CPO5_COFINS_RATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_cpo5_cofins_rate {
    type: sum
    sql: ${tb_cpo5_cofins_rate} ;;
  }

  measure: average_tb_cpo5_cofins_rate {
    type: average
    sql: ${tb_cpo5_cofins_rate} ;;
  }

  dimension: tb_cpo5_company_code {
    type: string
    sql: ${TABLE}.TB_CPO5_COMPANY_CODE ;;
  }

  dimension: tb_cpo5_create_csl_del_fle_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CREATE_CSL_DEL_FLE_SW ;;
  }

  dimension: tb_cpo5_cred_rel_1_ship_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CRED_REL_1_SHIP_SW ;;
  }

  dimension: tb_cpo5_cso_process_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_CSO_PROCESS_SW ;;
  }

  dimension: tb_cpo5_cu_temp_status_days {
    type: number
    sql: ${TABLE}.TB_CPO5_CU_TEMP_STATUS_DAYS ;;
  }

  dimension: tb_cpo5_db2_cust_srch_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_DB2_CUST_SRCH_SW ;;
  }

  dimension: tb_cpo5_detail_gl_entry {
    type: string
    sql: ${TABLE}.TB_CPO5_DETAIL_GL_ENTRY ;;
  }

  dimension: tb_cpo5_direct_freight_calc_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_DIRECT_FREIGHT_CALC_SW ;;
  }

  dimension: tb_cpo5_direct_trak_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_DIRECT_TRAK_SW ;;
  }

  dimension: tb_cpo5_ds_matrix_que_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_DS_MATRIX_QUE_SW ;;
  }

  dimension: tb_cpo5_eai_code_page_id {
    type: string
    sql: ${TABLE}.TB_CPO5_EAI_CODE_PAGE_ID ;;
  }

  dimension: tb_cpo5_edi_invoice_exp_days {
    type: number
    sql: ${TABLE}.TB_CPO5_EDI_INVOICE_EXP_DAYS ;;
  }

  dimension: tb_cpo5_electronic_document_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ELECTRONIC_DOCUMENT_SW ;;
  }

  dimension: tb_cpo5_enable_prtl_instl_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ENABLE_PRTL_INSTL_SW ;;
  }

  dimension: tb_cpo5_enq_deq_on_sfp310 {
    type: string
    sql: ${TABLE}.TB_CPO5_ENQ_DEQ_ON_SFP310 ;;
  }

  dimension: tb_cpo5_europe_sales_hold_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_EUROPE_SALES_HOLD_SW ;;
  }

  dimension: tb_cpo5_frt_out_flag {
    type: string
    sql: ${TABLE}.TB_CPO5_FRT_OUT_FLAG ;;
  }

  dimension: tb_cpo5_frt_out_max {
    type: number
    sql: ${TABLE}.TB_CPO5_FRT_OUT_MAX ;;
  }

  dimension: tb_cpo5_fx_national_currency {
    type: string
    sql: ${TABLE}.TB_CPO5_FX_NATIONAL_CURRENCY ;;
  }

  dimension: tb_cpo5_fxrate_inv_override_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_FXRATE_INV_OVERRIDE_SW ;;
  }

  dimension: tb_cpo5_fxrate_override_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_FXRATE_OVERRIDE_SW ;;
  }

  dimension: tb_cpo5_guaranteed_frt_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_GUARANTEED_FRT_SW ;;
  }

  dimension: tb_cpo5_hide_repl_po_cost_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_HIDE_REPL_PO_COST_SW ;;
  }

  dimension: tb_cpo5_icp022_mod5_ind {
    type: string
    sql: ${TABLE}.TB_CPO5_ICP022_MOD5_IND ;;
  }

  dimension: tb_cpo5_icp025_mod5_ind {
    type: string
    sql: ${TABLE}.TB_CPO5_ICP025_MOD5_IND ;;
  }

  dimension: tb_cpo5_imterface_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_IMTERFACE_SW ;;
  }

  dimension: tb_cpo5_inv_tolerance {
    type: number
    sql: ${TABLE}.TB_CPO5_INV_TOLERANCE ;;
  }

  dimension: tb_cpo5_inventory_desc_flag {
    type: string
    sql: ${TABLE}.TB_CPO5_INVENTORY_DESC_FLAG ;;
  }

  dimension: tb_cpo5_inventory_secure_flag {
    type: string
    sql: ${TABLE}.TB_CPO5_INVENTORY_SECURE_FLAG ;;
  }

  dimension_group: tb_cpo5_last_chg_ts {
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
    sql: ${TABLE}.TB_CPO5_LAST_CHG_TS ;;
  }

  dimension: tb_cpo5_local_time_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_LOCAL_TIME_SW ;;
  }

  dimension: tb_cpo5_log_eai_trans_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_LOG_EAI_TRANS_SW ;;
  }

  dimension: tb_cpo5_log_luii_trans_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_LOG_LUII_TRANS_SW ;;
  }

  dimension: tb_cpo5_oc_pstd_actual_ret_prd {
    type: number
    sql: ${TABLE}.TB_CPO5_OC_PSTD_ACTUAL_RET_PRD ;;
  }

  dimension: tb_cpo5_on_cost_po_used_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ON_COST_PO_USED_SW ;;
  }

  dimension: tb_cpo5_oncost_curr_edit_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ONCOST_CURR_EDIT_SW ;;
  }

  dimension: tb_cpo5_optional_eu_data_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_OPTIONAL_EU_DATA_SW ;;
  }

  dimension: tb_cpo5_ord_chr2_alpha_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ORD_CHR2_ALPHA_SW ;;
  }

  dimension: tb_cpo5_ord_chr4_alpha_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ORD_CHR4_ALPHA_SW ;;
  }

  dimension: tb_cpo5_orp470_vendor_claim_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ORP470_VENDOR_CLAIM_SW ;;
  }

  dimension: tb_cpo5_oz_cond {
    type: string
    sql: ${TABLE}.TB_CPO5_OZ_COND ;;
  }

  dimension: tb_cpo5_pallet_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_PALLET_SW ;;
  }

  dimension: tb_cpo5_pay_tolerance {
    type: number
    sql: ${TABLE}.TB_CPO5_PAY_TOLERANCE ;;
  }

  dimension: tb_cpo5_pis_rate {
    type: number
    sql: ${TABLE}.TB_CPO5_PIS_RATE ;;
  }

  dimension: tb_cpo5_pna_crc_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_PNA_CRC_SW ;;
  }

  dimension: tb_cpo5_po_cmpl_days {
    type: number
    sql: ${TABLE}.TB_CPO5_PO_CMPL_DAYS ;;
  }

  dimension: tb_cpo5_po_lead_alpha_chr_nbr {
    type: number
    sql: ${TABLE}.TB_CPO5_PO_LEAD_ALPHA_CHR_NBR ;;
  }

  dimension: tb_cpo5_po_void_days {
    type: number
    sql: ${TABLE}.TB_CPO5_PO_VOID_DAYS ;;
  }

  dimension: tb_cpo5_po_x_so_cost_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_PO_X_SO_COST_SW ;;
  }

  dimension: tb_cpo5_prcng_engine_cust_dflt {
    type: string
    sql: ${TABLE}.TB_CPO5_PRCNG_ENGINE_CUST_DFLT ;;
  }

  dimension: tb_cpo5_precalc_in_batch_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_PRECALC_IN_BATCH_SW ;;
  }

  dimension: tb_cpo5_pricing_engine_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_PRICING_ENGINE_SW ;;
  }

  dimension: tb_cpo5_print_ap_drafts_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_PRINT_AP_DRAFTS_SW ;;
  }

  dimension: tb_cpo5_product_level_code_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_PRODUCT_LEVEL_CODE_SW ;;
  }

  dimension: tb_cpo5_putaway_priority_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_PUTAWAY_PRIORITY_SW ;;
  }

  dimension: tb_cpo5_qa_new_display_flag {
    type: string
    sql: ${TABLE}.TB_CPO5_QA_NEW_DISPLAY_FLAG ;;
  }

  dimension: tb_cpo5_qa_new_order_flag {
    type: string
    sql: ${TABLE}.TB_CPO5_QA_NEW_ORDER_FLAG ;;
  }

  dimension: tb_cpo5_rec_overshipment_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_REC_OVERSHIPMENT_SW ;;
  }

  dimension: tb_cpo5_rec_qty_check_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_REC_QTY_CHECK_SW ;;
  }

  dimension: tb_cpo5_recyc_fee_refund_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_RECYC_FEE_REFUND_SW ;;
  }

  dimension: tb_cpo5_rma_qty_security_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_RMA_QTY_SECURITY_SW ;;
  }

  dimension: tb_cpo5_rma_use_orig_cost_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_RMA_USE_ORIG_COST_SW ;;
  }

  dimension: tb_cpo5_rpl_eu_logic_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_RPL_EU_LOGIC_SW ;;
  }

  dimension: tb_cpo5_rsv_visible_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_RSV_VISIBLE_SW ;;
  }

  dimension: tb_cpo5_sales_hold_vpm_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_SALES_HOLD_VPM_SW ;;
  }

  dimension: tb_cpo5_sel_src_alpha_rslr_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_SEL_SRC_ALPHA_RSLR_SW ;;
  }

  dimension: tb_cpo5_sku_repl_addon_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_SKU_REPL_ADDON_SW ;;
  }

  dimension: tb_cpo5_slc_active_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_SLC_ACTIVE_SW ;;
  }

  dimension: tb_cpo5_special_address_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_SPECIAL_ADDRESS_SW ;;
  }

  dimension: tb_cpo5_special_sku_hold_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_SPECIAL_SKU_HOLD_SW ;;
  }

  dimension: tb_cpo5_sseu_licensing_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_SSEU_LICENSING_SW ;;
  }

  dimension: tb_cpo5_supress_po_print_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_SUPRESS_PO_PRINT_SW ;;
  }

  dimension: tb_cpo5_threshld_by_oe_meth_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_THRESHLD_BY_OE_METH_SW ;;
  }

  dimension: tb_cpo5_toll_fee_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_TOLL_FEE_SW ;;
  }

  dimension: tb_cpo5_use_alpha_po_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_USE_ALPHA_PO_SW ;;
  }

  dimension: tb_cpo5_use_enhcd_ss_acop_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_USE_ENHCD_SS_ACOP_SW ;;
  }

  dimension: tb_cpo5_use_iclpfs_company_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_USE_ICLPFS_COMPANY_SW ;;
  }

  dimension: tb_cpo5_web_eoprc_call_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_WEB_EOPRC_CALL_SW ;;
  }

  dimension: tb_cpo5_web_structure_days {
    type: number
    sql: ${TABLE}.TB_CPO5_WEB_STRUCTURE_DAYS ;;
  }

  dimension: tb_cpo5_weight_max_oz {
    type: number
    sql: ${TABLE}.TB_CPO5_WEIGHT_MAX_OZ ;;
  }

  dimension: tb_cpo5_zero_price_allowed_sw {
    type: string
    sql: ${TABLE}.TB_CPO5_ZERO_PRICE_ALLOWED_SW ;;
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
