# The name of this view in Looker is "Vsam Tbxcorp4"
view: vsam_tbxcorp4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCORP4`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop List Price Sw" in Explore.

  dimension: acop_list_price_sw {
    type: string
    sql: ${TABLE}.ACOP_LIST_PRICE_SW ;;
  }

  dimension: allow_dir_ship_grp_sw {
    type: string
    sql: ${TABLE}.ALLOW_DIR_SHIP_GRP_SW ;;
  }

  dimension: allow_zero_avg_cost_sw {
    type: string
    sql: ${TABLE}.ALLOW_ZERO_AVG_COST_SW ;;
  }

  dimension: ap_gst_sw {
    type: string
    sql: ${TABLE}.AP_GST_SW ;;
  }

  dimension: auto_erma_is_nbr {
    type: string
    sql: ${TABLE}.AUTO_ERMA_IS_NBR ;;
  }

  dimension: auto_rev_streamline_sw {
    type: string
    sql: ${TABLE}.AUTO_REV_STREAMLINE_SW ;;
  }

  dimension: auto_reverse_co {
    type: string
    sql: ${TABLE}.AUTO_REVERSE_CO ;;
  }

  dimension: baserate_res_cond {
    type: string
    sql: ${TABLE}.BASERATE_RES_COND ;;
  }

  dimension: bkorder_cust_hld_sw {
    type: string
    sql: ${TABLE}.BKORDER_CUST_HLD_SW ;;
  }

  dimension: brxfer_alloc_1_sw {
    type: string
    sql: ${TABLE}.BRXFER_ALLOC_1_SW ;;
  }

  dimension: brxfer_bkorder_sw {
    type: string
    sql: ${TABLE}.BRXFER_BKORDER_SW ;;
  }

  dimension: by_orig_order_seq_sw {
    type: string
    sql: ${TABLE}.BY_ORIG_ORDER_SEQ_SW ;;
  }

  dimension: calc_promise_date_sw {
    type: string
    sql: ${TABLE}.CALC_PROMISE_DATE_SW ;;
  }

  dimension: calc_tax_4_dec_sw {
    type: string
    sql: ${TABLE}.CALC_TAX_4DEC_SW ;;
  }

  dimension: caps_end_user_sw {
    type: string
    sql: ${TABLE}.CAPS_END_USER_SW ;;
  }

  dimension: caps_group1_sw {
    type: string
    sql: ${TABLE}.CAPS_GROUP1_SW ;;
  }

  dimension: check_vend_suf_on_po {
    type: string
    sql: ${TABLE}.CHECK_VEND_SUF_ON_PO ;;
  }

  dimension: class_alt_lang_desc_sw {
    type: string
    sql: ${TABLE}.CLASS_ALT_LANG_DESC_SW ;;
  }

  dimension: co_cartonize_sw {
    type: string
    sql: ${TABLE}.CO_CARTONIZE_SW ;;
  }

  dimension: col {
    type: number
    sql: ${TABLE}.COL ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_col {
    type: sum
    sql: ${col} ;;
  }

  measure: average_col {
    type: average
    sql: ${col} ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.COMPANY_CODE ;;
  }

  dimension: company_uses_dif_sw {
    type: string
    sql: ${TABLE}.COMPANY_USES_DIF_SW ;;
  }

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  dimension: cpo4_3_rd_consign {
    type: string
    sql: ${TABLE}.CPO4_3RD_CONSIGN ;;
  }

  dimension: cup500_webfrt_sec {
    type: string
    sql: ${TABLE}.CUP500_WEBFRT_SEC ;;
  }

  dimension: cup502_minord_sec {
    type: string
    sql: ${TABLE}.CUP502_MINORD_SEC ;;
  }

  dimension: cup505_dfrtfg_sec {
    type: string
    sql: ${TABLE}.CUP505_DFRTFG_SEC ;;
  }

  dimension: dif_retention_days {
    type: number
    sql: ${TABLE}.DIF_RETENTION_DAYS ;;
  }

  dimension: direct_acct_nbr_sw {
    type: string
    sql: ${TABLE}.DIRECT_ACCT_NBR_SW ;;
  }

  dimension: dv_sw {
    type: string
    sql: ${TABLE}.DV_SW ;;
  }

  dimension: ecom_filter_active_sw {
    type: string
    sql: ${TABLE}.ECOM_FILTER_ACTIVE_SW ;;
  }

  dimension: ecom_final_review_sw {
    type: string
    sql: ${TABLE}.ECOM_FINAL_REVIEW_SW ;;
  }

  dimension: ecom_orp541_hilight_sw {
    type: string
    sql: ${TABLE}.ECOM_ORP541_HILIGHT_SW ;;
  }

  dimension: ecom_spec_promo_sw {
    type: string
    sql: ${TABLE}.ECOM_SPEC_PROMO_SW ;;
  }

  dimension: edi_end_user_sw {
    type: string
    sql: ${TABLE}.EDI_END_USER_SW ;;
  }

  dimension: enhanced_hdr_recalc_sw {
    type: string
    sql: ${TABLE}.ENHANCED_HDR_RECALC_SW ;;
  }

  dimension: erma_tibco_sw {
    type: string
    sql: ${TABLE}.ERMA_TIBCO_SW ;;
  }

  dimension: eta_on_bo_sw {
    type: string
    sql: ${TABLE}.ETA_ON_BO_SW ;;
  }

  dimension: event_broadcast_mode {
    type: string
    sql: ${TABLE}.EVENT_BROADCAST_MODE ;;
  }

  dimension: expdt_transmittal_sw {
    type: string
    sql: ${TABLE}.EXPDT_TRANSMITTAL_SW ;;
  }

  dimension: frt_chrg_entry_method {
    type: string
    sql: ${TABLE}.FRT_CHRG_ENTRY_METHOD ;;
  }

  dimension: fx_claim_sw {
    type: string
    sql: ${TABLE}.FX_CLAIM_SW ;;
  }

  dimension: gtin_sw {
    type: string
    sql: ${TABLE}.GTIN_SW ;;
  }

  dimension: icp025_promise_date_sw {
    type: string
    sql: ${TABLE}.ICP025_PROMISE_DATE_SW ;;
  }

  dimension: icp031_security_sw {
    type: string
    sql: ${TABLE}.ICP031_SECURITY_SW ;;
  }

  dimension: imatch_flag {
    type: string
    sql: ${TABLE}.IMATCH_FLAG ;;
  }

  dimension: iml_svc_fee_bill_sw {
    type: string
    sql: ${TABLE}.IML_SVC_FEE_BILL_SW ;;
  }

  dimension: keep_desc_line_sw {
    type: string
    sql: ${TABLE}.KEEP_DESC_LINE_SW ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_chg_ts {
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
    sql: ${TABLE}.LAST_CHG_TS ;;
  }

  dimension: lead_time_calc_sw {
    type: string
    sql: ${TABLE}.LEAD_TIME_CALC_SW ;;
  }

  dimension: lead_time_rcpt_days {
    type: number
    sql: ${TABLE}.LEAD_TIME_RCPT_DAYS ;;
  }

  dimension: lead_time_receipts {
    type: number
    sql: ${TABLE}.LEAD_TIME_RECEIPTS ;;
  }

  dimension: license_processing_sw {
    type: string
    sql: ${TABLE}.LICENSE_PROCESSING_SW ;;
  }

  dimension: mft_br_sw {
    type: string
    sql: ${TABLE}.MFT_BR_SW ;;
  }

  dimension: mult_br_auto_alloc_sw {
    type: string
    sql: ${TABLE}.MULT_BR_AUTO_ALLOC_SW ;;
  }

  dimension: non_screen_nsrch_score {
    type: number
    sql: ${TABLE}.NON_SCREEN_NSRCH_SCORE ;;
  }

  dimension: non_std_freight_flag {
    type: string
    sql: ${TABLE}.NON_STD_FREIGHT_FLAG ;;
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

  dimension: ovr_80_laser_bill_sw {
    type: string
    sql: ${TABLE}.OVR_80_LASER_BILL_SW ;;
  }

  dimension: pal_max_cartons {
    type: number
    sql: ${TABLE}.PAL_MAX_CARTONS ;;
  }

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: po_match_disc_sw {
    type: string
    sql: ${TABLE}.PO_MATCH_DISC_SW ;;
  }

  dimension: po_match_sys_date_sw {
    type: string
    sql: ${TABLE}.PO_MATCH_SYS_DATE_SW ;;
  }

  dimension: post_order_update_sw {
    type: string
    sql: ${TABLE}.POST_ORDER_UPDATE_SW ;;
  }

  dimension: precalc_on_frt_updt_sw {
    type: string
    sql: ${TABLE}.PRECALC_ON_FRT_UPDT_SW ;;
  }

  dimension: precalc_on_update_sw {
    type: string
    sql: ${TABLE}.PRECALC_ON_UPDATE_SW ;;
  }

  dimension: prevent_dup_po_sw {
    type: string
    sql: ${TABLE}.PREVENT_DUP_PO_SW ;;
  }

  dimension: price_pct_converted_sw {
    type: string
    sql: ${TABLE}.PRICE_PCT_CONVERTED_SW ;;
  }

  dimension: prot_dir_qty_sw {
    type: string
    sql: ${TABLE}.PROT_DIR_QTY_SW ;;
  }

  dimension: pxlmst_price_as_sw {
    type: string
    sql: ${TABLE}.PXLMST_PRICE_AS_SW ;;
  }

  dimension: rdp_c_ord_limit {
    type: number
    sql: ${TABLE}.RDP_C_ORD_LIMIT ;;
  }

  dimension: rdp_c_process_sw {
    type: string
    sql: ${TABLE}.RDP_C_PROCESS_SW ;;
  }

  dimension: rdp_c_waive_cd {
    type: string
    sql: ${TABLE}.RDP_C_WAIVE_CD ;;
  }

  dimension: real_vat_tax_sw {
    type: string
    sql: ${TABLE}.REAL_VAT_TAX_SW ;;
  }

  dimension: req_vsn_mtcmp_sw {
    type: string
    sql: ${TABLE}.REQ_VSN_MTCMP_SW ;;
  }

  dimension: rf_alt_br_sw {
    type: string
    sql: ${TABLE}.RF_ALT_BR_SW ;;
  }

  dimension: rma_rcn_rcd_allowed_sw {
    type: string
    sql: ${TABLE}.RMA_RCN_RCD_ALLOWED_SW ;;
  }

  dimension: screen_nsrch_score {
    type: number
    sql: ${TABLE}.SCREEN_NSRCH_SCORE ;;
  }

  dimension: sel_src_consol_ap_sw {
    type: string
    sql: ${TABLE}.SEL_SRC_CONSOL_AP_SW ;;
  }

  dimension: semi_erma_is_nbr {
    type: string
    sql: ${TABLE}.SEMI_ERMA_IS_NBR ;;
  }

  dimension: serial_per_line_sw {
    type: string
    sql: ${TABLE}.SERIAL_PER_LINE_SW ;;
  }

  dimension: share_ediinv_sw {
    type: string
    sql: ${TABLE}.SHARE_EDIINV_SW ;;
  }

  dimension: show_vat_code_sw {
    type: string
    sql: ${TABLE}.SHOW_VAT_CODE_SW ;;
  }

  dimension: sku_has_no_boh_sw {
    type: string
    sql: ${TABLE}.SKU_HAS_NO_BOH_SW ;;
  }

  dimension: spcl_hndl_cd {
    type: string
    sql: ${TABLE}.SPCL_HNDL_CD ;;
  }

  dimension: spec_price_override_sw {
    type: string
    sql: ${TABLE}.SPEC_PRICE_OVERRIDE_SW ;;
  }

  dimension: split_freight_cp_sw {
    type: string
    sql: ${TABLE}.SPLIT_FREIGHT_CP_SW ;;
  }

  dimension: sseu_acop_features_sw {
    type: string
    sql: ${TABLE}.SSEU_ACOP_FEATURES_SW ;;
  }

  dimension: sseu_enabled_sw {
    type: string
    sql: ${TABLE}.SSEU_ENABLED_SW ;;
  }

  dimension: sseu_govt_sw {
    type: string
    sql: ${TABLE}.SSEU_GOVT_SW ;;
  }

  dimension: stop_serial_print_sw {
    type: string
    sql: ${TABLE}.STOP_SERIAL_PRINT_SW ;;
  }

  dimension: ticking_ftp_sw {
    type: string
    sql: ${TABLE}.TICKING_FTP_SW ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  dimension: updte_foreign_rate_sw {
    type: string
    sql: ${TABLE}.UPDTE_FOREIGN_RATE_SW ;;
  }

  dimension: use_campaign_field_sw {
    type: string
    sql: ${TABLE}.USE_CAMPAIGN_FIELD_SW ;;
  }

  dimension: use_rpl_logic_sw {
    type: string
    sql: ${TABLE}.USE_RPL_LOGIC_SW ;;
  }

  dimension: use_ven_btl_expdt_sw {
    type: string
    sql: ${TABLE}.USE_VEN_BTL_EXPDT_SW ;;
  }

  dimension: valid_days_pur_eta_dt {
    type: number
    sql: ${TABLE}.VALID_DAYS_PUR_ETA_DT ;;
  }

  dimension: vend_suff_logic_sw {
    type: string
    sql: ${TABLE}.VEND_SUFF_LOGIC_SW ;;
  }

  dimension: vendor_purge_sw {
    type: string
    sql: ${TABLE}.VENDOR_PURGE_SW ;;
  }

  dimension: vlp_price_as_sw {
    type: string
    sql: ${TABLE}.VLP_PRICE_AS_SW ;;
  }

  dimension: web_days_delete {
    type: string
    sql: ${TABLE}.WEB_DAYS_DELETE ;;
  }

  dimension: web_delete_sw {
    type: string
    sql: ${TABLE}.WEB_DELETE_SW ;;
  }

  dimension: weight_max_oz {
    type: number
    sql: ${TABLE}.WEIGHT_MAX_OZ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
