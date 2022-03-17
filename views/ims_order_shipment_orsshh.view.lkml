# The name of this view in Looker is "Ims Order Shipment Orsshh"
view: ims_order_shipment_orsshh {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_ORDER_SHIPMENT_ORSSHH`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Act Total Weight" in Explore.

  dimension: act_total_weight {
    type: number
    sql: ${TABLE}.ACT_TOTAL_WEIGHT ;;
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

  dimension: bill_lad_nbr {
    type: string
    sql: ${TABLE}.BILL_LAD_NBR ;;
  }

  dimension: bordr_frt_chrg_cd {
    type: string
    sql: ${TABLE}.BORDR_FRT_CHRG_CD ;;
  }

  dimension: bordr_stus {
    type: string
    sql: ${TABLE}.BORDR_STUS ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: branch_nbr_ship_from {
    type: string
    sql: ${TABLE}.BRANCH_NBR_SHIP_FROM ;;
  }

  dimension: carr_cd {
    type: string
    sql: ${TABLE}.CARR_CD ;;
  }

  dimension: carr_sw {
    type: string
    sql: ${TABLE}.CARR_SW ;;
  }

  dimension: carr_type {
    type: string
    sql: ${TABLE}.CARR_TYPE ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: config_flag {
    type: string
    sql: ${TABLE}.CONFIG_FLAG ;;
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

  dimension: discount_amt {
    type: number
    sql: ${TABLE}.DISCOUNT_AMT ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: enty_dt_ccyymmdd {
    type: number
    sql: ${TABLE}.ENTY_DT_CCYYMMDD ;;
  }

  dimension: foreign_total_tax {
    type: number
    sql: ${TABLE}.FOREIGN_TOTAL_TAX ;;
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

  dimension: frt_chrg_excpt_sw {
    type: string
    sql: ${TABLE}.FRT_CHRG_EXCPT_SW ;;
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

  dimension: hld_rsn {
    type: string
    sql: ${TABLE}.HLD_RSN ;;
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

  dimension: no_of_crtns {
    type: number
    sql: ${TABLE}.NO_OF_CRTNS ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: shippable_sw {
    type: string
    sql: ${TABLE}.SHIPPABLE_SW ;;
  }

  dimension: sls_mgr_cd {
    type: string
    sql: ${TABLE}.SLS_MGR_CD ;;
  }

  dimension: split_invoice_sw {
    type: string
    sql: ${TABLE}.SPLIT_INVOICE_SW ;;
  }

  dimension: status_before_hold {
    type: string
    sql: ${TABLE}.STATUS_BEFORE_HOLD ;;
  }

  dimension: stus {
    type: string
    sql: ${TABLE}.STUS ;;
  }

  dimension: tax_pct {
    type: number
    sql: ${TABLE}.TAX_PCT ;;
  }

  dimension: terms_disc_chrg_pct {
    type: number
    sql: ${TABLE}.TERMS_DISC_CHRG_PCT ;;
  }

  dimension: tot_cost {
    type: number
    sql: ${TABLE}.TOT_COST ;;
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

  dimension: tot_tax {
    type: number
    sql: ${TABLE}.TOT_TAX ;;
  }

  dimension: tot_wgt {
    type: number
    sql: ${TABLE}.TOT_WGT ;;
  }

  dimension: total_city_tax_amt {
    type: number
    sql: ${TABLE}.TOTAL_CITY_TAX_AMT ;;
  }

  dimension: total_county_tax_amt {
    type: number
    sql: ${TABLE}.TOTAL_COUNTY_TAX_AMT ;;
  }

  dimension: total_state_tax_amt {
    type: number
    sql: ${TABLE}.TOTAL_STATE_TAX_AMT ;;
  }

  dimension: waive_alt_frt_chrg_cd {
    type: string
    sql: ${TABLE}.WAIVE_ALT_FRT_CHRG_CD ;;
  }

  dimension: waive_alt_hndl_chrg_cd {
    type: string
    sql: ${TABLE}.WAIVE_ALT_HNDL_CHRG_CD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
