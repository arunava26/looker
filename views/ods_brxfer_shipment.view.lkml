# The name of this view in Looker is "Ods Brxfer Shipment"
view: ods_brxfer_shipment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_BRXFER_SHIPMENT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Act Tot Wgt" in Explore.

  dimension: act_tot_wgt {
    type: number
    sql: ${TABLE}.ACT_TOT_WGT ;;
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

  dimension: alt_wh_ccy_rt {
    type: number
    sql: ${TABLE}.ALT_WH_CCY_RT ;;
  }

  dimension: alt_whse_co {
    type: string
    sql: ${TABLE}.ALT_WHSE_CO ;;
  }

  dimension: bank_cd {
    type: string
    sql: ${TABLE}.BANK_CD ;;
  }

  dimension: bill_lad_nbr {
    type: string
    sql: ${TABLE}.BILL_LAD_NBR ;;
  }

  dimension: bill_mthd_sw {
    type: string
    sql: ${TABLE}.BILL_MTHD_SW ;;
  }

  dimension: bill_only_sw {
    type: string
    sql: ${TABLE}.BILL_ONLY_SW ;;
  }

  dimension: bkslp_data {
    type: string
    sql: ${TABLE}.BKSLP_DATA ;;
  }

  dimension: bordr_frt_chrg_cd {
    type: string
    sql: ${TABLE}.BORDR_FRT_CHRG_CD ;;
  }

  dimension: bordr_stus {
    type: string
    sql: ${TABLE}.BORDR_STUS ;;
  }

  dimension: bpas_sell_cr_hld {
    type: string
    sql: ${TABLE}.BPAS_SELL_CR_HLD ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: branch_nbr_ship_from {
    type: string
    sql: ${TABLE}.BRANCH_NBR_SHIP_FROM ;;
  }

  dimension: bz_bkslp_data {
    type: number
    sql: ${TABLE}.BZ_BKSLP_DATA ;;
  }

  dimension: carr_cd {
    type: string
    sql: ${TABLE}.CARR_CD ;;
  }

  dimension: carr_sw {
    type: string
    sql: ${TABLE}.CARR_SW ;;
  }

  dimension: carr_typ {
    type: string
    sql: ${TABLE}.CARR_TYP ;;
  }

  dimension: cfg_flg {
    type: string
    sql: ${TABLE}.CFG_FLG ;;
  }

  dimension: cfop_1 {
    type: string
    sql: ${TABLE}.CFOP_1 ;;
  }

  dimension: cfop_cd_2 {
    type: string
    sql: ${TABLE}.CFOP_CD_2 ;;
  }

  dimension: cofins_tax_rt {
    type: number
    sql: ${TABLE}.COFINS_TAX_RT ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: config_finc_br {
    type: string
    sql: ${TABLE}.CONFIG_FINC_BR ;;
  }

  dimension: config_stus {
    type: string
    sql: ${TABLE}.CONFIG_STUS ;;
  }

  dimension: cr_memo_cd {
    type: string
    sql: ${TABLE}.CR_MEMO_CD ;;
  }

  dimension: cr_memo_rsn {
    type: string
    sql: ${TABLE}.CR_MEMO_RSN ;;
  }

  dimension: def_carr_cd {
    type: string
    sql: ${TABLE}.DEF_CARR_CD ;;
  }

  dimension: disc_amt {
    type: number
    sql: ${TABLE}.DISC_AMT ;;
  }

  dimension: disc_qualify_sw {
    type: string
    sql: ${TABLE}.DISC_QUALIFY_SW ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: dlvy_rstr {
    type: string
    sql: ${TABLE}.DLVY_RSTR ;;
  }

  dimension: enty_dt_ccyymmdd {
    type: number
    sql: ${TABLE}.ENTY_DT_CCYYMMDD ;;
  }

  dimension: exp_ord_ind {
    type: string
    sql: ${TABLE}.EXP_ORD_IND ;;
  }

  dimension: fo_ovrd_cd {
    type: string
    sql: ${TABLE}.FO_OVRD_CD ;;
  }

  dimension: fob_cd {
    type: string
    sql: ${TABLE}.FOB_CD ;;
  }

  dimension: freight_fwrd_ind {
    type: string
    sql: ${TABLE}.FREIGHT_FWRD_IND ;;
  }

  dimension: frgn_disc_amt {
    type: number
    sql: ${TABLE}.FRGN_DISC_AMT ;;
  }

  dimension: frgn_frt_in_amt {
    type: number
    sql: ${TABLE}.FRGN_FRT_IN_AMT ;;
  }

  dimension: frgn_frt_out_amt {
    type: number
    sql: ${TABLE}.FRGN_FRT_OUT_AMT ;;
  }

  dimension: frgn_tot_sls_amt {
    type: number
    sql: ${TABLE}.FRGN_TOT_SLS_AMT ;;
  }

  dimension: frgn_tot_tax {
    type: number
    sql: ${TABLE}.FRGN_TOT_TAX ;;
  }

  dimension: frt_chrg_excpt_sw {
    type: string
    sql: ${TABLE}.FRT_CHRG_EXCPT_SW ;;
  }

  dimension: frt_cus_pays {
    type: number
    sql: ${TABLE}.FRT_CUS_PAYS ;;
  }

  dimension: frt_in_amt {
    type: number
    sql: ${TABLE}.FRT_IN_AMT ;;
  }

  dimension: frt_in_cd {
    type: string
    sql: ${TABLE}.FRT_IN_CD ;;
  }

  dimension: frt_out_amt {
    type: number
    sql: ${TABLE}.FRT_OUT_AMT ;;
  }

  dimension: frt_out_cd {
    type: string
    sql: ${TABLE}.FRT_OUT_CD ;;
  }

  dimension: frt_out_cost_amt {
    type: number
    sql: ${TABLE}.FRT_OUT_COST_AMT ;;
  }

  dimension: frt_split_sw {
    type: string
    sql: ${TABLE}.FRT_SPLIT_SW ;;
  }

  dimension: frt_tax {
    type: number
    sql: ${TABLE}.FRT_TAX ;;
  }

  dimension: grnd_frt_out_amt {
    type: number
    sql: ${TABLE}.GRND_FRT_OUT_AMT ;;
  }

  dimension: grs_tax_cd {
    type: string
    sql: ${TABLE}.GRS_TAX_CD ;;
  }

  dimension: grs_tax_rt {
    type: number
    sql: ${TABLE}.GRS_TAX_RT ;;
  }

  dimension: hld_rsn {
    type: string
    sql: ${TABLE}.HLD_RSN ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
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

  dimension: iva_nonreg_rt {
    type: number
    sql: ${TABLE}.IVA_NONREG_RT ;;
  }

  dimension: iva_reg_rt {
    type: number
    sql: ${TABLE}.IVA_REG_RT ;;
  }

  dimension: lst_prnt_dt {
    type: number
    sql: ${TABLE}.LST_PRNT_DT ;;
  }

  dimension: lst_prnt_tm {
    type: number
    sql: ${TABLE}.LST_PRNT_TM ;;
  }

  dimension: lst_updt_id {
    type: string
    sql: ${TABLE}.LST_UPDT_ID ;;
  }

  dimension: md_disc_pct {
    type: number
    sql: ${TABLE}.MD_DISC_PCT ;;
  }

  dimension: no_of_crtns {
    type: number
    sql: ${TABLE}.NO_OF_CRTNS ;;
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

  dimension: oe_carr_cd {
    type: string
    sql: ${TABLE}.OE_CARR_CD ;;
  }

  dimension: oper_id {
    type: string
    sql: ${TABLE}.OPER_ID ;;
  }

  dimension: opid_pick_qa {
    type: string
    sql: ${TABLE}.OPID_PICK_QA ;;
  }

  dimension: ord_ref_nbr {
    type: string
    sql: ${TABLE}.ORD_REF_NBR ;;
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

  dimension: ordr_typ {
    type: string
    sql: ${TABLE}.ORDR_TYP ;;
  }

  dimension: oride_cd {
    type: string
    sql: ${TABLE}.ORIDE_CD ;;
  }

  dimension: orig_frt_rate_amt {
    type: number
    sql: ${TABLE}.ORIG_FRT_RATE_AMT ;;
  }

  dimension: pick_stus_sw {
    type: string
    sql: ${TABLE}.PICK_STUS_SW ;;
  }

  dimension: print_order_sw {
    type: string
    sql: ${TABLE}.PRINT_ORDER_SW ;;
  }

  dimension: prms_dt {
    type: number
    sql: ${TABLE}.PRMS_DT ;;
  }

  dimension: prnt_cnt {
    type: string
    sql: ${TABLE}.PRNT_CNT ;;
  }

  dimension: prnt_stus {
    type: string
    sql: ${TABLE}.PRNT_STUS ;;
  }

  dimension: qa_cd {
    type: string
    sql: ${TABLE}.QA_CD ;;
  }

  dimension: reason_before_hold {
    type: string
    sql: ${TABLE}.REASON_BEFORE_HOLD ;;
  }

  dimension: rels_dt {
    type: number
    sql: ${TABLE}.RELS_DT ;;
  }

  dimension: rma_cd {
    type: string
    sql: ${TABLE}.RMA_CD ;;
  }

  dimension: rtun_br {
    type: string
    sql: ${TABLE}.RTUN_BR ;;
  }

  dimension: ship_dt {
    type: number
    sql: ${TABLE}.SHIP_DT ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: ship_via {
    type: string
    sql: ${TABLE}.SHIP_VIA ;;
  }

  dimension: shipbl_sw {
    type: string
    sql: ${TABLE}.SHIPBL_SW ;;
  }

  dimension: sla {
    type: string
    sql: ${TABLE}.SLA ;;
  }

  dimension: sls_mgr_cd {
    type: string
    sql: ${TABLE}.SLS_MGR_CD ;;
  }

  dimension: split_invc_sw {
    type: string
    sql: ${TABLE}.SPLIT_INVC_SW ;;
  }

  dimension: st_cd_2 {
    type: string
    sql: ${TABLE}.ST_CD_2 ;;
  }

  dimension: status_before_hold {
    type: string
    sql: ${TABLE}.STATUS_BEFORE_HOLD ;;
  }

  dimension: stus {
    type: string
    sql: ${TABLE}.STUS ;;
  }

  dimension: sys_item_exst_sw {
    type: string
    sql: ${TABLE}.SYS_ITEM_EXST_SW ;;
  }

  dimension: tax_pct {
    type: number
    sql: ${TABLE}.TAX_PCT ;;
  }

  dimension: terms_disc_chrg_pct {
    type: number
    sql: ${TABLE}.TERMS_DISC_CHRG_PCT ;;
  }

  dimension: tot_city_tax_amt {
    type: number
    sql: ${TABLE}.TOT_CITY_TAX_AMT ;;
  }

  dimension: tot_cost {
    type: number
    sql: ${TABLE}.TOT_COST ;;
  }

  dimension: tot_cty_tax_amt {
    type: number
    sql: ${TABLE}.TOT_CTY_TAX_AMT ;;
  }

  dimension: tot_lns {
    type: number
    sql: ${TABLE}.TOT_LNS ;;
  }

  dimension: tot_ord_wgt {
    type: number
    sql: ${TABLE}.TOT_ORD_WGT ;;
  }

  dimension: tot_ship_qty {
    type: number
    sql: ${TABLE}.TOT_SHIP_QTY ;;
  }

  dimension: tot_sls {
    type: number
    sql: ${TABLE}.TOT_SLS ;;
  }

  dimension: tot_st_tax_amt {
    type: number
    sql: ${TABLE}.TOT_ST_TAX_AMT ;;
  }

  dimension: tot_tax {
    type: number
    sql: ${TABLE}.TOT_TAX ;;
  }

  dimension: tot_wgt {
    type: number
    sql: ${TABLE}.TOT_WGT ;;
  }

  dimension: waive_alt_frt_chrg_cd {
    type: string
    sql: ${TABLE}.WAIVE_ALT_FRT_CHRG_CD ;;
  }

  dimension: waive_alt_hndl_chrg_cd {
    type: string
    sql: ${TABLE}.WAIVE_ALT_HNDL_CHRG_CD ;;
  }

  dimension: was_bord {
    type: string
    sql: ${TABLE}.WAS_BORD ;;
  }

  dimension: xit_day {
    type: string
    sql: ${TABLE}.XIT_DAY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
