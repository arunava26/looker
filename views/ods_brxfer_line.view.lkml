# The name of this view in Looker is "Ods Brxfer Line"
view: ods_brxfer_line {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_BRXFER_LINE`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Aap Build Ind" in Explore.

  dimension: aap_build_ind {
    type: string
    sql: ${TABLE}.AAP_BUILD_IND ;;
  }

  dimension: acop_cost_oride_ind {
    type: string
    sql: ${TABLE}.ACOP_COST_ORIDE_IND ;;
  }

  dimension: acop_delta_prc_ind {
    type: string
    sql: ${TABLE}.ACOP_DELTA_PRC_IND ;;
  }

  dimension: acop_end_user_nbr {
    type: number
    sql: ${TABLE}.ACOP_END_USER_NBR ;;
  }

  dimension: acop_rprc_sw {
    type: string
    sql: ${TABLE}.ACOP_RPRC_SW ;;
  }

  dimension: actual_exchg_rate {
    type: number
    sql: ${TABLE}.ACTUAL_EXCHG_RATE ;;
  }

  dimension: adj_cost {
    type: number
    sql: ${TABLE}.ADJ_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_adj_cost {
    type: sum
    sql: ${adj_cost} ;;
  }

  measure: average_adj_cost {
    type: average
    sql: ${adj_cost} ;;
  }

  dimension: adjd_cost_sw {
    type: string
    sql: ${TABLE}.ADJD_COST_SW ;;
  }

  dimension: aggr_cd {
    type: string
    sql: ${TABLE}.AGGR_CD ;;
  }

  dimension: alloc_resv_qty {
    type: number
    sql: ${TABLE}.ALLOC_RESV_QTY ;;
  }

  dimension: alloc_type {
    type: string
    sql: ${TABLE}.ALLOC_TYPE ;;
  }

  dimension: alnc_sw {
    type: string
    sql: ${TABLE}.ALNC_SW ;;
  }

  dimension: alt_unit_cost {
    type: number
    sql: ${TABLE}.ALT_UNIT_COST ;;
  }

  dimension: alt_whse_br {
    type: string
    sql: ${TABLE}.ALT_WHSE_BR ;;
  }

  dimension: alt_whse_ccy {
    type: string
    sql: ${TABLE}.ALT_WHSE_CCY ;;
  }

  dimension: alt_whse_co {
    type: string
    sql: ${TABLE}.ALT_WHSE_CO ;;
  }

  dimension: aset_tag_sw {
    type: string
    sql: ${TABLE}.ASET_TAG_SW ;;
  }

  dimension: base_um {
    type: string
    sql: ${TABLE}.BASE_UM ;;
  }

  dimension: base_unit {
    type: string
    sql: ${TABLE}.BASE_UNIT ;;
  }

  dimension: bo_eta_date {
    type: number
    sql: ${TABLE}.BO_ETA_DATE ;;
  }

  dimension: boh_upd_online_sw {
    type: string
    sql: ${TABLE}.BOH_UPD_ONLINE_SW ;;
  }

  dimension: bordr_sw {
    type: string
    sql: ${TABLE}.BORDR_SW ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: canc_dt {
    type: number
    sql: ${TABLE}.CANC_DT ;;
  }

  dimension: cat_nbr {
    type: string
    sql: ${TABLE}.CAT_NBR ;;
  }

  dimension: cfg_ind {
    type: string
    sql: ${TABLE}.CFG_IND ;;
  }

  dimension: cfg_lab {
    type: string
    sql: ${TABLE}.CFG_LAB ;;
  }

  dimension: cfscmp_sys_item_co {
    type: string
    sql: ${TABLE}.CFSCMP_SYS_ITEM_CO ;;
  }

  dimension: cfscmp_sys_item_nbr {
    type: string
    sql: ${TABLE}.CFSCMP_SYS_ITEM_NBR ;;
  }

  dimension: cnsgm_inv_sw {
    type: string
    sql: ${TABLE}.CNSGM_INV_SW ;;
  }

  dimension: cntry_of_orig {
    type: string
    sql: ${TABLE}.CNTRY_OF_ORIG ;;
  }

  dimension: col_ind {
    type: string
    sql: ${TABLE}.COL_IND ;;
  }

  dimension: commod_cd {
    type: string
    sql: ${TABLE}.COMMOD_CD ;;
  }

  dimension: commod_code {
    type: string
    sql: ${TABLE}.COMMOD_CODE ;;
  }

  dimension: comp_qty_per {
    type: number
    sql: ${TABLE}.COMP_QTY_PER ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: config_asmby_cd {
    type: string
    sql: ${TABLE}.CONFIG_ASMBY_CD ;;
  }

  dimension: config_id {
    type: number
    sql: ${TABLE}.CONFIG_ID ;;
  }

  dimension: config_unit_price {
    type: number
    sql: ${TABLE}.CONFIG_UNIT_PRICE ;;
  }

  dimension: conv_base_price {
    type: number
    sql: ${TABLE}.CONV_BASE_PRICE ;;
  }

  dimension: coop_flg {
    type: string
    sql: ${TABLE}.COOP_FLG ;;
  }

  dimension: cua_ship_from {
    type: string
    sql: ${TABLE}.CUA_SHIP_FROM ;;
  }

  dimension: cus_orig_unit_prc {
    type: number
    sql: ${TABLE}.CUS_ORIG_UNIT_PRC ;;
  }

  dimension: cust_item_nbr {
    type: string
    sql: ${TABLE}.CUST_ITEM_NBR ;;
  }

  dimension: cust_line_nbr {
    type: string
    sql: ${TABLE}.CUST_LINE_NBR ;;
  }

  dimension: des {
    type: string
    sql: ${TABLE}.DES ;;
  }

  dimension: disc_cd {
    type: string
    sql: ${TABLE}.DISC_CD ;;
  }

  dimension: disc_pct {
    type: number
    sql: ${TABLE}.DISC_PCT ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: enty_dt {
    type: number
    sql: ${TABLE}.ENTY_DT ;;
  }

  dimension: enty_tm {
    type: number
    sql: ${TABLE}.ENTY_TM ;;
  }

  dimension: exp_licence {
    type: string
    sql: ${TABLE}.EXP_LICENCE ;;
  }

  dimension: foreign_unit_price {
    type: number
    sql: ${TABLE}.FOREIGN_UNIT_PRICE ;;
  }

  dimension: free_item_sw {
    type: string
    sql: ${TABLE}.FREE_ITEM_SW ;;
  }

  dimension: frgn_unit_prc_semi {
    type: number
    sql: ${TABLE}.FRGN_UNIT_PRC_SEMI ;;
  }

  dimension: frt_in_amt_bild {
    type: number
    sql: ${TABLE}.FRT_IN_AMT_BILD ;;
  }

  dimension: frt_out_amt_bild {
    type: number
    sql: ${TABLE}.FRT_OUT_AMT_BILD ;;
  }

  dimension: govt_bid_based_line_sw {
    type: string
    sql: ${TABLE}.GOVT_BID_BASED_LINE_SW ;;
  }

  dimension: hold_code {
    type: string
    sql: ${TABLE}.HOLD_CODE ;;
  }

  dimension: icms_tax_amt {
    type: number
    sql: ${TABLE}.ICMS_TAX_AMT ;;
  }

  dimension: im_part_nbr {
    type: string
    sql: ${TABLE}.IM_PART_NBR ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: in_stk_br {
    type: string
    sql: ${TABLE}.IN_STK_BR ;;
  }

  dimension: in_stk_oth {
    type: string
    sql: ${TABLE}.IN_STK_OTH ;;
  }

  dimension: inv_br_nbr {
    type: string
    sql: ${TABLE}.INV_BR_NBR ;;
  }

  dimension: inv_ind {
    type: string
    sql: ${TABLE}.INV_IND ;;
  }

  dimension: inv_unit_cost {
    type: number
    sql: ${TABLE}.INV_UNIT_COST ;;
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

  dimension: invoice_break_code {
    type: string
    sql: ${TABLE}.INVOICE_BREAK_CODE ;;
  }

  dimension: ipi_iss_tax_amt {
    type: number
    sql: ${TABLE}.IPI_ISS_TAX_AMT ;;
  }

  dimension: ipi_iss_tax_sw {
    type: string
    sql: ${TABLE}.IPI_ISS_TAX_SW ;;
  }

  dimension: is_slsmn {
    type: string
    sql: ${TABLE}.IS_SLSMN ;;
  }

  dimension: item_cnsnd_sw {
    type: string
    sql: ${TABLE}.ITEM_CNSND_SW ;;
  }

  dimension: item_typ {
    type: string
    sql: ${TABLE}.ITEM_TYP ;;
  }

  dimension: key_br {
    type: string
    sql: ${TABLE}.KEY_BR ;;
  }

  dimension: key_co {
    type: string
    sql: ${TABLE}.KEY_CO ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: line_stus {
    type: string
    sql: ${TABLE}.LINE_STUS ;;
  }

  dimension: line_typ {
    type: string
    sql: ${TABLE}.LINE_TYP ;;
  }

  dimension: lsb {
    type: string
    sql: ${TABLE}.LSB ;;
  }

  dimension: lsb_qty_avail {
    type: number
    sql: ${TABLE}.LSB_QTY_AVAIL ;;
  }

  dimension: lst_chg_dt {
    type: number
    sql: ${TABLE}.LST_CHG_DT ;;
  }

  dimension: lst_chg_opid {
    type: string
    sql: ${TABLE}.LST_CHG_OPID ;;
  }

  dimension: lst_chg_tm {
    type: number
    sql: ${TABLE}.LST_CHG_TM ;;
  }

  dimension: maq_ind {
    type: string
    sql: ${TABLE}.MAQ_IND ;;
  }

  dimension: mc_oride_sw {
    type: string
    sql: ${TABLE}.MC_ORIDE_SW ;;
  }

  dimension: mchg_cd {
    type: string
    sql: ${TABLE}.MCHG_CD ;;
  }

  dimension: non_std_conv_sw {
    type: string
    sql: ${TABLE}.NON_STD_CONV_SW ;;
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

  dimension: orig_adj_cost {
    type: number
    sql: ${TABLE}.ORIG_ADJ_COST ;;
  }

  dimension: os_slsmn {
    type: string
    sql: ${TABLE}.OS_SLSMN ;;
  }

  dimension: oss_no {
    type: string
    sql: ${TABLE}.OSS_NO ;;
  }

  dimension: pc_tax_amt {
    type: number
    sql: ${TABLE}.PC_TAX_AMT ;;
  }

  dimension: pgm_typ1 {
    type: string
    sql: ${TABLE}.PGM_TYP1 ;;
  }

  dimension: pgm_typ2 {
    type: string
    sql: ${TABLE}.PGM_TYP2 ;;
  }

  dimension: prms_dt {
    type: number
    sql: ${TABLE}.PRMS_DT ;;
  }

  dimension: promo_cd {
    type: string
    sql: ${TABLE}.PROMO_CD ;;
  }

  dimension: qty_bild {
    type: number
    sql: ${TABLE}.QTY_BILD ;;
  }

  dimension: qty_bord {
    type: number
    sql: ${TABLE}.QTY_BORD ;;
  }

  dimension: qty_orded {
    type: number
    sql: ${TABLE}.QTY_ORDED ;;
  }

  dimension: qty_shpd {
    type: number
    sql: ${TABLE}.QTY_SHPD ;;
  }

  dimension: rebat_amt {
    type: number
    sql: ${TABLE}.REBAT_AMT ;;
  }

  dimension: refdir_override_text {
    type: string
    sql: ${TABLE}.REFDIR_OVERRIDE_TEXT ;;
  }

  dimension: refdir_ovrd_typ {
    type: string
    sql: ${TABLE}.REFDIR_OVRD_TYP ;;
  }

  dimension: rel_govt_bid_vsn {
    type: string
    sql: ${TABLE}.REL_GOVT_BID_VSN ;;
  }

  dimension: related_govt_bid_gsn {
    type: string
    sql: ${TABLE}.RELATED_GOVT_BID_GSN ;;
  }

  dimension: req_prft_pct {
    type: number
    sql: ${TABLE}.REQ_PRFT_PCT ;;
  }

  dimension: reserve_type_sw {
    type: string
    sql: ${TABLE}.RESERVE_TYPE_SW ;;
  }

  dimension: resv_seq_nbr {
    type: string
    sql: ${TABLE}.RESV_SEQ_NBR ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.RETAIL_PRICE ;;
  }

  dimension: rma_overgoods_cd {
    type: string
    sql: ${TABLE}.RMA_OVERGOODS_CD ;;
  }

  dimension: roll_sw {
    type: string
    sql: ${TABLE}.ROLL_SW ;;
  }

  dimension: rvs_acop_ind {
    type: string
    sql: ${TABLE}.RVS_ACOP_IND ;;
  }

  dimension: sbstut_cost {
    type: number
    sql: ${TABLE}.SBSTUT_COST ;;
  }

  dimension: semi_cnduc_sw {
    type: string
    sql: ${TABLE}.SEMI_CNDUC_SW ;;
  }

  dimension: serial_nbr_avail_sw {
    type: string
    sql: ${TABLE}.SERIAL_NBR_AVAIL_SW ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: sht_ind {
    type: string
    sql: ${TABLE}.SHT_IND ;;
  }

  dimension: sls_typ_sw {
    type: string
    sql: ${TABLE}.SLS_TYP_SW ;;
  }

  dimension: spec_comp_ind {
    type: string
    sql: ${TABLE}.SPEC_COMP_IND ;;
  }

  dimension: special_systems_cost {
    type: number
    sql: ${TABLE}.SPECIAL_SYSTEMS_COST ;;
  }

  dimension: split_bill_to_suff {
    type: string
    sql: ${TABLE}.SPLIT_BILL_TO_SUFF ;;
  }

  dimension: sys_cmpnt_sw {
    type: string
    sql: ${TABLE}.SYS_CMPNT_SW ;;
  }

  dimension: sys_item_line_nbr {
    type: string
    sql: ${TABLE}.SYS_ITEM_LINE_NBR ;;
  }

  dimension: tax_cd {
    type: string
    sql: ${TABLE}.TAX_CD ;;
  }

  dimension: terms {
    type: number
    sql: ${TABLE}.TERMS ;;
  }

  dimension: tr_to_br_nbr {
    type: string
    sql: ${TABLE}.TR_TO_BR_NBR ;;
  }

  dimension: tr_to_dist_nbr {
    type: string
    sql: ${TABLE}.TR_TO_DIST_NBR ;;
  }

  dimension: tr_to_ordr_nbr {
    type: string
    sql: ${TABLE}.TR_TO_ORDR_NBR ;;
  }

  dimension: tr_to_ship_nbr {
    type: string
    sql: ${TABLE}.TR_TO_SHIP_NBR ;;
  }

  dimension: trade_disc {
    type: number
    sql: ${TABLE}.TRADE_DISC ;;
  }

  dimension: txbl_item_sw {
    type: string
    sql: ${TABLE}.TXBL_ITEM_SW ;;
  }

  dimension: uc_oride_sw {
    type: string
    sql: ${TABLE}.UC_ORIDE_SW ;;
  }

  dimension: um {
    type: string
    sql: ${TABLE}.UM ;;
  }

  dimension: um_oride_sw {
    type: string
    sql: ${TABLE}.UM_ORIDE_SW ;;
  }

  dimension: unit_cost {
    type: number
    sql: ${TABLE}.UNIT_COST ;;
  }

  dimension: unit_prc {
    type: number
    sql: ${TABLE}.UNIT_PRC ;;
  }

  dimension: unit_prc_rslr {
    type: number
    sql: ${TABLE}.UNIT_PRC_RSLR ;;
  }

  dimension: unit_wgt {
    type: number
    sql: ${TABLE}.UNIT_WGT ;;
  }

  dimension: up_oride_sw {
    type: string
    sql: ${TABLE}.UP_ORIDE_SW ;;
  }

  dimension: upc_nbr {
    type: string
    sql: ${TABLE}.UPC_NBR ;;
  }

  dimension: usys_cont_acop_ind {
    type: string
    sql: ${TABLE}.USYS_CONT_ACOP_IND ;;
  }

  dimension: vat_tax_cd {
    type: string
    sql: ${TABLE}.VAT_TAX_CD ;;
  }

  dimension: vat_tax_rt {
    type: number
    sql: ${TABLE}.VAT_TAX_RT ;;
  }

  dimension: vdr_exchg_rate {
    type: number
    sql: ${TABLE}.VDR_EXCHG_RATE ;;
  }

  dimension: vdr_exchg_rt_typ {
    type: string
    sql: ${TABLE}.VDR_EXCHG_RT_TYP ;;
  }

  dimension: vend_nbr {
    type: string
    sql: ${TABLE}.VEND_NBR ;;
  }

  dimension: vend_part_nbr {
    type: string
    sql: ${TABLE}.VEND_PART_NBR ;;
  }

  dimension: wgt_per {
    type: string
    sql: ${TABLE}.WGT_PER ;;
  }

  dimension: xtra_des_sw {
    type: string
    sql: ${TABLE}.XTRA_DES_SW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
