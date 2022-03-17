# The name of this view in Looker is "Ods Rma Ship Oflw"
view: ods_rma_ship_oflw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_RMA_SHIP_OFLW`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Enduser Sw" in Explore.

  dimension: acop_enduser_sw {
    type: string
    sql: ${TABLE}.ACOP_ENDUSER_SW ;;
  }

  dimension: authorization_nbr {
    type: string
    sql: ${TABLE}.AUTHORIZATION_NBR ;;
  }

  dimension: authorized_amt {
    type: number
    sql: ${TABLE}.AUTHORIZED_AMT ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: caps_eu_flag {
    type: string
    sql: ${TABLE}.CAPS_EU_FLAG ;;
  }

  dimension: comp_frt_amt {
    type: number
    sql: ${TABLE}.COMP_FRT_AMT ;;
  }

  dimension: comp_frt_amt_ind {
    type: string
    sql: ${TABLE}.COMP_FRT_AMT_IND ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: compl_hold_area {
    type: string
    sql: ${TABLE}.COMPL_HOLD_AREA ;;
  }

  dimension: das_carr_chrg {
    type: number
    sql: ${TABLE}.DAS_CARR_CHRG ;;
  }

  dimension: das_cust_chrg {
    type: number
    sql: ${TABLE}.DAS_CUST_CHRG ;;
  }

  dimension: das_sw {
    type: string
    sql: ${TABLE}.DAS_SW ;;
  }

  dimension: debit_status {
    type: string
    sql: ${TABLE}.DEBIT_STATUS ;;
  }

  dimension: dir_ship_co {
    type: string
    sql: ${TABLE}.DIR_SHIP_CO ;;
  }

  dimension: dir_ship_vend {
    type: string
    sql: ${TABLE}.DIR_SHIP_VEND ;;
  }

  dimension: dir_ship_vend_suf {
    type: string
    sql: ${TABLE}.DIR_SHIP_VEND_SUF ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: ds_req_hdr_info_ind {
    type: string
    sql: ${TABLE}.DS_REQ_HDR_INFO_IND ;;
  }

  dimension: ds_req_lne_info_ind {
    type: string
    sql: ${TABLE}.DS_REQ_LNE_INFO_IND ;;
  }

  dimension: dv_distb_total {
    type: number
    sql: ${TABLE}.DV_DISTB_TOTAL ;;
  }

  dimension: dv_est_ins_fee {
    type: number
    sql: ${TABLE}.DV_EST_INS_FEE ;;
  }

  dimension: dv_ind {
    type: string
    sql: ${TABLE}.DV_IND ;;
  }

  dimension: dv_ins_prgm {
    type: string
    sql: ${TABLE}.DV_INS_PRGM ;;
  }

  dimension: dv_max_crtn_value {
    type: number
    sql: ${TABLE}.DV_MAX_CRTN_VALUE ;;
  }

  dimension: dv_whiteglv_thrshld {
    type: number
    sql: ${TABLE}.DV_WHITEGLV_THRSHLD ;;
  }

  dimension: e_waste_ind {
    type: string
    sql: ${TABLE}.E_WASTE_IND ;;
  }

  dimension: edd {
    type: number
    sql: ${TABLE}.EDD ;;
  }

  dimension: end_user_line_sw {
    type: string
    sql: ${TABLE}.END_USER_LINE_SW ;;
  }

  dimension: entry_form_sw {
    type: string
    sql: ${TABLE}.ENTRY_FORM_SW ;;
  }

  dimension: eu_problem_flag {
    type: string
    sql: ${TABLE}.EU_PROBLEM_FLAG ;;
  }

  dimension: export_fulfillment_sw {
    type: string
    sql: ${TABLE}.EXPORT_FULFILLMENT_SW ;;
  }

  dimension: expt_apo_hold_sw {
    type: string
    sql: ${TABLE}.EXPT_APO_HOLD_SW ;;
  }

  dimension: expt_eup_hold_sw {
    type: string
    sql: ${TABLE}.EXPT_EUP_HOLD_SW ;;
  }

  dimension: expt_ff_cc_hold_sw {
    type: string
    sql: ${TABLE}.EXPT_FF_CC_HOLD_SW ;;
  }

  dimension: expt_ifa_hold_sw {
    type: string
    sql: ${TABLE}.EXPT_IFA_HOLD_SW ;;
  }

  dimension: expt_line_hold_sw {
    type: string
    sql: ${TABLE}.EXPT_LINE_HOLD_SW ;;
  }

  dimension: frm_carrier_flg {
    type: string
    sql: ${TABLE}.FRM_CARRIER_FLG ;;
  }

  dimension: frt_cus_pays_orig {
    type: number
    sql: ${TABLE}.FRT_CUS_PAYS_ORIG ;;
  }

  dimension: frt_out_rep_overide_flg {
    type: string
    sql: ${TABLE}.FRT_OUT_REP_OVERIDE_FLG ;;
  }

  dimension: frtcat_sm_carr_excl_cnt {
    type: number
    sql: ${TABLE}.FRTCAT_SM_CARR_EXCL_CNT ;;
  }

  dimension: gm_hold_ind {
    type: string
    sql: ${TABLE}.GM_HOLD_IND ;;
  }

  dimension: guarfrt_calc_meth {
    type: string
    sql: ${TABLE}.GUARFRT_CALC_METH ;;
  }

  dimension: guarfrt_short_ship_ind {
    type: string
    sql: ${TABLE}.GUARFRT_SHORT_SHIP_IND ;;
  }

  dimension: guarfrt_sw {
    type: string
    sql: ${TABLE}.GUARFRT_SW ;;
  }

  dimension: has_cso_order_line_ind {
    type: string
    sql: ${TABLE}.HAS_CSO_ORDER_LINE_IND ;;
  }

  dimension: hold_acop_sw {
    type: string
    sql: ${TABLE}.HOLD_ACOP_SW ;;
  }

  dimension: ia_gst_decision_sw {
    type: string
    sql: ${TABLE}.IA_GST_DECISION_SW ;;
  }

  dimension: ia_gst_inv_prnt_nbr {
    type: string
    sql: ${TABLE}.IA_GST_INV_PRNT_NBR ;;
  }

  dimension: ia_gst_order_type_ind {
    type: string
    sql: ${TABLE}.IA_GST_ORDER_TYPE_IND ;;
  }

  dimension: ia_gst_supply_st_cod {
    type: string
    sql: ${TABLE}.IA_GST_SUPPLY_ST_COD ;;
  }

  dimension: il_order_finalized_sw {
    type: string
    sql: ${TABLE}.IL_ORDER_FINALIZED_SW ;;
  }

  dimension: im_choice_carrier {
    type: string
    sql: ${TABLE}.IM_CHOICE_CARRIER ;;
  }

  dimension: im_choice_foc {
    type: string
    sql: ${TABLE}.IM_CHOICE_FOC ;;
  }

  dimension: im_choice_frt_amt {
    type: number
    sql: ${TABLE}.IM_CHOICE_FRT_AMT ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: india_vat_gst_order_ind {
    type: string
    sql: ${TABLE}.INDIA_VAT_GST_ORDER_IND ;;
  }

  dimension: invc_br_nbr {
    type: string
    sql: ${TABLE}.INVC_BR_NBR ;;
  }

  dimension: invc_co_cd {
    type: string
    sql: ${TABLE}.INVC_CO_CD ;;
  }

  dimension: invc_dist_nbr {
    type: string
    sql: ${TABLE}.INVC_DIST_NBR ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: invc_invc_dt {
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
    sql: ${TABLE}.INVC_INVC_DT ;;
  }

  dimension: invc_ordr_nbr {
    type: string
    sql: ${TABLE}.INVC_ORDR_NBR ;;
  }

  dimension: invc_ship_nbr {
    type: string
    sql: ${TABLE}.INVC_SHIP_NBR ;;
  }

  dimension: it_pan_nbr {
    type: string
    sql: ${TABLE}.IT_PAN_NBR ;;
  }

  dimension: man_upd_frt_out_amt_sw {
    type: string
    sql: ${TABLE}.MAN_UPD_FRT_OUT_AMT_SW ;;
  }

  dimension: octroi_debit_sw {
    type: string
    sql: ${TABLE}.OCTROI_DEBIT_SW ;;
  }

  dimension: octroi_org_ds {
    type: string
    sql: ${TABLE}.OCTROI_ORG_DS ;;
  }

  dimension: octroi_org_order {
    type: string
    sql: ${TABLE}.OCTROI_ORG_ORDER ;;
  }

  dimension: octroi_rate {
    type: number
    sql: ${TABLE}.OCTROI_RATE ;;
  }

  dimension: octroi_region_code {
    type: string
    sql: ${TABLE}.OCTROI_REGION_CODE ;;
  }

  dimension: octroi_sales_rate {
    type: number
    sql: ${TABLE}.OCTROI_SALES_RATE ;;
  }

  dimension: octroi_update_opid {
    type: string
    sql: ${TABLE}.OCTROI_UPDATE_OPID ;;
  }

  dimension_group: ods_lst_upd_dt {
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
    sql: ${TABLE}.ODS_LST_UPD_DT ;;
  }

  dimension_group: ordr_dt {
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
    sql: ${TABLE}.ORDR_DT ;;
  }

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: orig_br_nbr {
    type: string
    sql: ${TABLE}.ORIG_BR_NBR ;;
  }

  dimension: orig_dist_nbr {
    type: string
    sql: ${TABLE}.ORIG_DIST_NBR ;;
  }

  dimension: orig_order_nbr {
    type: string
    sql: ${TABLE}.ORIG_ORDER_NBR ;;
  }

  dimension: orig_shipment_nbr {
    type: string
    sql: ${TABLE}.ORIG_SHIPMENT_NBR ;;
  }

  dimension: orsshhof_key_0 {
    type: string
    sql: ${TABLE}.ORSSHHOF_KEY_0 ;;
  }

  dimension: pal_est_cartons {
    type: number
    sql: ${TABLE}.PAL_EST_CARTONS ;;
  }

  dimension: pal_frt_out_amt {
    type: number
    sql: ${TABLE}.PAL_FRT_OUT_AMT ;;
  }

  dimension: pal_frt_out_cost {
    type: number
    sql: ${TABLE}.PAL_FRT_OUT_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pal_frt_out_cost {
    type: sum
    sql: ${pal_frt_out_cost} ;;
  }

  measure: average_pal_frt_out_cost {
    type: average
    sql: ${pal_frt_out_cost} ;;
  }

  dimension: pal_weight_entry_1 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_1 ;;
  }

  dimension: pal_weight_entry_10 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_10 ;;
  }

  dimension: pal_weight_entry_11 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_11 ;;
  }

  dimension: pal_weight_entry_12 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_12 ;;
  }

  dimension: pal_weight_entry_13 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_13 ;;
  }

  dimension: pal_weight_entry_14 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_14 ;;
  }

  dimension: pal_weight_entry_15 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_15 ;;
  }

  dimension: pal_weight_entry_16 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_16 ;;
  }

  dimension: pal_weight_entry_17 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_17 ;;
  }

  dimension: pal_weight_entry_18 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_18 ;;
  }

  dimension: pal_weight_entry_19 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_19 ;;
  }

  dimension: pal_weight_entry_2 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_2 ;;
  }

  dimension: pal_weight_entry_20 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_20 ;;
  }

  dimension: pal_weight_entry_21 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_21 ;;
  }

  dimension: pal_weight_entry_22 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_22 ;;
  }

  dimension: pal_weight_entry_23 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_23 ;;
  }

  dimension: pal_weight_entry_24 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_24 ;;
  }

  dimension: pal_weight_entry_25 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_25 ;;
  }

  dimension: pal_weight_entry_26 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_26 ;;
  }

  dimension: pal_weight_entry_27 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_27 ;;
  }

  dimension: pal_weight_entry_28 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_28 ;;
  }

  dimension: pal_weight_entry_29 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_29 ;;
  }

  dimension: pal_weight_entry_3 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_3 ;;
  }

  dimension: pal_weight_entry_30 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_30 ;;
  }

  dimension: pal_weight_entry_31 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_31 ;;
  }

  dimension: pal_weight_entry_32 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_32 ;;
  }

  dimension: pal_weight_entry_33 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_33 ;;
  }

  dimension: pal_weight_entry_34 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_34 ;;
  }

  dimension: pal_weight_entry_35 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_35 ;;
  }

  dimension: pal_weight_entry_36 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_36 ;;
  }

  dimension: pal_weight_entry_37 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_37 ;;
  }

  dimension: pal_weight_entry_38 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_38 ;;
  }

  dimension: pal_weight_entry_39 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_39 ;;
  }

  dimension: pal_weight_entry_4 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_4 ;;
  }

  dimension: pal_weight_entry_40 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_40 ;;
  }

  dimension: pal_weight_entry_41 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_41 ;;
  }

  dimension: pal_weight_entry_42 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_42 ;;
  }

  dimension: pal_weight_entry_43 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_43 ;;
  }

  dimension: pal_weight_entry_44 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_44 ;;
  }

  dimension: pal_weight_entry_45 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_45 ;;
  }

  dimension: pal_weight_entry_46 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_46 ;;
  }

  dimension: pal_weight_entry_47 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_47 ;;
  }

  dimension: pal_weight_entry_48 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_48 ;;
  }

  dimension: pal_weight_entry_49 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_49 ;;
  }

  dimension: pal_weight_entry_5 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_5 ;;
  }

  dimension: pal_weight_entry_50 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_50 ;;
  }

  dimension: pal_weight_entry_6 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_6 ;;
  }

  dimension: pal_weight_entry_7 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_7 ;;
  }

  dimension: pal_weight_entry_8 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_8 ;;
  }

  dimension: pal_weight_entry_9 {
    type: number
    sql: ${TABLE}.PAL_WEIGHT_ENTRY_9 ;;
  }

  dimension: pal_wgt_update_from {
    type: string
    sql: ${TABLE}.PAL_WGT_UPDATE_FROM ;;
  }

  dimension: pre_dc_carrchg_carrier {
    type: string
    sql: ${TABLE}.PRE_DC_CARRCHG_CARRIER ;;
  }

  dimension: price_engine_reprice_sw {
    type: string
    sql: ${TABLE}.PRICE_ENGINE_REPRICE_SW ;;
  }

  dimension: rdp3_c_fee {
    type: number
    sql: ${TABLE}.RDP3_C_FEE ;;
  }

  dimension: rdp3_c_waive_flg {
    type: string
    sql: ${TABLE}.RDP3_C_WAIVE_FLG ;;
  }

  dimension: recost_in_progress_sw {
    type: string
    sql: ${TABLE}.RECOST_IN_PROGRESS_SW ;;
  }

  dimension: rma_ar_br {
    type: string
    sql: ${TABLE}.RMA_AR_BR ;;
  }

  dimension: rma_ar_inv {
    type: string
    sql: ${TABLE}.RMA_AR_INV ;;
  }

  dimension: rma_ar_inv_dt {
    type: number
    sql: ${TABLE}.RMA_AR_INV_DT ;;
  }

  dimension: rpl_bill_to_hit_sw {
    type: string
    sql: ${TABLE}.RPL_BILL_TO_HIT_SW ;;
  }

  dimension: rpl_bill_to_match_score {
    type: string
    sql: ${TABLE}.RPL_BILL_TO_MATCH_SCORE ;;
  }

  dimension: rpl_bill_to_nam_addr_id {
    type: number
    sql: ${TABLE}.RPL_BILL_TO_NAM_ADDR_ID ;;
  }

  dimension: rpl_eu_hit_sw {
    type: string
    sql: ${TABLE}.RPL_EU_HIT_SW ;;
  }

  dimension: rpl_eu_line_hit_sw {
    type: string
    sql: ${TABLE}.RPL_EU_LINE_HIT_SW ;;
  }

  dimension: rpl_eu_match_score {
    type: string
    sql: ${TABLE}.RPL_EU_MATCH_SCORE ;;
  }

  dimension: rpl_eu_nam_addr_id {
    type: number
    sql: ${TABLE}.RPL_EU_NAM_ADDR_ID ;;
  }

  dimension: rpl_ship_to_hit_sw {
    type: string
    sql: ${TABLE}.RPL_SHIP_TO_HIT_SW ;;
  }

  dimension: rpl_ship_to_match_score {
    type: string
    sql: ${TABLE}.RPL_SHIP_TO_MATCH_SCORE ;;
  }

  dimension: rpl_ship_to_nam_addr_id {
    type: number
    sql: ${TABLE}.RPL_SHIP_TO_NAM_ADDR_ID ;;
  }

  dimension: rslr_class_ind {
    type: string
    sql: ${TABLE}.RSLR_CLASS_IND ;;
  }

  dimension: sf_de_br46_hold_sw {
    type: string
    sql: ${TABLE}.SF_DE_BR46_HOLD_SW ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: size_1_cnt {
    type: number
    sql: ${TABLE}.SIZE_1_CNT ;;
  }

  dimension: size_1_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_1_SHP_CMP_CNT ;;
  }

  dimension: size_2_cnt {
    type: number
    sql: ${TABLE}.SIZE_2_CNT ;;
  }

  dimension: size_2_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_2_SHP_CMP_CNT ;;
  }

  dimension: size_3_cnt {
    type: number
    sql: ${TABLE}.SIZE_3_CNT ;;
  }

  dimension: size_3_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_3_SHP_CMP_CNT ;;
  }

  dimension: size_4_cnt {
    type: number
    sql: ${TABLE}.SIZE_4_CNT ;;
  }

  dimension: size_4_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_4_SHP_CMP_CNT ;;
  }

  dimension: size_5_cnt {
    type: number
    sql: ${TABLE}.SIZE_5_CNT ;;
  }

  dimension: size_5_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_5_SHP_CMP_CNT ;;
  }

  dimension: size_6_cnt {
    type: number
    sql: ${TABLE}.SIZE_6_CNT ;;
  }

  dimension: size_6_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_6_SHP_CMP_CNT ;;
  }

  dimension: size_7_cnt {
    type: number
    sql: ${TABLE}.SIZE_7_CNT ;;
  }

  dimension: size_7_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_7_SHP_CMP_CNT ;;
  }

  dimension: size_8_cnt {
    type: number
    sql: ${TABLE}.SIZE_8_CNT ;;
  }

  dimension: size_8_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_8_SHP_CMP_CNT ;;
  }

  dimension: size_9_cnt {
    type: number
    sql: ${TABLE}.SIZE_9_CNT ;;
  }

  dimension: size_9_shp_cmp_cnt {
    type: number
    sql: ${TABLE}.SIZE_9_SHP_CMP_CNT ;;
  }

  dimension: special_bid_order_sw {
    type: string
    sql: ${TABLE}.SPECIAL_BID_ORDER_SW ;;
  }

  dimension: special_sku_hold_sw {
    type: string
    sql: ${TABLE}.SPECIAL_SKU_HOLD_SW ;;
  }

  dimension: split_frt_override_cd {
    type: string
    sql: ${TABLE}.SPLIT_FRT_OVERRIDE_CD ;;
  }

  dimension: split_order_sw {
    type: string
    sql: ${TABLE}.SPLIT_ORDER_SW ;;
  }

  dimension: sseu_synch_flag {
    type: string
    sql: ${TABLE}.SSEU_SYNCH_FLAG ;;
  }

  dimension: start_date {
    type: number
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: tds_withhold_amt {
    type: number
    sql: ${TABLE}.TDS_WITHHOLD_AMT ;;
  }

  dimension: tds_withhold_pct {
    type: number
    sql: ${TABLE}.TDS_WITHHOLD_PCT ;;
  }

  dimension: tot_wgt_oz {
    type: number
    sql: ${TABLE}.TOT_WGT_OZ ;;
  }

  dimension: total_charges_orig {
    type: number
    sql: ${TABLE}.TOTAL_CHARGES_ORIG ;;
  }

  dimension: user_initials {
    type: string
    sql: ${TABLE}.USER_INITIALS ;;
  }

  dimension: vla_avl_eu_hold_sw {
    type: string
    sql: ${TABLE}.VLA_AVL_EU_HOLD_SW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
