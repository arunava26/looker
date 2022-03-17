# The name of this view in Looker is "Ods Po Line"
view: ods_po_line {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_PO_LINE`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Pocc" in Explore.

  dimension: acop_pocc {
    type: string
    sql: ${TABLE}.ACOP_POCC ;;
  }

  dimension: aloc_line_flg {
    type: string
    sql: ${TABLE}.ALOC_LINE_FLG ;;
  }

  dimension: aloc_qty {
    type: number
    sql: ${TABLE}.ALOC_QTY ;;
  }

  dimension: avg_boh_bf_cost_amt {
    type: string
    sql: ${TABLE}.AVG_BOH_BF_COST_AMT ;;
  }

  dimension: base_unit_nam {
    type: string
    sql: ${TABLE}.BASE_UNIT_NAM ;;
  }

  dimension: bf_avg_cost_amt {
    type: number
    sql: ${TABLE}.BF_AVG_COST_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bf_avg_cost_amt {
    type: sum
    sql: ${bf_avg_cost_amt} ;;
  }

  measure: average_bf_avg_cost_amt {
    type: average
    sql: ${bf_avg_cost_amt} ;;
  }

  dimension: bo_flg {
    type: string
    sql: ${TABLE}.BO_FLG ;;
  }

  dimension: boh_qty {
    type: number
    sql: ${TABLE}.BOH_QTY ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: brtr_so_bill_cost_amt {
    type: number
    sql: ${TABLE}.BRTR_SO_BILL_COST_AMT ;;
  }

  dimension: case_ovrd_flg {
    type: string
    sql: ${TABLE}.CASE_OVRD_FLG ;;
  }

  dimension: case_palt_flg {
    type: string
    sql: ${TABLE}.CASE_PALT_FLG ;;
  }

  dimension: cat_nbr {
    type: string
    sql: ${TABLE}.CAT_NBR ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: cost_upd_flg {
    type: string
    sql: ${TABLE}.COST_UPD_FLG ;;
  }

  dimension: creat_tm {
    type: number
    sql: ${TABLE}.CREAT_TM ;;
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

  dimension: customs_exchng_rate {
    type: number
    sql: ${TABLE}.CUSTOMS_EXCHNG_RATE ;;
  }

  dimension_group: dlog_dt {
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
    sql: ${TABLE}.DLOG_DT ;;
  }

  dimension: dlog_nbr {
    type: string
    sql: ${TABLE}.DLOG_NBR ;;
  }

  dimension: door_rcv_nbr {
    type: string
    sql: ${TABLE}.DOOR_RCV_NBR ;;
  }

  dimension: duty_cd {
    type: string
    sql: ${TABLE}.DUTY_CD ;;
  }

  dimension: eta_src_cd {
    type: string
    sql: ${TABLE}.ETA_SRC_CD ;;
  }

  dimension: eu_mrkt_sgmt_typ_cd {
    type: string
    sql: ${TABLE}.EU_MRKT_SGMT_TYP_CD ;;
  }

  dimension: extra_disc_pct {
    type: number
    sql: ${TABLE}.EXTRA_DISC_PCT ;;
  }

  dimension: frt_pct {
    type: number
    sql: ${TABLE}.FRT_PCT ;;
  }

  dimension: gbl_trck_item_nbr {
    type: string
    sql: ${TABLE}.GBL_TRCK_ITEM_NBR ;;
  }

  dimension: gsa_ind {
    type: string
    sql: ${TABLE}.GSA_IND ;;
  }

  dimension: icms_cd {
    type: string
    sql: ${TABLE}.ICMS_CD ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: in_xit_qty {
    type: number
    sql: ${TABLE}.IN_XIT_QTY ;;
  }

  dimension: inv_unit_cost_amt {
    type: number
    sql: ${TABLE}.INV_UNIT_COST_AMT ;;
  }

  dimension: inv_uom_cd {
    type: string
    sql: ${TABLE}.INV_UOM_CD ;;
  }

  dimension: last_case_palt_flg {
    type: string
    sql: ${TABLE}.LAST_CASE_PALT_FLG ;;
  }

  dimension_group: last_chg_dt {
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
    sql: ${TABLE}.LAST_CHG_DT ;;
  }

  dimension: last_chg_op_id {
    type: string
    sql: ${TABLE}.LAST_CHG_OP_ID ;;
  }

  dimension: last_chg_typ_cd {
    type: string
    sql: ${TABLE}.LAST_CHG_TYP_CD ;;
  }

  dimension: last_rcv_avg_cost_amt {
    type: number
    sql: ${TABLE}.LAST_RCV_AVG_COST_AMT ;;
  }

  dimension_group: last_rcv_dt {
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
    sql: ${TABLE}.LAST_RCV_DT ;;
  }

  dimension: last_rcv_nbr {
    type: number
    sql: ${TABLE}.LAST_RCV_NBR ;;
  }

  dimension: last_rcv_qot_cost_amt {
    type: number
    sql: ${TABLE}.LAST_RCV_QOT_COST_AMT ;;
  }

  dimension: last_rcv_qty {
    type: number
    sql: ${TABLE}.LAST_RCV_QTY ;;
  }

  dimension: last_rcv_unit_cost_amt {
    type: number
    sql: ${TABLE}.LAST_RCV_UNIT_COST_AMT ;;
  }

  dimension: last_rcv_void_flg {
    type: string
    sql: ${TABLE}.LAST_RCV_VOID_FLG ;;
  }

  dimension: last_recpt_typ {
    type: string
    sql: ${TABLE}.LAST_RECPT_TYP ;;
  }

  dimension: line_des {
    type: string
    sql: ${TABLE}.LINE_DES ;;
  }

  dimension: line_wgt {
    type: number
    sql: ${TABLE}.LINE_WGT ;;
  }

  dimension: mdl_nbr {
    type: string
    sql: ${TABLE}.MDL_NBR ;;
  }

  dimension: misc_cost_amt {
    type: number
    sql: ${TABLE}.MISC_COST_AMT ;;
  }

  dimension: np_ind {
    type: string
    sql: ${TABLE}.NP_IND ;;
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

  dimension: open_qty {
    type: number
    sql: ${TABLE}.OPEN_QTY ;;
  }

  dimension: ordr_line_nbr {
    type: string
    sql: ${TABLE}.ORDR_LINE_NBR ;;
  }

  dimension: ordr_qty {
    type: number
    sql: ${TABLE}.ORDR_QTY ;;
  }

  dimension: orig_ordr_qty {
    type: number
    sql: ${TABLE}.ORIG_ORDR_QTY ;;
  }

  dimension: palt_nbr {
    type: string
    sql: ${TABLE}.PALT_NBR ;;
  }

  dimension: palt_rcv_nbr {
    type: string
    sql: ${TABLE}.PALT_RCV_NBR ;;
  }

  dimension: palt_rcv_typ_cd {
    type: string
    sql: ${TABLE}.PALT_RCV_TYP_CD ;;
  }

  dimension: part_nbr {
    type: string
    sql: ${TABLE}.PART_NBR ;;
  }

  dimension: per_wgt_nam {
    type: string
    sql: ${TABLE}.PER_WGT_NAM ;;
  }

  dimension: pgm_cd {
    type: string
    sql: ${TABLE}.PGM_CD ;;
  }

  dimension: po_line_inv_cd {
    type: string
    sql: ${TABLE}.PO_LINE_INV_CD ;;
  }

  dimension: po_line_nbr {
    type: string
    sql: ${TABLE}.PO_LINE_NBR ;;
  }

  dimension: po_line_stus_cd {
    type: string
    sql: ${TABLE}.PO_LINE_STUS_CD ;;
  }

  dimension: po_line_typ_cd {
    type: string
    sql: ${TABLE}.PO_LINE_TYP_CD ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
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

  dimension: prom_tm {
    type: number
    sql: ${TABLE}.PROM_TM ;;
  }

  dimension: prpay_maint_cd {
    type: string
    sql: ${TABLE}.PRPAY_MAINT_CD ;;
  }

  dimension: prty_flg {
    type: string
    sql: ${TABLE}.PRTY_FLG ;;
  }

  dimension: qot_unit_cost_amt {
    type: number
    sql: ${TABLE}.QOT_UNIT_COST_AMT ;;
  }

  dimension: rcm_unit_amt {
    type: number
    sql: ${TABLE}.RCM_UNIT_AMT ;;
  }

  dimension: rcv_duty_rt {
    type: number
    sql: ${TABLE}.RCV_DUTY_RT ;;
  }

  dimension: rcv_fld_pop_flg {
    type: string
    sql: ${TABLE}.RCV_FLD_POP_FLG ;;
  }

  dimension: rcv_misc_cost_amt {
    type: number
    sql: ${TABLE}.RCV_MISC_COST_AMT ;;
  }

  dimension: rcv_tax_rt {
    type: number
    sql: ${TABLE}.RCV_TAX_RT ;;
  }

  dimension: rcvd_qty {
    type: number
    sql: ${TABLE}.RCVD_QTY ;;
  }

  dimension: rf_rcv_qty {
    type: number
    sql: ${TABLE}.RF_RCV_QTY ;;
  }

  dimension: rf_stus_cd {
    type: string
    sql: ${TABLE}.RF_STUS_CD ;;
  }

  dimension: roll_flg {
    type: string
    sql: ${TABLE}.ROLL_FLG ;;
  }

  dimension: rslr_part_nbr {
    type: string
    sql: ${TABLE}.RSLR_PART_NBR ;;
  }

  dimension: rsv_cust_br_nbr {
    type: string
    sql: ${TABLE}.RSV_CUST_BR_NBR ;;
  }

  dimension: rsv_cust_nbr {
    type: string
    sql: ${TABLE}.RSV_CUST_NBR ;;
  }

  dimension: rsv_cust_seq_nbr {
    type: string
    sql: ${TABLE}.RSV_CUST_SEQ_NBR ;;
  }

  dimension: rsv_qty {
    type: number
    sql: ${TABLE}.RSV_QTY ;;
  }

  dimension: rsv_typ_cd {
    type: string
    sql: ${TABLE}.RSV_TYP_CD ;;
  }

  dimension: sap_po_item_number {
    type: string
    sql: ${TABLE}.SAP_PO_ITEM_NUMBER ;;
  }

  dimension: sap_po_pr_number {
    type: string
    sql: ${TABLE}.SAP_PO_PR_NUMBER ;;
  }

  dimension: sat_tax_rt {
    type: number
    sql: ${TABLE}.SAT_TAX_RT ;;
  }

  dimension: semi_cnduc_flg {
    type: string
    sql: ${TABLE}.SEMI_CNDUC_FLG ;;
  }

  dimension: ship_qty {
    type: number
    sql: ${TABLE}.SHIP_QTY ;;
  }

  dimension: std_pack_1_qty {
    type: number
    sql: ${TABLE}.STD_PACK_1_QTY ;;
  }

  dimension: system_component_sw {
    type: string
    sql: ${TABLE}.SYSTEM_COMPONENT_SW ;;
  }

  dimension: tax_cd {
    type: string
    sql: ${TABLE}.TAX_CD ;;
  }

  dimension: temp_rcv_qty {
    type: number
    sql: ${TABLE}.TEMP_RCV_QTY ;;
  }

  dimension: temp_rcv_stus_cd {
    type: string
    sql: ${TABLE}.TEMP_RCV_STUS_CD ;;
  }

  dimension: tes_cd {
    type: string
    sql: ${TABLE}.TES_CD ;;
  }

  dimension: uc_ovrd_flg {
    type: string
    sql: ${TABLE}.UC_OVRD_FLG ;;
  }

  dimension: upc_part_nbr {
    type: string
    sql: ${TABLE}.UPC_PART_NBR ;;
  }

  dimension: vat_cst_flg {
    type: string
    sql: ${TABLE}.VAT_CST_FLG ;;
  }

  dimension: vat_cst_tax_rt {
    type: number
    sql: ${TABLE}.VAT_CST_TAX_RT ;;
  }

  dimension: vend_line_nbr {
    type: string
    sql: ${TABLE}.VEND_LINE_NBR ;;
  }

  dimension: vend_ordr_nbr {
    type: string
    sql: ${TABLE}.VEND_ORDR_NBR ;;
  }

  dimension: vend_part_nbr {
    type: string
    sql: ${TABLE}.VEND_PART_NBR ;;
  }

  dimension: xfer_qty {
    type: number
    sql: ${TABLE}.XFER_QTY ;;
  }

  dimension: xfer_stus_cd {
    type: string
    sql: ${TABLE}.XFER_STUS_CD ;;
  }

  dimension: xtra_des_flg {
    type: string
    sql: ${TABLE}.XTRA_DES_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
