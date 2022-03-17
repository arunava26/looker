# The name of this view in Looker is "Ods Po Recpt"
view: ods_po_recpt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_PO_RECPT`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ap Stus Cd" in Explore.

  dimension: ap_stus_cd {
    type: string
    sql: ${TABLE}.AP_STUS_CD ;;
  }

  dimension: ap_xmit_mth {
    type: string
    sql: ${TABLE}.AP_XMIT_MTH ;;
  }

  dimension: ap_xmit_nbr {
    type: string
    sql: ${TABLE}.AP_XMIT_NBR ;;
  }

  dimension: ap_xmit_yr {
    type: string
    sql: ${TABLE}.AP_XMIT_YR ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: ccy_rt {
    type: number
    sql: ${TABLE}.CCY_RT ;;
  }

  dimension: cgst_amt {
    type: number
    sql: ${TABLE}.CGST_AMT ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
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

  dimension: curr_diff_amt {
    type: number
    sql: ${TABLE}.CURR_DIFF_AMT ;;
  }

  dimension: cust_bill_amt {
    type: number
    sql: ${TABLE}.CUST_BILL_AMT ;;
  }

  dimension: cust_bill_stus_cd {
    type: string
    sql: ${TABLE}.CUST_BILL_STUS_CD ;;
  }

  dimension: duty_amt {
    type: number
    sql: ${TABLE}.DUTY_AMT ;;
  }

  dimension: fifo_rpt_flg {
    type: string
    sql: ${TABLE}.FIFO_RPT_FLG ;;
  }

  dimension: gst_ind {
    type: string
    sql: ${TABLE}.GST_IND ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: inv_rec_valu_stk_amt {
    type: number
    sql: ${TABLE}.INV_REC_VALU_STK_AMT ;;
  }

  dimension: invc_tday_flg {
    type: string
    sql: ${TABLE}.INVC_TDAY_FLG ;;
  }

  dimension: microsiga_flg {
    type: string
    sql: ${TABLE}.MICROSIGA_FLG ;;
  }

  dimension: misc_cost_amt {
    type: number
    sql: ${TABLE}.MISC_COST_AMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_misc_cost_amt {
    type: sum
    sql: ${misc_cost_amt} ;;
  }

  measure: average_misc_cost_amt {
    type: average
    sql: ${misc_cost_amt} ;;
  }

  dimension_group: mtch_dt {
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
    sql: ${TABLE}.MTCH_DT ;;
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

  dimension: othr_ccy_rt {
    type: number
    sql: ${TABLE}.OTHR_CCY_RT ;;
  }

  dimension: pck_list_nbr {
    type: string
    sql: ${TABLE}.PCK_LIST_NBR ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension_group: rcv_dt {
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
    sql: ${TABLE}.RCV_DT ;;
  }

  dimension: rcv_flg {
    type: string
    sql: ${TABLE}.RCV_FLG ;;
  }

  dimension: rcv_line_cnt {
    type: number
    sql: ${TABLE}.RCV_LINE_CNT ;;
  }

  dimension: rcvd_tday_flg {
    type: string
    sql: ${TABLE}.RCVD_TDAY_FLG ;;
  }

  dimension: recpt_nbr {
    type: number
    sql: ${TABLE}.RECPT_NBR ;;
  }

  dimension: recpt_stus_cd {
    type: string
    sql: ${TABLE}.RECPT_STUS_CD ;;
  }

  dimension_group: ship_dt {
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
    sql: ${TABLE}.SHIP_DT ;;
  }

  dimension: ship_fr_ctry_cd {
    type: string
    sql: ${TABLE}.SHIP_FR_CTRY_CD ;;
  }

  dimension: ship_ref_nbr {
    type: string
    sql: ${TABLE}.SHIP_REF_NBR ;;
  }

  dimension: ship_reference_me {
    type: string
    sql: ${TABLE}.SHIP_REFERENCE_ME ;;
  }

  dimension: so_nbr {
    type: string
    sql: ${TABLE}.SO_NBR ;;
  }

  dimension: spec_lne_flg {
    type: string
    sql: ${TABLE}.SPEC_LNE_FLG ;;
  }

  dimension: tax_amt {
    type: number
    sql: ${TABLE}.TAX_AMT ;;
  }

  dimension: tot_ap_invc_amt {
    type: number
    sql: ${TABLE}.TOT_AP_INVC_AMT ;;
  }

  dimension: tot_rcv_qty {
    type: number
    sql: ${TABLE}.TOT_RCV_QTY ;;
  }

  dimension: tot_rcv_spec_amt {
    type: number
    sql: ${TABLE}.TOT_RCV_SPEC_AMT ;;
  }

  dimension: tot_rcv_stk_amt {
    type: number
    sql: ${TABLE}.TOT_RCV_STK_AMT ;;
  }

  dimension: tot_stk_alt_amt {
    type: number
    sql: ${TABLE}.TOT_STK_ALT_AMT ;;
  }

  dimension: vat_flg {
    type: string
    sql: ${TABLE}.VAT_FLG ;;
  }

  dimension: vdr_exch_rt {
    type: number
    sql: ${TABLE}.VDR_EXCH_RT ;;
  }

  dimension: vdr_exch_rt_typ_cd {
    type: string
    sql: ${TABLE}.VDR_EXCH_RT_TYP_CD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
