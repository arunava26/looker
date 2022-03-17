# The name of this view in Looker is "Vsam Tbxbrn3"
view: vsam_tbxbrn3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXBRN3`
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

  dimension: tb_brn3_alt_company_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_ALT_COMPANY_SW ;;
  }

  dimension: tb_brn3_altca_val_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_ALTCA_VAL_SW ;;
  }

  dimension: tb_brn3_assign_rslr_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_ASSIGN_RSLR_SW ;;
  }

  dimension: tb_brn3_autorlse_print_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_AUTORLSE_PRINT_SW ;;
  }

  dimension: tb_brn3_br_has_zero_cost_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_BR_HAS_ZERO_COST_SW ;;
  }

  dimension: tb_brn3_br_to_br_transfer_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_BR_TO_BR_TRANSFER_SW ;;
  }

  dimension: tb_brn3_branch {
    type: string
    sql: ${TABLE}.TB_BRN3_BRANCH ;;
  }

  dimension: tb_brn3_branch_tax_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_BRANCH_TAX_SW ;;
  }

  dimension: tb_brn3_by_air {
    type: string
    sql: ${TABLE}.TB_BRN3_BY_AIR ;;
  }

  dimension: tb_brn3_by_rail {
    type: string
    sql: ${TABLE}.TB_BRN3_BY_RAIL ;;
  }

  dimension: tb_brn3_by_truck {
    type: string
    sql: ${TABLE}.TB_BRN3_BY_TRUCK ;;
  }

  dimension: tb_brn3_bypass_cost_upd_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_BYPASS_COST_UPD_SW ;;
  }

  dimension: tb_brn3_calc_promise_date_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_CALC_PROMISE_DATE_SW ;;
  }

  dimension: tb_brn3_charge_comm_tax_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_CHARGE_COMM_TAX_SW ;;
  }

  dimension: tb_brn3_company_code {
    type: string
    sql: ${TABLE}.TB_BRN3_COMPANY_CODE ;;
  }

  dimension: tb_brn3_conveyable_wgt_limit {
    type: number
    sql: ${TABLE}.TB_BRN3_CONVEYABLE_WGT_LIMIT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_brn3_conveyable_wgt_limit {
    type: sum
    sql: ${tb_brn3_conveyable_wgt_limit} ;;
  }

  measure: average_tb_brn3_conveyable_wgt_limit {
    type: average
    sql: ${tb_brn3_conveyable_wgt_limit} ;;
  }

  dimension: tb_brn3_cti_cs_to_sales_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_CTI_CS_TO_SALES_SW ;;
  }

  dimension: tb_brn3_def_car_on_bo {
    type: string
    sql: ${TABLE}.TB_BRN3_DEF_CAR_ON_BO ;;
  }

  dimension: tb_brn3_doc_type_nbr {
    type: string
    sql: ${TABLE}.TB_BRN3_DOC_TYPE_NBR ;;
  }

  dimension: tb_brn3_donot_rlse_after_time {
    type: number
    sql: ${TABLE}.TB_BRN3_DONOT_RLSE_AFTER_TIME ;;
  }

  dimension: tb_brn3_enhanced_hdr_recalc_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_ENHANCED_HDR_RECALC_SW ;;
  }

  dimension: tb_brn3_fedex_mill_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_FEDEX_MILL_SW ;;
  }

  dimension: tb_brn3_frt_ordr_wgt_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_FRT_ORDR_WGT_SW ;;
  }

  dimension: tb_brn3_hardware_split_percent {
    type: number
    sql: ${TABLE}.TB_BRN3_HARDWARE_SPLIT_PERCENT ;;
  }

  dimension: tb_brn3_last_digits_upc_sku {
    type: string
    sql: ${TABLE}.TB_BRN3_LAST_DIGITS_UPC_SKU ;;
  }

  dimension: tb_brn3_mhs_protocol {
    type: string
    sql: ${TABLE}.TB_BRN3_MHS_PROTOCOL ;;
  }

  dimension: tb_brn3_mhs_send_trailer_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_MHS_SEND_TRAILER_SW ;;
  }

  dimension: tb_brn3_mhs_ts_ck_pkg_sts_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_MHS_TS_CK_PKG_STS_SW ;;
  }

  dimension: tb_brn3_mhs_ts_laser_bill_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_MHS_TS_LASER_BILL_SW ;;
  }

  dimension: tb_brn3_mhs_use_phys_lane_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_MHS_USE_PHYS_LANE_SW ;;
  }

  dimension: tb_brn3_min_bal_cr_ins_rpt {
    type: number
    sql: ${TABLE}.TB_BRN3_MIN_BAL_CR_INS_RPT ;;
  }

  dimension: tb_brn3_min_past_due_amt {
    type: number
    sql: ${TABLE}.TB_BRN3_MIN_PAST_DUE_AMT ;;
  }

  dimension: tb_brn3_mo_fee_ff_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_MO_FEE_FF_SW ;;
  }

  dimension: tb_brn3_mo_fee_os_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_MO_FEE_OS_SW ;;
  }

  dimension: tb_brn3_mo_fee_wc_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_MO_FEE_WC_SW ;;
  }

  dimension: tb_brn3_mult_br_auto_alloc_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_MULT_BR_AUTO_ALLOC_SW ;;
  }

  dimension: tb_brn3_mult_br_print_tm_hhmm {
    type: number
    sql: ${TABLE}.TB_BRN3_MULT_BR_PRINT_TM_HHMM ;;
  }

  dimension: tb_brn3_no_environment_fee_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_NO_ENVIRONMENT_FEE_SW ;;
  }

  dimension: tb_brn3_no_on_hold_alloc_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_NO_ON_HOLD_ALLOC_SW ;;
  }

  dimension: tb_brn3_not_to_print_ci_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_NOT_TO_PRINT_CI_SW ;;
  }

  dimension: tb_brn3_oe_late_time {
    type: number
    sql: ${TABLE}.TB_BRN3_OE_LATE_TIME ;;
  }

  dimension: tb_brn3_pallet_pick_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_PALLET_PICK_SW ;;
  }

  dimension: tb_brn3_pick_primary_1_st_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_PICK_PRIMARY_1ST_SW ;;
  }

  dimension: tb_brn3_plain_paper_tote_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_PLAIN_PAPER_TOTE_SW ;;
  }

  dimension: tb_brn3_print_pick_ticket_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_PRINT_PICK_TICKET_SW ;;
  }

  dimension: tb_brn3_process_ri_rts_bt_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_PROCESS_RI_RTS_BT_SW ;;
  }

  dimension: tb_brn3_put_by_pal_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_PUT_BY_PAL_SW ;;
  }

  dimension: tb_brn3_qa_line_function_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_QA_LINE_FUNCTION_SW ;;
  }

  dimension: tb_brn3_reseller_br_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_RESELLER_BR_SW ;;
  }

  dimension: tb_brn3_resolve_ser_flags_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_RESOLVE_SER_FLAGS_SW ;;
  }

  dimension: tb_brn3_restrict_held_ord_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_RESTRICT_HELD_ORD_SW ;;
  }

  dimension: tb_brn3_return_br_only_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_RETURN_BR_ONLY_SW ;;
  }

  dimension: tb_brn3_returns_carousel_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_RETURNS_CAROUSEL_SW ;;
  }

  dimension: tb_brn3_ri_hold_returns_rts_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_RI_HOLD_RETURNS_RTS_SW ;;
  }

  dimension: tb_brn3_routing_prefix_code {
    type: string
    sql: ${TABLE}.TB_BRN3_ROUTING_PREFIX_CODE ;;
  }

  dimension: tb_brn3_rtv_capture_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_RTV_CAPTURE_SW ;;
  }

  dimension: tb_brn3_s_rel_pick_ticket_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_S_REL_PICK_TICKET_SW ;;
  }

  dimension: tb_brn3_seq_inv_br_level_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_SEQ_INV_BR_LEVEL_SW ;;
  }

  dimension: tb_brn3_seq_nbr_source_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_SEQ_NBR_SOURCE_SW ;;
  }

  dimension: tb_brn3_sku_dimension_req_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_SKU_DIMENSION_REQ_SW ;;
  }

  dimension: tb_brn3_sku_wght_required_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_SKU_WGHT_REQUIRED_SW ;;
  }

  dimension: tb_brn3_software_split_percent {
    type: number
    sql: ${TABLE}.TB_BRN3_SOFTWARE_SPLIT_PERCENT ;;
  }

  dimension: tb_brn3_update_reseller_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_UPDATE_RESELLER_SW ;;
  }

  dimension: tb_brn3_use_mq_fc_mhs_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_USE_MQ_FC_MHS_SW ;;
  }

  dimension: tb_brn3_use_mq_for_mhs_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_USE_MQ_FOR_MHS_SW ;;
  }

  dimension: tb_brn3_use_rpl_logic_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_USE_RPL_LOGIC_SW ;;
  }

  dimension: tb_brn3_uses_station_id_rec_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_USES_STATION_ID_REC_SW ;;
  }

  dimension: tb_brn3_vendor_part_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_VENDOR_PART_SW ;;
  }

  dimension: tb_brn3_void_last_pkg_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_VOID_LAST_PKG_SW ;;
  }

  dimension: tb_brn3_wash_grt_sw {
    type: string
    sql: ${TABLE}.TB_BRN3_WASH_GRT_SW ;;
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
