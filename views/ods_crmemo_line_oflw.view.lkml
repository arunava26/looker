# The name of this view in Looker is "Ods Crmemo Line Oflw"
view: ods_crmemo_line_oflw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_CRMEMO_LINE_OFLW`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Bid Nbr" in Explore.

  dimension: acop_bid_nbr {
    type: string
    sql: ${TABLE}.ACOP_BID_NBR ;;
  }

  dimension: acop_dt {
    type: number
    sql: ${TABLE}.ACOP_DT ;;
  }

  dimension: acop_prg_cmpnt_flg {
    type: string
    sql: ${TABLE}.ACOP_PRG_CMPNT_FLG ;;
  }

  dimension: acop_tm {
    type: number
    sql: ${TABLE}.ACOP_TM ;;
  }

  dimension: aply_acop_delta_cd {
    type: string
    sql: ${TABLE}.APLY_ACOP_DELTA_CD ;;
  }

  dimension: aply_acop_delta_ind_src_cd {
    type: string
    sql: ${TABLE}.APLY_ACOP_DELTA_IND_SRC_CD ;;
  }

  dimension: bpas_neg_mrgn_flg {
    type: string
    sql: ${TABLE}.BPAS_NEG_MRGN_FLG ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: cform_cd {
    type: string
    sql: ${TABLE}.CFORM_CD ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: comt_updt_flg {
    type: string
    sql: ${TABLE}.COMT_UPDT_FLG ;;
  }

  dimension: crdt_memo_rma_br_nbr {
    type: string
    sql: ${TABLE}.CRDT_MEMO_RMA_BR_NBR ;;
  }

  dimension: crdt_memo_rma_dist_nbr {
    type: string
    sql: ${TABLE}.CRDT_MEMO_RMA_DIST_NBR ;;
  }

  dimension: crdt_memo_rma_enty_dt {
    type: number
    sql: ${TABLE}.CRDT_MEMO_RMA_ENTY_DT ;;
  }

  dimension: crdt_memo_rma_line_nbr {
    type: string
    sql: ${TABLE}.CRDT_MEMO_RMA_LINE_NBR ;;
  }

  dimension: crdt_memo_rma_ordr_nbr {
    type: string
    sql: ${TABLE}.CRDT_MEMO_RMA_ORDR_NBR ;;
  }

  dimension: crdt_memo_rma_ship_nbr {
    type: string
    sql: ${TABLE}.CRDT_MEMO_RMA_SHIP_NBR ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: ds_eu_nameadd_cd {
    type: string
    sql: ${TABLE}.DS_EU_NAMEADD_CD ;;
  }

  dimension: ds_oth_line_info_cd {
    type: string
    sql: ${TABLE}.DS_OTH_LINE_INFO_CD ;;
  }

  dimension: dum_part_flg {
    type: string
    sql: ${TABLE}.DUM_PART_FLG ;;
  }

  dimension: dv_unit_prc_amt {
    type: number
    sql: ${TABLE}.DV_UNIT_PRC_AMT ;;
  }

  dimension: eu_data_avail_flg {
    type: string
    sql: ${TABLE}.EU_DATA_AVAIL_FLG ;;
  }

  dimension: eu_hld_flg {
    type: string
    sql: ${TABLE}.EU_HLD_FLG ;;
  }

  dimension: eu_mrkt_sgmt_typ_cd {
    type: string
    sql: ${TABLE}.EU_MRKT_SGMT_TYP_CD ;;
  }

  dimension: eu_mrkt_sgmt_typ_src_cd {
    type: string
    sql: ${TABLE}.EU_MRKT_SGMT_TYP_SRC_CD ;;
  }

  dimension: eu_po_nbr {
    type: string
    sql: ${TABLE}.EU_PO_NBR ;;
  }

  dimension: gsa_flg {
    type: string
    sql: ${TABLE}.GSA_FLG ;;
  }

  dimension: hld_acop_flg {
    type: string
    sql: ${TABLE}.HLD_ACOP_FLG ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: india_fifo_cost {
    type: number
    sql: ${TABLE}.INDIA_FIFO_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_india_fifo_cost {
    type: sum
    sql: ${india_fifo_cost} ;;
  }

  measure: average_india_fifo_cost {
    type: average
    sql: ${india_fifo_cost} ;;
  }

  dimension: india_gst_order_type_ind {
    type: string
    sql: ${TABLE}.INDIA_GST_ORDER_TYPE_IND ;;
  }

  dimension: instt_typ_cd {
    type: string
    sql: ${TABLE}.INSTT_TYP_CD ;;
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

  dimension: licen_flg {
    type: string
    sql: ${TABLE}.LICEN_FLG ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: mp255_assortment_nbr {
    type: string
    sql: ${TABLE}.MP255_ASSORTMENT_NBR ;;
  }

  dimension: mp255_exempt_cd {
    type: string
    sql: ${TABLE}.MP255_EXEMPT_CD ;;
  }

  dimension: mp255_non_mast_sku_flg {
    type: string
    sql: ${TABLE}.MP255_NON_MAST_SKU_FLG ;;
  }

  dimension: mp255_opid {
    type: string
    sql: ${TABLE}.MP255_OPID ;;
  }

  dimension: mp255_price_wtax {
    type: number
    sql: ${TABLE}.MP255_PRICE_WTAX ;;
  }

  dimension: mp255_tax_flag {
    type: string
    sql: ${TABLE}.MP255_TAX_FLAG ;;
  }

  dimension: mp255_tax_rate {
    type: number
    sql: ${TABLE}.MP255_TAX_RATE ;;
  }

  dimension: np_ind {
    type: string
    sql: ${TABLE}.NP_IND ;;
  }

  dimension: np_so_cost {
    type: number
    sql: ${TABLE}.NP_SO_COST ;;
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

  dimension: orig_invc_dt {
    type: number
    sql: ${TABLE}.ORIG_INVC_DT ;;
  }

  dimension: orig_invc_req_flg {
    type: string
    sql: ${TABLE}.ORIG_INVC_REQ_FLG ;;
  }

  dimension: orig_invc_src_flg {
    type: string
    sql: ${TABLE}.ORIG_INVC_SRC_FLG ;;
  }

  dimension: orig_ordr_line_nbr {
    type: string
    sql: ${TABLE}.ORIG_ORDR_LINE_NBR ;;
  }

  dimension: orig_ordr_nbr {
    type: string
    sql: ${TABLE}.ORIG_ORDR_NBR ;;
  }

  dimension: orig_ordr_slin_nbr {
    type: number
    sql: ${TABLE}.ORIG_ORDR_SLIN_NBR ;;
  }

  dimension: orig_ship_nbr {
    type: string
    sql: ${TABLE}.ORIG_SHIP_NBR ;;
  }

  dimension: orlof_po_x_so_cost_amt {
    type: number
    sql: ${TABLE}.ORLOF_PO_X_SO_COST_AMT ;;
  }

  dimension: orslneof_key {
    type: string
    sql: ${TABLE}.ORSLNEOF_KEY ;;
  }

  dimension: ovrgd_aud_df_pd_flg {
    type: string
    sql: ${TABLE}.OVRGD_AUD_DF_PD_FLG ;;
  }

  dimension: prod_sls_mngt_ordr_cd {
    type: string
    sql: ${TABLE}.PROD_SLS_MNGT_ORDR_CD ;;
  }

  dimension: prt_st_tax_amt {
    type: number
    sql: ${TABLE}.PRT_ST_TAX_AMT ;;
  }

  dimension: prt_st_tax_pct {
    type: number
    sql: ${TABLE}.PRT_ST_TAX_PCT ;;
  }

  dimension: rcn_rcn_id {
    type: string
    sql: ${TABLE}.RCN_RCN_ID ;;
  }

  dimension: rcyc_fee_amt {
    type: number
    sql: ${TABLE}.RCYC_FEE_AMT ;;
  }

  dimension: rpl_eu_hit_flg {
    type: string
    sql: ${TABLE}.RPL_EU_HIT_FLG ;;
  }

  dimension: rpl_eu_mtch_scor_nbr {
    type: string
    sql: ${TABLE}.RPL_EU_MTCH_SCOR_NBR ;;
  }

  dimension: rpl_eu_nam_addr_id {
    type: number
    sql: ${TABLE}.RPL_EU_NAM_ADDR_ID ;;
  }

  dimension: rslr_addr_seq_nbr {
    type: number
    sql: ${TABLE}.RSLR_ADDR_SEQ_NBR ;;
  }

  dimension: rslr_base_prc_amt {
    type: number
    sql: ${TABLE}.RSLR_BASE_PRC_AMT ;;
  }

  dimension: rslr_eu_ctac_id {
    type: number
    sql: ${TABLE}.RSLR_EU_CTAC_ID ;;
  }

  dimension: rslr_eu_id {
    type: number
    sql: ${TABLE}.RSLR_EU_ID ;;
  }

  dimension: rslr_prc_tax_0_amt {
    type: number
    sql: ${TABLE}.RSLR_PRC_TAX_0_AMT ;;
  }

  dimension: rtc_rsn_cd {
    type: string
    sql: ${TABLE}.RTC_RSN_CD ;;
  }

  dimension: rtun_disp_nbr {
    type: string
    sql: ${TABLE}.RTUN_DISP_NBR ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: sp_hld_flg {
    type: string
    sql: ${TABLE}.SP_HLD_FLG ;;
  }

  dimension: srv_rt_0_amt {
    type: number
    sql: ${TABLE}.SRV_RT_0_AMT ;;
  }

  dimension: srv_tax_0_amt {
    type: number
    sql: ${TABLE}.SRV_TAX_0_AMT ;;
  }

  dimension: system_component_sw {
    type: string
    sql: ${TABLE}.SYSTEM_COMPONENT_SW ;;
  }

  dimension: tot_acop_delta_amt {
    type: number
    sql: ${TABLE}.TOT_ACOP_DELTA_AMT ;;
  }

  dimension: tot_acop_delta_prc_amt {
    type: number
    sql: ${TABLE}.TOT_ACOP_DELTA_PRC_AMT ;;
  }

  dimension: vend_acop_pgm_cd {
    type: string
    sql: ${TABLE}.VEND_ACOP_PGM_CD ;;
  }

  dimension: warr_ext_hd_order_dist {
    type: string
    sql: ${TABLE}.WARR_EXT_HD_ORDER_DIST ;;
  }

  dimension: warr_ext_hd_order_nbr {
    type: string
    sql: ${TABLE}.WARR_EXT_HD_ORDER_NBR ;;
  }

  dimension: warr_ext_hd_order_ship {
    type: string
    sql: ${TABLE}.WARR_EXT_HD_ORDER_SHIP ;;
  }

  dimension: warr_ext_hdware_line_nbr {
    type: string
    sql: ${TABLE}.WARR_EXT_HDWARE_LINE_NBR ;;
  }

  dimension: warr_typ_sw {
    type: string
    sql: ${TABLE}.WARR_TYP_SW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
