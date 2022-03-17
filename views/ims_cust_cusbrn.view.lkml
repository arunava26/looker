# The name of this view in Looker is "Ims Cust Cusbrn"
view: ims_cust_cusbrn {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSBRN`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ack Code" in Explore.

  dimension: ack_code {
    type: string
    sql: ${TABLE}.ACK_CODE ;;
  }

  dimension: analyst_risk {
    type: string
    sql: ${TABLE}.ANALYST_RISK ;;
  }

  dimension: area_sale_director {
    type: string
    sql: ${TABLE}.AREA_SALE_DIRECTOR ;;
  }

  dimension: auth_as_br_nbr {
    type: string
    sql: ${TABLE}.AUTH_AS_BR_NBR ;;
  }

  dimension: auth_as_cust_nbr {
    type: string
    sql: ${TABLE}.AUTH_AS_CUST_NBR ;;
  }

  dimension: auth_as_cust_suf {
    type: string
    sql: ${TABLE}.AUTH_AS_CUST_SUF ;;
  }

  dimension: auto_bo_alloc_sw {
    type: string
    sql: ${TABLE}.AUTO_BO_ALLOC_SW ;;
  }

  dimension: bill_only_fee_pct {
    type: number
    sql: ${TABLE}.BILL_ONLY_FEE_PCT ;;
  }

  dimension: bill_to_suf {
    type: string
    sql: ${TABLE}.BILL_TO_SUF ;;
  }

  dimension: bo_code {
    type: string
    sql: ${TABLE}.BO_CODE ;;
  }

  dimension: bol_end_user_sw {
    type: string
    sql: ${TABLE}.BOL_END_USER_SW ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: branded_box_sw {
    type: string
    sql: ${TABLE}.BRANDED_BOX_SW ;;
  }

  dimension: bump_apply_sw {
    type: string
    sql: ${TABLE}.BUMP_APPLY_SW ;;
  }

  dimension: bump_rate {
    type: number
    sql: ${TABLE}.BUMP_RATE ;;
  }

  dimension: caps_hold {
    type: string
    sql: ${TABLE}.CAPS_HOLD ;;
  }

  dimension: carton_scan_sw {
    type: string
    sql: ${TABLE}.CARTON_SCAN_SW ;;
  }

  dimension: cdp_isa {
    type: string
    sql: ${TABLE}.CDP_ISA ;;
  }

  dimension: cdp_pa1 {
    type: string
    sql: ${TABLE}.CDP_PA1 ;;
  }

  dimension: cdp_pa2 {
    type: string
    sql: ${TABLE}.CDP_PA2 ;;
  }

  dimension: cdp_pa3 {
    type: string
    sql: ${TABLE}.CDP_PA3 ;;
  }

  dimension: cdp_sma {
    type: string
    sql: ${TABLE}.CDP_SMA ;;
  }

  dimension: cdp_vpg {
    type: string
    sql: ${TABLE}.CDP_VPG ;;
  }

  dimension: check_cust_po_sw {
    type: string
    sql: ${TABLE}.CHECK_CUST_PO_SW ;;
  }

  dimension: column_disc {
    type: number
    sql: ${TABLE}.COLUMN_DISC ;;
  }

  dimension: column_ind {
    type: string
    sql: ${TABLE}.COLUMN_IND ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: config_pricing_sw {
    type: string
    sql: ${TABLE}.CONFIG_PRICING_SW ;;
  }

  dimension: conr_code {
    type: string
    sql: ${TABLE}.CONR_CODE ;;
  }

  dimension: consld_frt_inv_days {
    type: number
    sql: ${TABLE}.CONSLD_FRT_INV_DAYS ;;
  }

  dimension: consld_frt_inv_frq {
    type: string
    sql: ${TABLE}.CONSLD_FRT_INV_FRQ ;;
  }

  dimension: consld_frt_inv_lst_bill_dt {
    type: number
    sql: ${TABLE}.CONSLD_FRT_INV_LST_BILL_DT ;;
  }

  dimension: consld_frt_inv_sw {
    type: string
    sql: ${TABLE}.CONSLD_FRT_INV_SW ;;
  }

  dimension: consld_frt_inv_terms {
    type: number
    sql: ${TABLE}.CONSLD_FRT_INV_TERMS ;;
  }

  dimension: copy_code {
    type: string
    sql: ${TABLE}.COPY_CODE ;;
  }

  dimension: cr_mgr_cd1 {
    type: string
    sql: ${TABLE}.CR_MGR_CD1 ;;
  }

  dimension: cr_mgr_cd2 {
    type: string
    sql: ${TABLE}.CR_MGR_CD2 ;;
  }

  dimension: credit_comment {
    type: string
    sql: ${TABLE}.CREDIT_COMMENT ;;
  }

  dimension: credit_x_comment {
    type: string
    sql: ${TABLE}.CREDIT_X_COMMENT ;;
  }

  dimension: cti_cs_queue_prior {
    type: string
    sql: ${TABLE}.CTI_CS_QUEUE_PRIOR ;;
  }

  dimension: cti_cs_type {
    type: string
    sql: ${TABLE}.CTI_CS_TYPE ;;
  }

  dimension: cti_cust_type {
    type: string
    sql: ${TABLE}.CTI_CUST_TYPE ;;
  }

  dimension: cti_queue_priority {
    type: string
    sql: ${TABLE}.CTI_QUEUE_PRIORITY ;;
  }

  dimension: cti_routing_ind {
    type: string
    sql: ${TABLE}.CTI_ROUTING_IND ;;
  }

  dimension: cti_vdn {
    type: string
    sql: ${TABLE}.CTI_VDN ;;
  }

  dimension: cub_br_nbr {
    type: string
    sql: ${TABLE}.CUB_BR_NBR ;;
  }

  dimension: cust_line_req_sw {
    type: string
    sql: ${TABLE}.CUST_LINE_REQ_SW ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_only_branch_sw {
    type: string
    sql: ${TABLE}.CUST_ONLY_BRANCH_SW ;;
  }

  dimension: custom_form_non_fulfill_sw {
    type: string
    sql: ${TABLE}.CUSTOM_FORM_NON_FULFILL_SW ;;
  }

  dimension: custom_form_sw {
    type: string
    sql: ${TABLE}.CUSTOM_FORM_SW ;;
  }

  dimension: custom_ship_doc {
    type: string
    sql: ${TABLE}.CUSTOM_SHIP_DOC ;;
  }

  dimension: daily_new_ord {
    type: string
    sql: ${TABLE}.DAILY_NEW_ORD ;;
  }

  dimension: date_last_change {
    type: number
    sql: ${TABLE}.DATE_LAST_CHANGE ;;
  }

  dimension: default_reseller_nbr {
    type: string
    sql: ${TABLE}.DEFAULT_RESELLER_NBR ;;
  }

  dimension: discontinued_items_sw {
    type: string
    sql: ${TABLE}.DISCONTINUED_ITEMS_SW ;;
  }

  dimension: eff_date {
    type: number
    sql: ${TABLE}.EFF_DATE ;;
  }

  dimension: eia_label_sw {
    type: string
    sql: ${TABLE}.EIA_LABEL_SW ;;
  }

  dimension: end_user_sw {
    type: string
    sql: ${TABLE}.END_USER_SW ;;
  }

  dimension: ext_so_code {
    type: string
    sql: ${TABLE}.EXT_SO_CODE ;;
  }

  dimension: find_entry_dte {
    type: number
    sql: ${TABLE}.FIND_ENTRY_DTE ;;
  }

  dimension: find_fee_sw {
    type: string
    sql: ${TABLE}.FIND_FEE_SW ;;
  }

  dimension: find_is_nbr {
    type: string
    sql: ${TABLE}.FIND_IS_NBR ;;
  }

  dimension: fullcase_prt_cps_sw {
    type: string
    sql: ${TABLE}.FULLCASE_PRT_CPS_SW ;;
  }

  dimension: generic_vendor_sw {
    type: string
    sql: ${TABLE}.GENERIC_VENDOR_SW ;;
  }

  dimension: grs_tax_code {
    type: string
    sql: ${TABLE}.GRS_TAX_CODE ;;
  }

  dimension: hard_divert_bypass_sw {
    type: string
    sql: ${TABLE}.HARD_DIVERT_BYPASS_SW ;;
  }

  dimension: imfirst_order_priority {
    type: string
    sql: ${TABLE}.IMFIRST_ORDER_PRIORITY ;;
  }

  dimension: int_grace_period {
    type: number
    sql: ${TABLE}.INT_GRACE_PERIOD ;;
  }

  dimension: interest_flag {
    type: string
    sql: ${TABLE}.INTEREST_FLAG ;;
  }

  dimension: interest_pct {
    type: number
    sql: ${TABLE}.INTEREST_PCT ;;
  }

  dimension: interest_pct_foreign {
    type: number
    sql: ${TABLE}.INTEREST_PCT_FOREIGN ;;
  }

  dimension: inventory_deallocation_sw {
    type: string
    sql: ${TABLE}.INVENTORY_DEALLOCATION_SW ;;
  }

  dimension: is_chg_dte {
    type: number
    sql: ${TABLE}.IS_CHG_DTE ;;
  }

  dimension: is_salesman_1 {
    type: string
    sql: ${TABLE}.IS_SALESMAN_1 ;;
  }

  dimension: is_salesman_2 {
    type: string
    sql: ${TABLE}.IS_SALESMAN_2 ;;
  }

  dimension: is_salesman_3 {
    type: string
    sql: ${TABLE}.IS_SALESMAN_3 ;;
  }

  dimension: is_salesman_4 {
    type: string
    sql: ${TABLE}.IS_SALESMAN_4 ;;
  }

  dimension: is_salesman_5 {
    type: string
    sql: ${TABLE}.IS_SALESMAN_5 ;;
  }

  dimension: letra_cd {
    type: string
    sql: ${TABLE}.LETRA_CD ;;
  }

  dimension: manual_eft_sw {
    type: string
    sql: ${TABLE}.MANUAL_EFT_SW ;;
  }

  dimension: max_bill_only_fee {
    type: number
    sql: ${TABLE}.MAX_BILL_ONLY_FEE ;;
  }

  dimension: micr_added_date {
    type: number
    sql: ${TABLE}.MICR_ADDED_DATE ;;
  }

  dimension: micr_bank_nbr {
    type: string
    sql: ${TABLE}.MICR_BANK_NBR ;;
  }

  dimension: micr_check_digit {
    type: string
    sql: ${TABLE}.MICR_CHECK_DIGIT ;;
  }

  dimension: micr_maint_date {
    type: number
    sql: ${TABLE}.MICR_MAINT_DATE ;;
  }

  dimension: micr_routing_tran {
    type: string
    sql: ${TABLE}.MICR_ROUTING_TRAN ;;
  }

  dimension: micr_tran_nbr {
    type: string
    sql: ${TABLE}.MICR_TRAN_NBR ;;
  }

  dimension: min_bill_only_fee {
    type: number
    sql: ${TABLE}.MIN_BILL_ONLY_FEE ;;
  }

  dimension: min_flr {
    type: number
    sql: ${TABLE}.MIN_FLR ;;
  }

  dimension: mkting_inserts_sw {
    type: string
    sql: ${TABLE}.MKTING_INSERTS_SW ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_lst_upd_ts {
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
    sql: ${TABLE}.ODS_LST_UPD_TS ;;
  }

  dimension: old_is_nbr {
    type: string
    sql: ${TABLE}.OLD_IS_NBR ;;
  }

  dimension: op_mgr_cd1 {
    type: string
    sql: ${TABLE}.OP_MGR_CD1 ;;
  }

  dimension: op_mgr_cd2 {
    type: string
    sql: ${TABLE}.OP_MGR_CD2 ;;
  }

  dimension: order_management_sw {
    type: string
    sql: ${TABLE}.ORDER_MANAGEMENT_SW ;;
  }

  dimension: os_chg_dte {
    type: number
    sql: ${TABLE}.OS_CHG_DTE ;;
  }

  dimension: os_salesman_1 {
    type: string
    sql: ${TABLE}.OS_SALESMAN_1 ;;
  }

  dimension: os_salesman_2 {
    type: string
    sql: ${TABLE}.OS_SALESMAN_2 ;;
  }

  dimension: os_salesman_3 {
    type: string
    sql: ${TABLE}.OS_SALESMAN_3 ;;
  }

  dimension: os_salesman_4 {
    type: string
    sql: ${TABLE}.OS_SALESMAN_4 ;;
  }

  dimension: os_salesman_5 {
    type: string
    sql: ${TABLE}.OS_SALESMAN_5 ;;
  }

  dimension: pack_slip_handl_sw {
    type: string
    sql: ${TABLE}.PACK_SLIP_HANDL_SW ;;
  }

  dimension: pick_group {
    type: string
    sql: ${TABLE}.PICK_GROUP ;;
  }

  dimension: ppmps_sw {
    type: string
    sql: ${TABLE}.PPMPS_SW ;;
  }

  dimension: pr_cu_po_barcode_sw {
    type: string
    sql: ${TABLE}.PR_CU_PO_BARCODE_SW ;;
  }

  dimension: price_as_br_nbr {
    type: string
    sql: ${TABLE}.PRICE_AS_BR_NBR ;;
  }

  dimension: price_as_cust_nbr {
    type: string
    sql: ${TABLE}.PRICE_AS_CUST_NBR ;;
  }

  dimension: price_rounding {
    type: number
    sql: ${TABLE}.PRICE_ROUNDING ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price_rounding {
    type: sum
    sql: ${price_rounding} ;;
  }

  measure: average_price_rounding {
    type: average
    sql: ${price_rounding} ;;
  }

  dimension: pricing_tier {
    type: string
    sql: ${TABLE}.PRICING_TIER ;;
  }

  dimension: pricing_tier_flag {
    type: string
    sql: ${TABLE}.PRICING_TIER_FLAG ;;
  }

  dimension: pricing_tier_table {
    type: string
    sql: ${TABLE}.PRICING_TIER_TABLE ;;
  }

  dimension: print_carton_pack_slip_sw {
    type: string
    sql: ${TABLE}.PRINT_CARTON_PACK_SLIP_SW ;;
  }

  dimension: print_flooring_invoices_sw {
    type: string
    sql: ${TABLE}.PRINT_FLOORING_INVOICES_SW ;;
  }

  dimension: print_ship_from_lbl_sw {
    type: string
    sql: ${TABLE}.PRINT_SHIP_FROM_LBL_SW ;;
  }

  dimension: prty_code {
    type: string
    sql: ${TABLE}.PRTY_CODE ;;
  }

  dimension: ps_custom_form {
    type: string
    sql: ${TABLE}.PS_CUSTOM_FORM ;;
  }

  dimension: ps_enduser_bc {
    type: string
    sql: ${TABLE}.PS_ENDUSER_BC ;;
  }

  dimension: ps_sn_required_sw {
    type: string
    sql: ${TABLE}.PS_SN_REQUIRED_SW ;;
  }

  dimension: pvar_signup_date {
    type: number
    sql: ${TABLE}.PVAR_SIGNUP_DATE ;;
  }

  dimension: reg_int_code {
    type: string
    sql: ${TABLE}.REG_INT_CODE ;;
  }

  dimension: req_profit_pct {
    type: number
    sql: ${TABLE}.REQ_PROFIT_PCT ;;
  }

  dimension: reseller_split_pct {
    type: number
    sql: ${TABLE}.RESELLER_SPLIT_PCT ;;
  }

  dimension: rma_bill_to_suf {
    type: string
    sql: ${TABLE}.RMA_BILL_TO_SUF ;;
  }

  dimension: rsm_for_sale_order {
    type: string
    sql: ${TABLE}.RSM_FOR_SALE_ORDER ;;
  }

  dimension: sales_type_1 {
    type: string
    sql: ${TABLE}.SALES_TYPE_1 ;;
  }

  dimension: sales_type_2 {
    type: string
    sql: ${TABLE}.SALES_TYPE_2 ;;
  }

  dimension: sales_type_3 {
    type: string
    sql: ${TABLE}.SALES_TYPE_3 ;;
  }

  dimension: sales_type_4 {
    type: string
    sql: ${TABLE}.SALES_TYPE_4 ;;
  }

  dimension: sales_type_5 {
    type: string
    sql: ${TABLE}.SALES_TYPE_5 ;;
  }

  dimension: security {
    type: string
    sql: ${TABLE}.SECURITY ;;
  }

  dimension: sheet_ind {
    type: string
    sql: ${TABLE}.SHEET_IND ;;
  }

  dimension: ship_to_suf {
    type: string
    sql: ${TABLE}.SHIP_TO_SUF ;;
  }

  dimension: shipper_type_sw {
    type: string
    sql: ${TABLE}.SHIPPER_TYPE_SW ;;
  }

  dimension: special_remit_addr {
    type: string
    sql: ${TABLE}.SPECIAL_REMIT_ADDR ;;
  }

  dimension: spl_address_format {
    type: string
    sql: ${TABLE}.SPL_ADDRESS_FORMAT ;;
  }

  dimension: suppress_ship_to_name_sw {
    type: string
    sql: ${TABLE}.SUPPRESS_SHIP_TO_NAME_SW ;;
  }

  dimension: svc_level {
    type: number
    sql: ${TABLE}.SVC_LEVEL ;;
  }

  dimension: team_is {
    type: string
    sql: ${TABLE}.TEAM_IS ;;
  }

  dimension: terms {
    type: number
    sql: ${TABLE}.TERMS ;;
  }

  dimension: tran_fee_pct {
    type: number
    sql: ${TABLE}.TRAN_FEE_PCT ;;
  }

  dimension: ucc_ind {
    type: string
    sql: ${TABLE}.UCC_IND ;;
  }

  dimension: use_enduser_po_sw {
    type: string
    sql: ${TABLE}.USE_ENDUSER_PO_SW ;;
  }

  dimension: vendor_bump_sw {
    type: string
    sql: ${TABLE}.VENDOR_BUMP_SW ;;
  }

  dimension: vpa_pricing_cost_basis {
    type: string
    sql: ${TABLE}.VPA_PRICING_COST_BASIS ;;
  }

  dimension: wa_state_tax_flag {
    type: string
    sql: ${TABLE}.WA_STATE_TAX_FLAG ;;
  }

  dimension: xref_reseller_nbr {
    type: string
    sql: ${TABLE}.XREF_RESELLER_NBR ;;
  }

  dimension: zero_prt_sw {
    type: string
    sql: ${TABLE}.ZERO_PRT_SW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
