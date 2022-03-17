# The name of this view in Looker is "Ods Po Hdr"
view: ods_po_hdr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_PO_HDR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alnce Flg" in Explore.

  dimension: alnce_flg {
    type: string
    sql: ${TABLE}.ALNCE_FLG ;;
  }

  dimension: asn_ru_vend_nbr {
    type: string
    sql: ${TABLE}.ASN_RU_VEND_NBR ;;
  }

  dimension: auto_fax_flg {
    type: string
    sql: ${TABLE}.AUTO_FAX_FLG ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: bt_dlog_nbr {
    type: string
    sql: ${TABLE}.BT_DLOG_NBR ;;
  }

  dimension: byr_nbr {
    type: string
    sql: ${TABLE}.BYR_NBR ;;
  }

  dimension: cbn_ind {
    type: string
    sql: ${TABLE}.CBN_IND ;;
  }

  dimension: ccy_cd {
    type: string
    sql: ${TABLE}.CCY_CD ;;
  }

  dimension: ccy_rate_amt {
    type: number
    sql: ${TABLE}.CCY_RATE_AMT ;;
  }

  dimension: cfg_xfer_flg {
    type: string
    sql: ${TABLE}.CFG_XFER_FLG ;;
  }

  dimension: cnfm_flg {
    type: string
    sql: ${TABLE}.CNFM_FLG ;;
  }

  dimension: cnsg_acct_po_flg {
    type: string
    sql: ${TABLE}.CNSG_ACCT_PO_FLG ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: comp_mth {
    type: string
    sql: ${TABLE}.COMP_MTH ;;
  }

  dimension: cons_po_flg {
    type: string
    sql: ${TABLE}.CONS_PO_FLG ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: crt_dt {
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
    sql: ${TABLE}.CRT_DT ;;
  }

  dimension: cso_trk_nbr {
    type: number
    sql: ${TABLE}.CSO_TRK_NBR ;;
  }

  dimension: dlog_invc_nbr {
    type: string
    sql: ${TABLE}.DLOG_INVC_NBR ;;
  }

  dimension: dsfr2_who_pays_ind {
    type: string
    sql: ${TABLE}.DSFR2_WHO_PAYS_IND ;;
  }

  dimension: dvsn_cd {
    type: string
    sql: ${TABLE}.DVSN_CD ;;
  }

  dimension: edi_cnt {
    type: string
    sql: ${TABLE}.EDI_CNT ;;
  }

  dimension: edi_invc_rcv_flg {
    type: string
    sql: ${TABLE}.EDI_INVC_RCV_FLG ;;
  }

  dimension: edi_send_flg {
    type: string
    sql: ${TABLE}.EDI_SEND_FLG ;;
  }

  dimension: emp_signr_txt {
    type: string
    sql: ${TABLE}.EMP_SIGNR_TXT ;;
  }

  dimension: eta_flg {
    type: string
    sql: ${TABLE}.ETA_FLG ;;
  }

  dimension: eu_addr_sfx_nbr {
    type: string
    sql: ${TABLE}.EU_ADDR_SFX_NBR ;;
  }

  dimension: eu_auth_cd {
    type: string
    sql: ${TABLE}.EU_AUTH_CD ;;
  }

  dimension: eu_cont_sfx_nbr {
    type: string
    sql: ${TABLE}.EU_CONT_SFX_NBR ;;
  }

  dimension: eu_nbr {
    type: string
    sql: ${TABLE}.EU_NBR ;;
  }

  dimension: eu_vend_flg {
    type: string
    sql: ${TABLE}.EU_VEND_FLG ;;
  }

  dimension: fax_cnt {
    type: string
    sql: ${TABLE}.FAX_CNT ;;
  }

  dimension: fob_cd {
    type: string
    sql: ${TABLE}.FOB_CD ;;
  }

  dimension: fr_cons_ctr_flg {
    type: string
    sql: ${TABLE}.FR_CONS_CTR_FLG ;;
  }

  dimension: government_bid_flag {
    type: string
    sql: ${TABLE}.GOVERNMENT_BID_FLAG ;;
  }

  dimension: govt_gsa_ind {
    type: string
    sql: ${TABLE}.GOVT_GSA_IND ;;
  }

  dimension: gst_tax_cd {
    type: string
    sql: ${TABLE}.GST_TAX_CD ;;
  }

  dimension: gwmd_disc_flag {
    type: string
    sql: ${TABLE}.GWMD_DISC_FLAG ;;
  }

  dimension: hp_csn {
    type: string
    sql: ${TABLE}.HP_CSN ;;
  }

  dimension: ia_enty_form_flg {
    type: string
    sql: ${TABLE}.IA_ENTY_FORM_FLG ;;
  }

  dimension: imd_via_cd {
    type: string
    sql: ${TABLE}.IMD_VIA_CD ;;
  }

  dimension: imd_via_fil_txt {
    type: string
    sql: ${TABLE}.IMD_VIA_FIL_TXT ;;
  }

  dimension: imfirst_dl_rec_sw {
    type: string
    sql: ${TABLE}.IMFIRST_DL_REC_SW ;;
  }

  dimension: imgn_disc_flag {
    type: string
    sql: ${TABLE}.IMGN_DISC_FLAG ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: inv_br_nbr {
    type: string
    sql: ${TABLE}.INV_BR_NBR ;;
  }

  dimension: inv_vend_nbr {
    type: string
    sql: ${TABLE}.INV_VEND_NBR ;;
  }

  dimension: l_sku_typ_po_flg {
    type: string
    sql: ${TABLE}.L_SKU_TYP_PO_FLG ;;
  }

  dimension: last_line_nbr {
    type: number
    sql: ${TABLE}.LAST_LINE_NBR ;;
  }

  dimension: last_recpt_nbr {
    type: number
    sql: ${TABLE}.LAST_RECPT_NBR ;;
  }

  dimension: last_recpt_op_id {
    type: string
    sql: ${TABLE}.LAST_RECPT_OP_ID ;;
  }

  dimension: last_recpt_typ_cd {
    type: string
    sql: ${TABLE}.LAST_RECPT_TYP_CD ;;
  }

  dimension: mfg_ordr_nbr {
    type: string
    sql: ${TABLE}.MFG_ORDR_NBR ;;
  }

  dimension: mfg_plnt_nbr {
    type: string
    sql: ${TABLE}.MFG_PLNT_NBR ;;
  }

  dimension: mother_whse_po_ind {
    type: string
    sql: ${TABLE}.MOTHER_WHSE_PO_IND ;;
  }

  dimension: new_po_flg {
    type: string
    sql: ${TABLE}.NEW_PO_FLG ;;
  }

  dimension: np_order_ind {
    type: string
    sql: ${TABLE}.NP_ORDER_IND ;;
  }

  dimension_group: ods_last_upd_ts {
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
    sql: ${TABLE}.ODS_LAST_UPD_TS ;;
  }

  dimension: orig_sys_cd {
    type: string
    sql: ${TABLE}.ORIG_SYS_CD ;;
  }

  dimension: ploc_cd {
    type: string
    sql: ${TABLE}.PLOC_CD ;;
  }

  dimension: po_cnsg_flg {
    type: string
    sql: ${TABLE}.PO_CNSG_FLG ;;
  }

  dimension: po_crt_op_id {
    type: string
    sql: ${TABLE}.PO_CRT_OP_ID ;;
  }

  dimension_group: po_dt {
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
    sql: ${TABLE}.PO_DT ;;
  }

  dimension: po_eta_src_cd {
    type: string
    sql: ${TABLE}.PO_ETA_SRC_CD ;;
  }

  dimension: po_frt_out_cd {
    type: string
    sql: ${TABLE}.PO_FRT_OUT_CD ;;
  }

  dimension: po_manu_send_flg {
    type: string
    sql: ${TABLE}.PO_MANU_SEND_FLG ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: po_pay_typ_cd {
    type: string
    sql: ${TABLE}.PO_PAY_TYP_CD ;;
  }

  dimension: po_prty_cd {
    type: string
    sql: ${TABLE}.PO_PRTY_CD ;;
  }

  dimension: po_stus_cd {
    type: string
    sql: ${TABLE}.PO_STUS_CD ;;
  }

  dimension: po_typ_cd {
    type: string
    sql: ${TABLE}.PO_TYP_CD ;;
  }

  dimension_group: prms_dt {
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
    sql: ${TABLE}.PRMS_DT ;;
  }

  dimension: prms_tm {
    type: number
    sql: ${TABLE}.PRMS_TM ;;
  }

  dimension: prnt_edi_fax_flg {
    type: string
    sql: ${TABLE}.PRNT_EDI_FAX_FLG ;;
  }

  dimension: prt_cnt {
    type: string
    sql: ${TABLE}.PRT_CNT ;;
  }

  dimension: pur_vend_nbr {
    type: string
    sql: ${TABLE}.PUR_VEND_NBR ;;
  }

  dimension: rcv_in_prog_flg {
    type: string
    sql: ${TABLE}.RCV_IN_PROG_FLG ;;
  }

  dimension_group: req_recpt_dt {
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
    sql: ${TABLE}.REQ_RECPT_DT ;;
  }

  dimension: rf_bt_flg {
    type: string
    sql: ${TABLE}.RF_BT_FLG ;;
  }

  dimension: rslr_po_nbr {
    type: string
    sql: ${TABLE}.RSLR_PO_NBR ;;
  }

  dimension: rtns_hold_code {
    type: string
    sql: ${TABLE}.RTNS_HOLD_CODE ;;
  }

  dimension: rtns_hold_type {
    type: string
    sql: ${TABLE}.RTNS_HOLD_TYPE ;;
  }

  dimension: sf_br {
    type: string
    sql: ${TABLE}.SF_BR ;;
  }

  dimension: ship_cmplt_flg {
    type: string
    sql: ${TABLE}.SHIP_CMPLT_FLG ;;
  }

  dimension: ship_fr_st_cd {
    type: string
    sql: ${TABLE}.SHIP_FR_ST_CD ;;
  }

  dimension: slsmn_id {
    type: string
    sql: ${TABLE}.SLSMN_ID ;;
  }

  dimension: so_br_nbr {
    type: string
    sql: ${TABLE}.SO_BR_NBR ;;
  }

  dimension: so_co_cd {
    type: string
    sql: ${TABLE}.SO_CO_CD ;;
  }

  dimension: so_dist_nbr {
    type: string
    sql: ${TABLE}.SO_DIST_NBR ;;
  }

  dimension_group: so_enty_dt {
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
    sql: ${TABLE}.SO_ENTY_DT ;;
  }

  dimension: so_nbr {
    type: string
    sql: ${TABLE}.SO_NBR ;;
  }

  dimension: so_ship_nbr {
    type: string
    sql: ${TABLE}.SO_SHIP_NBR ;;
  }

  dimension: so_to_cust_typ_cd {
    type: string
    sql: ${TABLE}.SO_TO_CUST_TYP_CD ;;
  }

  dimension: spec_disc_pct {
    type: number
    sql: ${TABLE}.SPEC_DISC_PCT ;;
  }

  dimension_group: stus_dt {
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
    sql: ${TABLE}.STUS_DT ;;
  }

  dimension: term_id {
    type: string
    sql: ${TABLE}.TERM_ID ;;
  }

  dimension: terms_disc_day {
    type: number
    sql: ${TABLE}.TERMS_DISC_DAY ;;
  }

  dimension: terms_disc_pct {
    type: number
    sql: ${TABLE}.TERMS_DISC_PCT ;;
  }

  dimension: terms_net_day {
    type: number
    sql: ${TABLE}.TERMS_NET_DAY ;;
  }

  dimension: terms_ovr_flg {
    type: string
    sql: ${TABLE}.TERMS_OVR_FLG ;;
  }

  dimension: thpty_frt_acct_nbr {
    type: string
    sql: ${TABLE}.THPTY_FRT_ACCT_NBR ;;
  }

  dimension: tot_cost_amt {
    type: number
    sql: ${TABLE}.TOT_COST_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tot_cost_amt {
    type: sum
    sql: ${tot_cost_amt} ;;
  }

  measure: average_tot_cost_amt {
    type: average
    sql: ${tot_cost_amt} ;;
  }

  dimension: tot_cost_locl_amt {
    type: number
    sql: ${TABLE}.TOT_COST_LOCL_AMT ;;
  }

  dimension: tot_cost_tran_amt {
    type: number
    sql: ${TABLE}.TOT_COST_TRAN_AMT ;;
  }

  dimension: tot_rcv_cost_amt {
    type: number
    sql: ${TABLE}.TOT_RCV_COST_AMT ;;
  }

  dimension: tot_recpt_cnt {
    type: number
    sql: ${TABLE}.TOT_RECPT_CNT ;;
  }

  dimension: tot_wgt {
    type: number
    sql: ${TABLE}.TOT_WGT ;;
  }

  dimension: trcr_cnt {
    type: string
    sql: ${TABLE}.TRCR_CNT ;;
  }

  dimension_group: trcr_dt {
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
    sql: ${TABLE}.TRCR_DT ;;
  }

  dimension: vat_br_xfer_flg {
    type: string
    sql: ${TABLE}.VAT_BR_XFER_FLG ;;
  }

  dimension: vend_ctry_flg {
    type: string
    sql: ${TABLE}.VEND_CTRY_FLG ;;
  }

  dimension: vend_lic_auth_nbr {
    type: string
    sql: ${TABLE}.VEND_LIC_AUTH_NBR ;;
  }

  dimension: vend_po_nbr {
    type: string
    sql: ${TABLE}.VEND_PO_NBR ;;
  }

  dimension: vend_sfx_nbr {
    type: string
    sql: ${TABLE}.VEND_SFX_NBR ;;
  }

  dimension: vend_ship_id {
    type: string
    sql: ${TABLE}.VEND_SHIP_ID ;;
  }

  dimension: vsn_dt {
    type: number
    sql: ${TABLE}.VSN_DT ;;
  }

  dimension: vsn_tm {
    type: number
    sql: ${TABLE}.VSN_TM ;;
  }

  dimension_group: vsn_ts {
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
    sql: ${TABLE}.VSN_TS ;;
  }

  dimension: vsq_ordr_flg {
    type: string
    sql: ${TABLE}.VSQ_ORDR_FLG ;;
  }

  dimension: web_send_cnt {
    type: string
    sql: ${TABLE}.WEB_SEND_CNT ;;
  }

  dimension: web_send_flg {
    type: string
    sql: ${TABLE}.WEB_SEND_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
