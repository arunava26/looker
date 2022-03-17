# The name of this view in Looker is "Ims Order Line Orslne"
view: ims_order_line_orslne {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_ORDER_LINE_ORSLNE`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Cost Oride Ind" in Explore.

  dimension: acop_cost_oride_ind {
    type: string
    sql: ${TABLE}.ACOP_COST_ORIDE_IND ;;
  }

  dimension: acop_rprc_sw {
    type: string
    sql: ${TABLE}.ACOP_RPRC_SW ;;
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

  dimension: aggregate_code {
    type: string
    sql: ${TABLE}.AGGREGATE_CODE ;;
  }

  dimension: alloc_type {
    type: string
    sql: ${TABLE}.ALLOC_TYPE ;;
  }

  dimension: bo_eta_date {
    type: number
    sql: ${TABLE}.BO_ETA_DATE ;;
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

  dimension: cnsgm_inv_sw {
    type: string
    sql: ${TABLE}.CNSGM_INV_SW ;;
  }

  dimension: col_ind {
    type: string
    sql: ${TABLE}.COL_IND ;;
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

  dimension: config_assembly_cd {
    type: string
    sql: ${TABLE}.CONFIG_ASSEMBLY_CD ;;
  }

  dimension: config_id {
    type: number
    sql: ${TABLE}.CONFIG_ID ;;
  }

  dimension: config_ind {
    type: string
    sql: ${TABLE}.CONFIG_IND ;;
  }

  dimension: config_unit_price {
    type: number
    sql: ${TABLE}.CONFIG_UNIT_PRICE ;;
  }

  dimension: configuration_lab {
    type: string
    sql: ${TABLE}.CONFIGURATION_LAB ;;
  }

  dimension: conv_base_price {
    type: number
    sql: ${TABLE}.CONV_BASE_PRICE ;;
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

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: enty_dt {
    type: number
    sql: ${TABLE}.ENTY_DT ;;
  }

  dimension: free_item_sw {
    type: string
    sql: ${TABLE}.FREE_ITEM_SW ;;
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

  dimension: inv_ind {
    type: string
    sql: ${TABLE}.INV_IND ;;
  }

  dimension: inv_unit_cost {
    type: number
    sql: ${TABLE}.INV_UNIT_COST ;;
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

  dimension: last_chg_opid {
    type: string
    sql: ${TABLE}.LAST_CHG_OPID ;;
  }

  dimension: last_chg_time {
    type: number
    sql: ${TABLE}.LAST_CHG_TIME ;;
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

  dimension: lst_chg_dt {
    type: number
    sql: ${TABLE}.LST_CHG_DT ;;
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

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: orig_adj_cost {
    type: number
    sql: ${TABLE}.ORIG_ADJ_COST ;;
  }

  dimension: orl_actual_exchg_rate {
    type: number
    sql: ${TABLE}.ORL_ACTUAL_EXCHG_RATE ;;
  }

  dimension: orl_foreign_unit_price {
    type: number
    sql: ${TABLE}.ORL_FOREIGN_UNIT_PRICE ;;
  }

  dimension: orl_vdr_exchg_rate {
    type: number
    sql: ${TABLE}.ORL_VDR_EXCHG_RATE ;;
  }

  dimension: os_slsmn {
    type: string
    sql: ${TABLE}.OS_SLSMN ;;
  }

  dimension: pc_tax_amt {
    type: number
    sql: ${TABLE}.PC_TAX_AMT ;;
  }

  dimension: prms_dt {
    type: number
    sql: ${TABLE}.PRMS_DT ;;
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

  dimension: related_govt_bid_gsn {
    type: string
    sql: ${TABLE}.RELATED_GOVT_BID_GSN ;;
  }

  dimension: related_govt_bid_vsn {
    type: string
    sql: ${TABLE}.RELATED_GOVT_BID_VSN ;;
  }

  dimension: reserve_seq_nbr {
    type: string
    sql: ${TABLE}.RESERVE_SEQ_NBR ;;
  }

  dimension: reserve_type_sw {
    type: string
    sql: ${TABLE}.RESERVE_TYPE_SW ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.RETAIL_PRICE ;;
  }

  dimension: roll_sw {
    type: string
    sql: ${TABLE}.ROLL_SW ;;
  }

  dimension: sbstut_cost {
    type: number
    sql: ${TABLE}.SBSTUT_COST ;;
  }

  dimension: serial_nbr_avail_sw {
    type: string
    sql: ${TABLE}.SERIAL_NBR_AVAIL_SW ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: special_systems_cost {
    type: number
    sql: ${TABLE}.SPECIAL_SYSTEMS_COST ;;
  }

  dimension: sys_cmpnt_sw {
    type: string
    sql: ${TABLE}.SYS_CMPNT_SW ;;
  }

  dimension: system_item_line_nbr {
    type: string
    sql: ${TABLE}.SYSTEM_ITEM_LINE_NBR ;;
  }

  dimension: tax_cd {
    type: string
    sql: ${TABLE}.TAX_CD ;;
  }

  dimension: terms {
    type: number
    sql: ${TABLE}.TERMS ;;
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

  dimension: unit_price_reseller {
    type: number
    sql: ${TABLE}.UNIT_PRICE_RESELLER ;;
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

  dimension: vend_nbr {
    type: string
    sql: ${TABLE}.VEND_NBR ;;
  }

  dimension: vend_part_nbr {
    type: string
    sql: ${TABLE}.VEND_PART_NBR ;;
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
