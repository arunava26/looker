# The name of this view in Looker is "Ims Vndr Vnshed"
view: ims_vndr_vnshed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSHED`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Bo Recost Flag" in Explore.

  dimension: acop_bo_recost_flag {
    type: string
    sql: ${TABLE}.ACOP_BO_RECOST_FLAG ;;
  }

  dimension: acop_combine_sw {
    type: string
    sql: ${TABLE}.ACOP_COMBINE_SW ;;
  }

  dimension: acop_cost_override_ind {
    type: string
    sql: ${TABLE}.ACOP_COST_OVERRIDE_IND ;;
  }

  dimension: acop_due_days {
    type: number
    sql: ${TABLE}.ACOP_DUE_DAYS ;;
  }

  dimension: acop_grace_period {
    type: string
    sql: ${TABLE}.ACOP_GRACE_PERIOD ;;
  }

  dimension: acop_prog_nbr_req_flag {
    type: string
    sql: ${TABLE}.ACOP_PROG_NBR_REQ_FLAG ;;
  }

  dimension: alliance_vend_sw {
    type: string
    sql: ${TABLE}.ALLIANCE_VEND_SW ;;
  }

  dimension: alpha_po_sw {
    type: string
    sql: ${TABLE}.ALPHA_PO_SW ;;
  }

  dimension: benq_cond_code {
    type: string
    sql: ${TABLE}.BENQ_COND_CODE ;;
  }

  dimension: boeta_sw {
    type: string
    sql: ${TABLE}.BOETA_SW ;;
  }

  dimension: bump_rate {
    type: number
    sql: ${TABLE}.BUMP_RATE ;;
  }

  dimension: buyer_sheet_fri_sw {
    type: string
    sql: ${TABLE}.BUYER_SHEET_FRI_SW ;;
  }

  dimension: buyer_sheet_mon_sw {
    type: string
    sql: ${TABLE}.BUYER_SHEET_MON_SW ;;
  }

  dimension: buyer_sheet_thu_sw {
    type: string
    sql: ${TABLE}.BUYER_SHEET_THU_SW ;;
  }

  dimension: buyer_sheet_tue_sw {
    type: string
    sql: ${TABLE}.BUYER_SHEET_TUE_SW ;;
  }

  dimension: buyer_sheet_wed_sw {
    type: string
    sql: ${TABLE}.BUYER_SHEET_WED_SW ;;
  }

  dimension: cfg_vendor {
    type: string
    sql: ${TABLE}.CFG_VENDOR ;;
  }

  dimension: cmd_debit_hold_ind {
    type: string
    sql: ${TABLE}.CMD_DEBIT_HOLD_IND ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cons_vend_sw {
    type: string
    sql: ${TABLE}.CONS_VEND_SW ;;
  }

  dimension: consign_frq {
    type: string
    sql: ${TABLE}.CONSIGN_FRQ ;;
  }

  dimension: consigned_sw {
    type: string
    sql: ${TABLE}.CONSIGNED_SW ;;
  }

  dimension: contract_nbr {
    type: string
    sql: ${TABLE}.CONTRACT_NBR ;;
  }

  dimension: coop_accrual_code {
    type: string
    sql: ${TABLE}.COOP_ACCRUAL_CODE ;;
  }

  dimension: coop_cust_pct {
    type: number
    sql: ${TABLE}.COOP_CUST_PCT ;;
  }

  dimension: coop_end_date {
    type: number
    sql: ${TABLE}.COOP_END_DATE ;;
  }

  dimension: coop_flag {
    type: string
    sql: ${TABLE}.COOP_FLAG ;;
  }

  dimension: coop_pass_pct {
    type: number
    sql: ${TABLE}.COOP_PASS_PCT ;;
  }

  dimension: coop_start_date {
    type: number
    sql: ${TABLE}.COOP_START_DATE ;;
  }

  dimension: coop_vend_pct {
    type: number
    sql: ${TABLE}.COOP_VEND_PCT ;;
  }

  dimension: cost_program_req_sw {
    type: string
    sql: ${TABLE}.COST_PROGRAM_REQ_SW ;;
  }

  dimension: cost_recalc_code {
    type: string
    sql: ${TABLE}.COST_RECALC_CODE ;;
  }

  dimension: create_realtime_po_sw {
    type: string
    sql: ${TABLE}.CREATE_REALTIME_PO_SW ;;
  }

  dimension: crt_realtm_po_recpts_sw {
    type: string
    sql: ${TABLE}.CRT_REALTM_PO_RECPTS_SW ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: date_created {
    type: number
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension: days {
    type: string
    sql: ${TABLE}.DAYS ;;
  }

  dimension: dbl_vendor {
    type: string
    sql: ${TABLE}.DBL_VENDOR ;;
  }

  dimension: discount_pct {
    type: number
    sql: ${TABLE}.DISCOUNT_PCT ;;
  }

  dimension: dm_serial_nbr {
    type: string
    sql: ${TABLE}.DM_SERIAL_NBR ;;
  }

  dimension: ds_po_web_ind {
    type: string
    sql: ${TABLE}.DS_PO_WEB_IND ;;
  }

  dimension: ds_req_matrix_eu_ind {
    type: string
    sql: ${TABLE}.DS_REQ_MATRIX_EU_IND ;;
  }

  dimension: ds_req_matrix_hdr_ind {
    type: string
    sql: ${TABLE}.DS_REQ_MATRIX_HDR_IND ;;
  }

  dimension: ds_req_matrix_line_ind {
    type: string
    sql: ${TABLE}.DS_REQ_MATRIX_LINE_IND ;;
  }

  dimension: ds_req_matrix_note_ind {
    type: string
    sql: ${TABLE}.DS_REQ_MATRIX_NOTE_IND ;;
  }

  dimension: ds_type_order_ind {
    type: string
    sql: ${TABLE}.DS_TYPE_ORDER_IND ;;
  }

  dimension: dsfr2_frt_ecom_po_3_party {
    type: string
    sql: ${TABLE}.DSFR2_FRT_ECOM_PO_3PARTY ;;
  }

  dimension: dsfr2_frt_ind {
    type: string
    sql: ${TABLE}.DSFR2_FRT_IND ;;
  }

  dimension: dsfr2_frt_threshold {
    type: number
    sql: ${TABLE}.DSFR2_FRT_THRESHOLD ;;
  }

  dimension: dummy_sku {
    type: string
    sql: ${TABLE}.DUMMY_SKU ;;
  }

  dimension: edi_auto_po_sw {
    type: string
    sql: ${TABLE}.EDI_AUTO_PO_SW ;;
  }

  dimension: edi_co {
    type: string
    sql: ${TABLE}.EDI_CO ;;
  }

  dimension: edi_consign_consld_sw {
    type: string
    sql: ${TABLE}.EDI_CONSIGN_CONSLD_SW ;;
  }

  dimension: edi_inv_level_group_sw {
    type: string
    sql: ${TABLE}.EDI_INV_LEVEL_GROUP_SW ;;
  }

  dimension: edi_invoice_expired_days {
    type: string
    sql: ${TABLE}.EDI_INVOICE_EXPIRED_DAYS ;;
  }

  dimension: edi_invoice_group_sw {
    type: string
    sql: ${TABLE}.EDI_INVOICE_GROUP_SW ;;
  }

  dimension: edi_order_status_rpt_sw {
    type: string
    sql: ${TABLE}.EDI_ORDER_STATUS_RPT_SW ;;
  }

  dimension: edi_p_o_ack_sw {
    type: string
    sql: ${TABLE}.EDI_P_O_ACK_SW ;;
  }

  dimension: edi_pmt_ord_remitt_adv_sw {
    type: string
    sql: ${TABLE}.EDI_PMT_ORD_REMITT_ADV_SW ;;
  }

  dimension: edi_po_group_sw {
    type: string
    sql: ${TABLE}.EDI_PO_GROUP_SW ;;
  }

  dimension: edi_pos_group_sw {
    type: string
    sql: ${TABLE}.EDI_POS_GROUP_SW ;;
  }

  dimension: edi_price_sales_cat_sw {
    type: string
    sql: ${TABLE}.EDI_PRICE_SALES_CAT_SW ;;
  }

  dimension: edi_prod_registn_sw {
    type: string
    sql: ${TABLE}.EDI_PROD_REGISTN_SW ;;
  }

  dimension: edi_rebate_rpt_sw {
    type: string
    sql: ${TABLE}.EDI_REBATE_RPT_SW ;;
  }

  dimension: edi_receiving_adv_sw {
    type: string
    sql: ${TABLE}.EDI_RECEIVING_ADV_SW ;;
  }

  dimension: edi_ship_notice_manif_sw {
    type: string
    sql: ${TABLE}.EDI_SHIP_NOTICE_MANIF_SW ;;
  }

  dimension: edi_system_item_only_sw {
    type: string
    sql: ${TABLE}.EDI_SYSTEM_ITEM_ONLY_SW ;;
  }

  dimension: education_flag {
    type: string
    sql: ${TABLE}.EDUCATION_FLAG ;;
  }

  dimension: eis_vend_co_cd {
    type: string
    sql: ${TABLE}.EIS_VEND_CO_CD ;;
  }

  dimension: end_user_flag {
    type: string
    sql: ${TABLE}.END_USER_FLAG ;;
  }

  dimension: end_user_program_type {
    type: string
    sql: ${TABLE}.END_USER_PROGRAM_TYPE ;;
  }

  dimension: esd_branch_sw {
    type: string
    sql: ${TABLE}.ESD_BRANCH_SW ;;
  }

  dimension: esd_company {
    type: string
    sql: ${TABLE}.ESD_COMPANY ;;
  }

  dimension: eta_flag {
    type: string
    sql: ${TABLE}.ETA_FLAG ;;
  }

  dimension: exchg_rate_curr {
    type: number
    sql: ${TABLE}.EXCHG_RATE_CURR ;;
  }

  dimension: exchg_rate_prev_purc {
    type: number
    sql: ${TABLE}.EXCHG_RATE_PREV_PURC ;;
  }

  dimension: exchg_rate_prev_sell {
    type: number
    sql: ${TABLE}.EXCHG_RATE_PREV_SELL ;;
  }

  dimension: exchg_rate_type {
    type: string
    sql: ${TABLE}.EXCHG_RATE_TYPE ;;
  }

  dimension: exclusive_sw {
    type: string
    sql: ${TABLE}.EXCLUSIVE_SW ;;
  }

  dimension: extra_autho {
    type: string
    sql: ${TABLE}.EXTRA_AUTHO ;;
  }

  dimension: fa_amt {
    type: number
    sql: ${TABLE}.FA_AMT ;;
  }

  dimension: fa_code {
    type: string
    sql: ${TABLE}.FA_CODE ;;
  }

  dimension: fa_weight {
    type: number
    sql: ${TABLE}.FA_WEIGHT ;;
  }

  dimension: finance_outside {
    type: string
    sql: ${TABLE}.FINANCE_OUTSIDE ;;
  }

  dimension: floor_debit_pct {
    type: number
    sql: ${TABLE}.FLOOR_DEBIT_PCT ;;
  }

  dimension: get_culvna_sw {
    type: string
    sql: ${TABLE}.GET_CULVNA_SW ;;
  }

  dimension: gst_hold_type {
    type: string
    sql: ${TABLE}.GST_HOLD_TYPE ;;
  }

  dimension: gst_imp_loc_sw {
    type: string
    sql: ${TABLE}.GST_IMP_LOC_SW ;;
  }

  dimension: gwmd_disc_flag {
    type: string
    sql: ${TABLE}.GWMD_DISC_FLAG ;;
  }

  dimension: gwmd_end_date {
    type: number
    sql: ${TABLE}.GWMD_END_DATE ;;
  }

  dimension: gwmd_start_date {
    type: number
    sql: ${TABLE}.GWMD_START_DATE ;;
  }

  dimension: hb_percent {
    type: number
    sql: ${TABLE}.HB_PERCENT ;;
  }

  dimension: imagine_disc_flag {
    type: string
    sql: ${TABLE}.IMAGINE_DISC_FLAG ;;
  }

  dimension: imagine_end_date {
    type: number
    sql: ${TABLE}.IMAGINE_END_DATE ;;
  }

  dimension: imagine_start_date {
    type: number
    sql: ${TABLE}.IMAGINE_START_DATE ;;
  }

  dimension: internal_code {
    type: string
    sql: ${TABLE}.INTERNAL_CODE ;;
  }

  dimension: ir_dtl_backup_rpt_sw {
    type: string
    sql: ${TABLE}.IR_DTL_BACKUP_RPT_SW ;;
  }

  dimension: ir_ref_sw {
    type: string
    sql: ${TABLE}.IR_REF_SW ;;
  }

  dimension: lap_sw {
    type: string
    sql: ${TABLE}.LAP_SW ;;
  }

  dimension: lead_days {
    type: number
    sql: ${TABLE}.LEAD_DAYS ;;
  }

  dimension: license_shipto_br {
    type: string
    sql: ${TABLE}.LICENSE_SHIPTO_BR ;;
  }

  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
  }

  dimension: make_po_equal_so_cost_sw {
    type: string
    sql: ${TABLE}.MAKE_PO_EQUAL_SO_COST_SW ;;
  }

  dimension: master_vendor_number {
    type: string
    sql: ${TABLE}.MASTER_VENDOR_NUMBER ;;
  }

  dimension: master_vendor_switch {
    type: string
    sql: ${TABLE}.MASTER_VENDOR_SWITCH ;;
  }

  dimension: min_billing {
    type: number
    sql: ${TABLE}.MIN_BILLING ;;
  }

  dimension: min_profit_pct {
    type: number
    sql: ${TABLE}.MIN_PROFIT_PCT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_min_profit_pct {
    type: sum
    sql: ${min_profit_pct} ;;
  }

  measure: average_min_profit_pct {
    type: average
    sql: ${min_profit_pct} ;;
  }

  dimension: mmgr_code {
    type: string
    sql: ${TABLE}.MMGR_CODE ;;
  }

  dimension: mult_rpts {
    type: string
    sql: ${TABLE}.MULT_RPTS ;;
  }

  dimension: name_vendor {
    type: string
    sql: ${TABLE}.NAME_VENDOR ;;
  }

  dimension: nbr_of_lead_days {
    type: number
    sql: ${TABLE}.NBR_OF_LEAD_DAYS ;;
  }

  dimension: negotiation_floor_margin {
    type: number
    sql: ${TABLE}.NEGOTIATION_FLOOR_MARGIN ;;
  }

  dimension: no_interest_vend {
    type: string
    sql: ${TABLE}.NO_INTEREST_VEND ;;
  }

  dimension: non_imts_multi_br_sw {
    type: string
    sql: ${TABLE}.NON_IMTS_MULTI_BR_SW ;;
  }

  dimension: non_imts_vendor_sw {
    type: string
    sql: ${TABLE}.NON_IMTS_VENDOR_SW ;;
  }

  dimension: notes_sw {
    type: string
    sql: ${TABLE}.NOTES_SW ;;
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

  dimension: osource_agent {
    type: string
    sql: ${TABLE}.OSOURCE_AGENT ;;
  }

  dimension: over_rcpt_percent {
    type: number
    sql: ${TABLE}.OVER_RCPT_PERCENT ;;
  }

  dimension: po_audit {
    type: string
    sql: ${TABLE}.PO_AUDIT ;;
  }

  dimension: po_frm_so_sw {
    type: string
    sql: ${TABLE}.PO_FRM_SO_SW ;;
  }

  dimension: po_modify {
    type: string
    sql: ${TABLE}.PO_MODIFY ;;
  }

  dimension: po_req_dt_logic_sw {
    type: string
    sql: ${TABLE}.PO_REQ_DT_LOGIC_SW ;;
  }

  dimension: po_type {
    type: string
    sql: ${TABLE}.PO_TYPE ;;
  }

  dimension: po_vend_sku_match_flag {
    type: string
    sql: ${TABLE}.PO_VEND_SKU_MATCH_FLAG ;;
  }

  dimension: po_vendor_nbr {
    type: string
    sql: ${TABLE}.PO_VENDOR_NBR ;;
  }

  dimension: pos_eu_info_req_ind {
    type: string
    sql: ${TABLE}.POS_EU_INFO_REQ_IND ;;
  }

  dimension: pp_admin_fee_flag {
    type: string
    sql: ${TABLE}.PP_ADMIN_FEE_FLAG ;;
  }

  dimension: pp_boh {
    type: string
    sql: ${TABLE}.PP_BOH ;;
  }

  dimension: pp_boh_b4 {
    type: string
    sql: ${TABLE}.PP_BOH_B4 ;;
  }

  dimension: pp_cost_price_flag {
    type: string
    sql: ${TABLE}.PP_COST_PRICE_FLAG ;;
  }

  dimension: pp_cust_lookback_days {
    type: string
    sql: ${TABLE}.PP_CUST_LOOKBACK_DAYS ;;
  }

  dimension: pp_notify_flag {
    type: string
    sql: ${TABLE}.PP_NOTIFY_FLAG ;;
  }

  dimension: pp_qty_adj {
    type: string
    sql: ${TABLE}.PP_QTY_ADJ ;;
  }

  dimension: pp_rec {
    type: string
    sql: ${TABLE}.PP_REC ;;
  }

  dimension: pp_reporting_flag {
    type: string
    sql: ${TABLE}.PP_REPORTING_FLAG ;;
  }

  dimension: pp_returns {
    type: string
    sql: ${TABLE}.PP_RETURNS ;;
  }

  dimension: pp_rma {
    type: string
    sql: ${TABLE}.PP_RMA ;;
  }

  dimension: pp_serial_number {
    type: string
    sql: ${TABLE}.PP_SERIAL_NUMBER ;;
  }

  dimension: pp_vend_sub_days {
    type: string
    sql: ${TABLE}.PP_VEND_SUB_DAYS ;;
  }

  dimension: pp_xit {
    type: string
    sql: ${TABLE}.PP_XIT ;;
  }

  dimension: pp_zero_dm {
    type: string
    sql: ${TABLE}.PP_ZERO_DM ;;
  }

  dimension: price_protection_sw {
    type: string
    sql: ${TABLE}.PRICE_PROTECTION_SW ;;
  }

  dimension: price_recalc_code {
    type: string
    sql: ${TABLE}.PRICE_RECALC_CODE ;;
  }

  dimension: process_asn_po_flag {
    type: string
    sql: ${TABLE}.PROCESS_ASN_PO_FLAG ;;
  }

  dimension: product_flag {
    type: string
    sql: ${TABLE}.PRODUCT_FLAG ;;
  }

  dimension: prot_due_days {
    type: number
    sql: ${TABLE}.PROT_DUE_DAYS ;;
  }

  dimension: protect_sw {
    type: string
    sql: ${TABLE}.PROTECT_SW ;;
  }

  dimension: quote_nbr_prfx {
    type: string
    sql: ${TABLE}.QUOTE_NBR_PRFX ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.RANK ;;
  }

  dimension: ratnl_contrt_close_dt {
    type: number
    sql: ${TABLE}.RATNL_CONTRT_CLOSE_DT ;;
  }

  dimension: ratnl_contrt_nbr {
    type: string
    sql: ${TABLE}.RATNL_CONTRT_NBR ;;
  }

  dimension: real_time_invtran_ind {
    type: string
    sql: ${TABLE}.REAL_TIME_INVTRAN_IND ;;
  }

  dimension: rebox_sw {
    type: string
    sql: ${TABLE}.REBOX_SW ;;
  }

  dimension: refer_dir_telephone {
    type: string
    sql: ${TABLE}.REFER_DIR_TELEPHONE ;;
  }

  dimension: refer_direct_sw {
    type: string
    sql: ${TABLE}.REFER_DIRECT_SW ;;
  }

  dimension: replicate_change_sw {
    type: string
    sql: ${TABLE}.REPLICATE_CHANGE_SW ;;
  }

  dimension: reseller_flag {
    type: string
    sql: ${TABLE}.RESELLER_FLAG ;;
  }

  dimension: retail_percent {
    type: number
    sql: ${TABLE}.RETAIL_PERCENT ;;
  }

  dimension: retl_clrg_house_sw {
    type: string
    sql: ${TABLE}.RETL_CLRG_HOUSE_SW ;;
  }

  dimension: rev_charge_type {
    type: string
    sql: ${TABLE}.REV_CHARGE_TYPE ;;
  }

  dimension: rev_chg_mech {
    type: string
    sql: ${TABLE}.REV_CHG_MECH ;;
  }

  dimension: rma_req_ser_nbr_sw {
    type: string
    sql: ${TABLE}.RMA_REQ_SER_NBR_SW ;;
  }

  dimension: rma_requires_sales_ord_sw {
    type: string
    sql: ${TABLE}.RMA_REQUIRES_SALES_ORD_SW ;;
  }

  dimension: rma_return_branch {
    type: string
    sql: ${TABLE}.RMA_RETURN_BRANCH ;;
  }

  dimension: rma_return_company {
    type: string
    sql: ${TABLE}.RMA_RETURN_COMPANY ;;
  }

  dimension: sales_rpt_type_sw {
    type: string
    sql: ${TABLE}.SALES_RPT_TYPE_SW ;;
  }

  dimension: send_manual_po_sw {
    type: string
    sql: ${TABLE}.SEND_MANUAL_PO_SW ;;
  }

  dimension: send_xml_by_po_type {
    type: string
    sql: ${TABLE}.SEND_XML_BY_PO_TYPE ;;
  }

  dimension: single_rma_sw {
    type: string
    sql: ${TABLE}.SINGLE_RMA_SW ;;
  }

  dimension: sort_key_vendor {
    type: string
    sql: ${TABLE}.SORT_KEY_VENDOR ;;
  }

  dimension: status_vendor {
    type: string
    sql: ${TABLE}.STATUS_VENDOR ;;
  }

  dimension: svc_level_vendor {
    type: number
    sql: ${TABLE}.SVC_LEVEL_VENDOR ;;
  }

  dimension: test_sw {
    type: string
    sql: ${TABLE}.TEST_SW ;;
  }

  dimension: us_master_vendor_number {
    type: string
    sql: ${TABLE}.US_MASTER_VENDOR_NUMBER ;;
  }

  dimension: us_vendor_number {
    type: string
    sql: ${TABLE}.US_VENDOR_NUMBER ;;
  }

  dimension: vend_exempt_flag {
    type: string
    sql: ${TABLE}.VEND_EXEMPT_FLAG ;;
  }

  dimension: vend_group_name {
    type: string
    sql: ${TABLE}.VEND_GROUP_NAME ;;
  }

  dimension: vend_nick_name1 {
    type: string
    sql: ${TABLE}.VEND_NICK_NAME1 ;;
  }

  dimension: vend_ship_id_dup_flag {
    type: string
    sql: ${TABLE}.VEND_SHIP_ID_DUP_FLAG ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
  }

  dimension: vendor_license_group_id {
    type: string
    sql: ${TABLE}.VENDOR_LICENSE_GROUP_ID ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: vendor_order_nbr_flag {
    type: string
    sql: ${TABLE}.VENDOR_ORDER_NBR_FLAG ;;
  }

  dimension: vendor_type {
    type: string
    sql: ${TABLE}.VENDOR_TYPE ;;
  }

  dimension: virtual_branch_sw {
    type: string
    sql: ${TABLE}.VIRTUAL_BRANCH_SW ;;
  }

  dimension: vrf_expire_date {
    type: number
    sql: ${TABLE}.VRF_EXPIRE_DATE ;;
  }

  dimension: vsq_vend_flag {
    type: string
    sql: ${TABLE}.VSQ_VEND_FLAG ;;
  }

  measure: count {
    type: count
    drill_fields: [vend_group_name]
  }
}
