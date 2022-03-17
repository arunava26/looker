# The name of this view in Looker is "Vsam Tbxcorp"
view: vsam_tbxcorp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXCORP`
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

  dimension: tb_cpo_accept_var_pct {
    type: number
    sql: ${TABLE}.TB_CPO_ACCEPT_VAR_PCT ;;
  }

  dimension: tb_cpo_addr_format_sw {
    type: string
    sql: ${TABLE}.TB_CPO_ADDR_FORMAT_SW ;;
  }

  dimension: tb_cpo_adj_gp_sw {
    type: string
    sql: ${TABLE}.TB_CPO_ADJ_GP_SW ;;
  }

  dimension: tb_cpo_alt_inventory_sw {
    type: string
    sql: ${TABLE}.TB_CPO_ALT_INVENTORY_SW ;;
  }

  dimension: tb_cpo_altcap_inventory_sw {
    type: string
    sql: ${TABLE}.TB_CPO_ALTCAP_INVENTORY_SW ;;
  }

  dimension: tb_cpo_ap_imaging_sw {
    type: string
    sql: ${TABLE}.TB_CPO_AP_IMAGING_SW ;;
  }

  dimension: tb_cpo_ap_reconcile_opt {
    type: string
    sql: ${TABLE}.TB_CPO_AP_RECONCILE_OPT ;;
  }

  dimension: tb_cpo_ap_retain_days {
    type: number
    sql: ${TABLE}.TB_CPO_AP_RETAIN_DAYS ;;
  }

  dimension: tb_cpo_auto_directs {
    type: string
    sql: ${TABLE}.TB_CPO_AUTO_DIRECTS ;;
  }

  dimension: tb_cpo_auto_directs_po_sw {
    type: string
    sql: ${TABLE}.TB_CPO_AUTO_DIRECTS_PO_SW ;;
  }

  dimension: tb_cpo_auto_fax_sw {
    type: string
    sql: ${TABLE}.TB_CPO_AUTO_FAX_SW ;;
  }

  dimension: tb_cpo_auto_match_opt {
    type: string
    sql: ${TABLE}.TB_CPO_AUTO_MATCH_OPT ;;
  }

  dimension: tb_cpo_backorder_dist {
    type: string
    sql: ${TABLE}.TB_CPO_BACKORDER_DIST ;;
  }

  dimension: tb_cpo_base_rate_order_sw {
    type: string
    sql: ${TABLE}.TB_CPO_BASE_RATE_ORDER_SW ;;
  }

  dimension: tb_cpo_batch_return_branch {
    type: string
    sql: ${TABLE}.TB_CPO_BATCH_RETURN_BRANCH ;;
  }

  dimension: tb_cpo_bill_control_sw {
    type: string
    sql: ${TABLE}.TB_CPO_BILL_CONTROL_SW ;;
  }

  dimension: tb_cpo_bill_lading_option {
    type: string
    sql: ${TABLE}.TB_CPO_BILL_LADING_OPTION ;;
  }

  dimension: tb_cpo_business_days {
    type: string
    sql: ${TABLE}.TB_CPO_BUSINESS_DAYS ;;
  }

  dimension: tb_cpo_caps_plus_sw {
    type: string
    sql: ${TABLE}.TB_CPO_CAPS_PLUS_SW ;;
  }

  dimension: tb_cpo_capture_rtv_sw {
    type: string
    sql: ${TABLE}.TB_CPO_CAPTURE_RTV_SW ;;
  }

  dimension: tb_cpo_cash_apply_opt {
    type: string
    sql: ${TABLE}.TB_CPO_CASH_APPLY_OPT ;;
  }

  dimension: tb_cpo_check_at_add {
    type: string
    sql: ${TABLE}.TB_CPO_CHECK_AT_ADD ;;
  }

  dimension: tb_cpo_check_at_backorder {
    type: string
    sql: ${TABLE}.TB_CPO_CHECK_AT_BACKORDER ;;
  }

  dimension: tb_cpo_check_at_change {
    type: string
    sql: ${TABLE}.TB_CPO_CHECK_AT_CHANGE ;;
  }

  dimension: tb_cpo_check_at_entry {
    type: string
    sql: ${TABLE}.TB_CPO_CHECK_AT_ENTRY ;;
  }

  dimension: tb_cpo_check_at_release {
    type: string
    sql: ${TABLE}.TB_CPO_CHECK_AT_RELEASE ;;
  }

  dimension: tb_cpo_check_by_limit {
    type: string
    sql: ${TABLE}.TB_CPO_CHECK_BY_LIMIT ;;
  }

  dimension: tb_cpo_check_credit_at_print {
    type: string
    sql: ${TABLE}.TB_CPO_CHECK_CREDIT_AT_PRINT ;;
  }

  dimension: tb_cpo_check_fixed_amount {
    type: number
    sql: ${TABLE}.TB_CPO_CHECK_FIXED_AMOUNT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_cpo_check_fixed_amount {
    type: sum
    sql: ${tb_cpo_check_fixed_amount} ;;
  }

  measure: average_tb_cpo_check_fixed_amount {
    type: average
    sql: ${tb_cpo_check_fixed_amount} ;;
  }

  dimension: tb_cpo_check_ord_total_sw {
    type: string
    sql: ${TABLE}.TB_CPO_CHECK_ORD_TOTAL_SW ;;
  }

  dimension: tb_cpo_cntry_sw {
    type: string
    sql: ${TABLE}.TB_CPO_CNTRY_SW ;;
  }

  dimension: tb_cpo_col_pricing_sw {
    type: string
    sql: ${TABLE}.TB_CPO_COL_PRICING_SW ;;
  }

  dimension: tb_cpo_company_code {
    type: string
    sql: ${TABLE}.TB_CPO_COMPANY_CODE ;;
  }

  dimension: tb_cpo_corp_vendor {
    type: string
    sql: ${TABLE}.TB_CPO_CORP_VENDOR ;;
  }

  dimension: tb_cpo_cost_for_margn_sw {
    type: string
    sql: ${TABLE}.TB_CPO_COST_FOR_MARGN_SW ;;
  }

  dimension: tb_cpo_cost_usage {
    type: string
    sql: ${TABLE}.TB_CPO_COST_USAGE ;;
  }

  dimension: tb_cpo_credit_approval_level {
    type: string
    sql: ${TABLE}.TB_CPO_CREDIT_APPROVAL_LEVEL ;;
  }

  dimension: tb_cpo_credit_check_days {
    type: number
    sql: ${TABLE}.TB_CPO_CREDIT_CHECK_DAYS ;;
  }

  dimension: tb_cpo_crmgr_sec_check_sw {
    type: string
    sql: ${TABLE}.TB_CPO_CRMGR_SEC_CHECK_SW ;;
  }

  dimension: tb_cpo_currency_code {
    type: string
    sql: ${TABLE}.TB_CPO_CURRENCY_CODE ;;
  }

  dimension: tb_cpo_date_format_sw {
    type: string
    sql: ${TABLE}.TB_CPO_DATE_FORMAT_SW ;;
  }

  dimension: tb_cpo_dc_lead_days {
    type: number
    sql: ${TABLE}.TB_CPO_DC_LEAD_DAYS ;;
  }

  dimension: tb_cpo_dd_dc_purge_days {
    type: number
    sql: ${TABLE}.TB_CPO_DD_DC_PURGE_DAYS ;;
  }

  dimension: tb_cpo_dd_lead_days {
    type: number
    sql: ${TABLE}.TB_CPO_DD_LEAD_DAYS ;;
  }

  dimension: tb_cpo_default_carrier {
    type: string
    sql: ${TABLE}.TB_CPO_DEFAULT_CARRIER ;;
  }

  dimension: tb_cpo_freight_sw {
    type: string
    sql: ${TABLE}.TB_CPO_FREIGHT_SW ;;
  }

  dimension: tb_cpo_frt_limit_amt {
    type: number
    sql: ${TABLE}.TB_CPO_FRT_LIMIT_AMT ;;
  }

  dimension: tb_cpo_frt_out_split_sw {
    type: string
    sql: ${TABLE}.TB_CPO_FRT_OUT_SPLIT_SW ;;
  }

  dimension: tb_cpo_future_ord_rel_days {
    type: number
    sql: ${TABLE}.TB_CPO_FUTURE_ORD_REL_DAYS ;;
  }

  dimension: tb_cpo_inv_branch {
    type: string
    sql: ${TABLE}.TB_CPO_INV_BRANCH ;;
  }

  dimension: tb_cpo_inventory_shared_sw {
    type: string
    sql: ${TABLE}.TB_CPO_INVENTORY_SHARED_SW ;;
  }

  dimension: tb_cpo_is_required {
    type: string
    sql: ${TABLE}.TB_CPO_IS_REQUIRED ;;
  }

  dimension: tb_cpo_jv_auto_bt_sw {
    type: string
    sql: ${TABLE}.TB_CPO_JV_AUTO_BT_SW ;;
  }

  dimension: tb_cpo_jv_auto_sales_sw {
    type: string
    sql: ${TABLE}.TB_CPO_JV_AUTO_SALES_SW ;;
  }

  dimension: tb_cpo_large_screen_sw {
    type: string
    sql: ${TABLE}.TB_CPO_LARGE_SCREEN_SW ;;
  }

  dimension: tb_cpo_margin_tolerance {
    type: number
    sql: ${TABLE}.TB_CPO_MARGIN_TOLERANCE ;;
  }

  dimension: tb_cpo_min_order_1 {
    type: number
    sql: ${TABLE}.TB_CPO_MIN_ORDER_1 ;;
  }

  dimension: tb_cpo_min_order_2 {
    type: number
    sql: ${TABLE}.TB_CPO_MIN_ORDER_2 ;;
  }

  dimension: tb_cpo_min_order_3 {
    type: number
    sql: ${TABLE}.TB_CPO_MIN_ORDER_3 ;;
  }

  dimension: tb_cpo_min_order_chrg_amt {
    type: number
    sql: ${TABLE}.TB_CPO_MIN_ORDER_CHRG_AMT ;;
  }

  dimension: tb_cpo_min_order_limit {
    type: number
    sql: ${TABLE}.TB_CPO_MIN_ORDER_LIMIT ;;
  }

  dimension: tb_cpo_ns_com_req {
    type: string
    sql: ${TABLE}.TB_CPO_NS_COM_REQ ;;
  }

  dimension: tb_cpo_ns_vend_req {
    type: string
    sql: ${TABLE}.TB_CPO_NS_VEND_REQ ;;
  }

  dimension: tb_cpo_or_cancel_days {
    type: number
    sql: ${TABLE}.TB_CPO_OR_CANCEL_DAYS ;;
  }

  dimension: tb_cpo_order_amt {
    type: number
    sql: ${TABLE}.TB_CPO_ORDER_AMT ;;
  }

  dimension: tb_cpo_order_dist {
    type: string
    sql: ${TABLE}.TB_CPO_ORDER_DIST ;;
  }

  dimension: tb_cpo_ormgt_warning_days {
    type: number
    sql: ${TABLE}.TB_CPO_ORMGT_WARNING_DAYS ;;
  }

  dimension: tb_cpo_outbound_freight {
    type: number
    sql: ${TABLE}.TB_CPO_OUTBOUND_FREIGHT ;;
  }

  dimension: tb_cpo_pc_warehousing_sw {
    type: string
    sql: ${TABLE}.TB_CPO_PC_WAREHOUSING_SW ;;
  }

  dimension: tb_cpo_po_allocation {
    type: string
    sql: ${TABLE}.TB_CPO_PO_ALLOCATION ;;
  }

  dimension: tb_cpo_price_usage {
    type: string
    sql: ${TABLE}.TB_CPO_PRICE_USAGE ;;
  }

  dimension: tb_cpo_promo_message {
    type: string
    sql: ${TABLE}.TB_CPO_PROMO_MESSAGE ;;
  }

  dimension: tb_cpo_purchase_shared_sw {
    type: string
    sql: ${TABLE}.TB_CPO_PURCHASE_SHARED_SW ;;
  }

  dimension: tb_cpo_purge_order_mo {
    type: number
    sql: ${TABLE}.TB_CPO_PURGE_ORDER_MO ;;
  }

  dimension: tb_cpo_recost_invoice_opt {
    type: string
    sql: ${TABLE}.TB_CPO_RECOST_INVOICE_OPT ;;
  }

  dimension: tb_cpo_reprice_change_opt {
    type: string
    sql: ${TABLE}.TB_CPO_REPRICE_CHANGE_OPT ;;
  }

  dimension: tb_cpo_reprice_order_opt {
    type: string
    sql: ${TABLE}.TB_CPO_REPRICE_ORDER_OPT ;;
  }

  dimension: tb_cpo_reset_avg_cost {
    type: string
    sql: ${TABLE}.TB_CPO_RESET_AVG_COST ;;
  }

  dimension: tb_cpo_review_rec_sw {
    type: string
    sql: ${TABLE}.TB_CPO_REVIEW_REC_SW ;;
  }

  dimension: tb_cpo_rma_purge_days {
    type: number
    sql: ${TABLE}.TB_CPO_RMA_PURGE_DAYS ;;
  }

  dimension: tb_cpo_selling_branch {
    type: string
    sql: ${TABLE}.TB_CPO_SELLING_BRANCH ;;
  }

  dimension: tb_cpo_serial_reprint_sw {
    type: string
    sql: ${TABLE}.TB_CPO_SERIAL_REPRINT_SW ;;
  }

  dimension: tb_cpo_ship_order_rel_opt {
    type: string
    sql: ${TABLE}.TB_CPO_SHIP_ORDER_REL_OPT ;;
  }

  dimension: tb_cpo_ship_qty_set {
    type: string
    sql: ${TABLE}.TB_CPO_SHIP_QTY_SET ;;
  }

  dimension: tb_cpo_sn_purge_days {
    type: number
    sql: ${TABLE}.TB_CPO_SN_PURGE_DAYS ;;
  }

  dimension: tb_cpo_split_ticket_sw {
    type: string
    sql: ${TABLE}.TB_CPO_SPLIT_TICKET_SW ;;
  }

  dimension: tb_cpo_superpsb_suffix {
    type: string
    sql: ${TABLE}.TB_CPO_SUPERPSB_SUFFIX ;;
  }

  dimension: tb_cpo_tax_override_sw {
    type: string
    sql: ${TABLE}.TB_CPO_TAX_OVERRIDE_SW ;;
  }

  dimension: tb_cpo_tele_other_lookup_sw {
    type: string
    sql: ${TABLE}.TB_CPO_TELE_OTHER_LOOKUP_SW ;;
  }

  dimension: tb_cpo_transmittal_nbr {
    type: number
    sql: ${TABLE}.TB_CPO_TRANSMITTAL_NBR ;;
  }

  dimension: tb_cpo_ups_interactive_sw {
    type: string
    sql: ${TABLE}.TB_CPO_UPS_INTERACTIVE_SW ;;
  }

  dimension: tb_cpo_us_cand_direct_type_sw {
    type: string
    sql: ${TABLE}.TB_CPO_US_CAND_DIRECT_TYPE_SW ;;
  }

  dimension: tb_cpo_use_price_code_opt {
    type: string
    sql: ${TABLE}.TB_CPO_USE_PRICE_CODE_OPT ;;
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
