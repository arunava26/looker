# The name of this view in Looker is "Ims Rc Order Line Hist"
view: ims_rc_order_line_hist {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_RC_ORDER_LINE_HIST`
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

  dimension: acop_cost_override_ind {
    type: string
    sql: ${TABLE}.ACOP_COST_OVERRIDE_IND ;;
  }

  dimension: acop_delta_price_ind {
    type: string
    sql: ${TABLE}.ACOP_DELTA_PRICE_IND ;;
  }

  dimension: acop_end_user_nbr {
    type: number
    sql: ${TABLE}.ACOP_END_USER_NBR ;;
  }

  dimension: acop_reprice_sw {
    type: string
    sql: ${TABLE}.ACOP_REPRICE_SW ;;
  }

  dimension: adjusted_cost {
    type: number
    sql: ${TABLE}.ADJUSTED_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_adjusted_cost {
    type: sum
    sql: ${adjusted_cost} ;;
  }

  measure: average_adjusted_cost {
    type: average
    sql: ${adjusted_cost} ;;
  }

  dimension: adjusted_cost_sw {
    type: string
    sql: ${TABLE}.ADJUSTED_COST_SW ;;
  }

  dimension: aggregate_code {
    type: string
    sql: ${TABLE}.AGGREGATE_CODE ;;
  }

  dimension: alliance_sw {
    type: string
    sql: ${TABLE}.ALLIANCE_SW ;;
  }

  dimension: alloc_reserve_qty {
    type: number
    sql: ${TABLE}.ALLOC_RESERVE_QTY ;;
  }

  dimension: alt_unit_cost {
    type: number
    sql: ${TABLE}.ALT_UNIT_COST ;;
  }

  dimension: alt_whse_br {
    type: string
    sql: ${TABLE}.ALT_WHSE_BR ;;
  }

  dimension: alt_whse_co {
    type: string
    sql: ${TABLE}.ALT_WHSE_CO ;;
  }

  dimension: alt_whse_currency {
    type: string
    sql: ${TABLE}.ALT_WHSE_CURRENCY ;;
  }

  dimension: asset_tag_sw {
    type: string
    sql: ${TABLE}.ASSET_TAG_SW ;;
  }

  dimension: base_um {
    type: string
    sql: ${TABLE}.BASE_UM ;;
  }

  dimension: base_unit {
    type: string
    sql: ${TABLE}.BASE_UNIT ;;
  }

  dimension: boh_upd_online_sw {
    type: string
    sql: ${TABLE}.BOH_UPD_ONLINE_SW ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: cat_nbr {
    type: string
    sql: ${TABLE}.CAT_NBR ;;
  }

  dimension: cfscmp_system_item {
    type: string
    sql: ${TABLE}.CFSCMP_SYSTEM_ITEM ;;
  }

  dimension: cntry_of_origin {
    type: string
    sql: ${TABLE}.CNTRY_OF_ORIGIN ;;
  }

  dimension: column_ind {
    type: string
    sql: ${TABLE}.COLUMN_IND ;;
  }

  dimension: commod_code {
    type: string
    sql: ${TABLE}.COMMOD_CODE ;;
  }

  dimension: comp_qty_per {
    type: number
    sql: ${TABLE}.COMP_QTY_PER ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: configuration_lab {
    type: string
    sql: ${TABLE}.CONFIGURATION_LAB ;;
  }

  dimension: consignment_inv_sw {
    type: string
    sql: ${TABLE}.CONSIGNMENT_INV_SW ;;
  }

  dimension: conv_base_price {
    type: number
    sql: ${TABLE}.CONV_BASE_PRICE ;;
  }

  dimension: coop_flag {
    type: string
    sql: ${TABLE}.COOP_FLAG ;;
  }

  dimension: cus_orig_unit_price {
    type: number
    sql: ${TABLE}.CUS_ORIG_UNIT_PRICE ;;
  }

  dimension: cust_item_nbr {
    type: string
    sql: ${TABLE}.CUST_ITEM_NBR ;;
  }

  dimension: cust_line_nbr {
    type: string
    sql: ${TABLE}.CUST_LINE_NBR ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}.DISCOUNT_CODE ;;
  }

  dimension: discount_pct {
    type: number
    sql: ${TABLE}.DISCOUNT_PCT ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: entry_date {
    type: number
    sql: ${TABLE}.ENTRY_DATE ;;
  }

  dimension: entry_time {
    type: number
    sql: ${TABLE}.ENTRY_TIME ;;
  }

  dimension: export_license {
    type: string
    sql: ${TABLE}.EXPORT_LICENSE ;;
  }

  dimension: foreign_unit_price {
    type: number
    sql: ${TABLE}.FOREIGN_UNIT_PRICE ;;
  }

  dimension: foreign_unit_price_semi {
    type: number
    sql: ${TABLE}.FOREIGN_UNIT_PRICE_SEMI ;;
  }

  dimension: free_item_sw {
    type: string
    sql: ${TABLE}.FREE_ITEM_SW ;;
  }

  dimension: gwmd_imag_apply_flag {
    type: string
    sql: ${TABLE}.GWMD_IMAG_APPLY_FLAG ;;
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

  dimension: is_salesman {
    type: string
    sql: ${TABLE}.IS_SALESMAN ;;
  }

  dimension: item_consigned_sw {
    type: string
    sql: ${TABLE}.ITEM_CONSIGNED_SW ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}.ITEM_TYPE ;;
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

  dimension: line_status {
    type: string
    sql: ${TABLE}.LINE_STATUS ;;
  }

  dimension: line_type {
    type: string
    sql: ${TABLE}.LINE_TYPE ;;
  }

  dimension: lsb {
    type: string
    sql: ${TABLE}.LSB ;;
  }

  dimension: lsb_qty_avail {
    type: number
    sql: ${TABLE}.LSB_QTY_AVAIL ;;
  }

  dimension: mc_override_sw {
    type: string
    sql: ${TABLE}.MC_OVERRIDE_SW ;;
  }

  dimension: mchg_code {
    type: string
    sql: ${TABLE}.MCHG_CODE ;;
  }

  dimension: non_std_conv_sw {
    type: string
    sql: ${TABLE}.NON_STD_CONV_SW ;;
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

  dimension: order_nbr {
    type: string
    sql: ${TABLE}.ORDER_NBR ;;
  }

  dimension: os_salesman {
    type: string
    sql: ${TABLE}.OS_SALESMAN ;;
  }

  dimension: oss_no {
    type: string
    sql: ${TABLE}.OSS_NO ;;
  }

  dimension: part_nbr {
    type: string
    sql: ${TABLE}.PART_NBR ;;
  }

  dimension: program_type {
    type: string
    sql: ${TABLE}.PROGRAM_TYPE ;;
  }

  dimension: promise_date {
    type: number
    sql: ${TABLE}.PROMISE_DATE ;;
  }

  dimension: promotion_code {
    type: string
    sql: ${TABLE}.PROMOTION_CODE ;;
  }

  dimension: qty_backordered {
    type: number
    sql: ${TABLE}.QTY_BACKORDERED ;;
  }

  dimension: qty_ordered {
    type: number
    sql: ${TABLE}.QTY_ORDERED ;;
  }

  dimension: qty_shipped {
    type: number
    sql: ${TABLE}.QTY_SHIPPED ;;
  }

  dimension: refdir_override_type {
    type: string
    sql: ${TABLE}.REFDIR_OVERRIDE_TYPE ;;
  }

  dimension: req_profit_pct {
    type: number
    sql: ${TABLE}.REQ_PROFIT_PCT ;;
  }

  dimension: reserve_seq_nbr {
    type: string
    sql: ${TABLE}.RESERVE_SEQ_NBR ;;
  }

  dimension: reverse_acop_ind {
    type: string
    sql: ${TABLE}.REVERSE_ACOP_IND ;;
  }

  dimension: rma_overgoods_code {
    type: string
    sql: ${TABLE}.RMA_OVERGOODS_CODE ;;
  }

  dimension: roll_sw {
    type: string
    sql: ${TABLE}.ROLL_SW ;;
  }

  dimension: sales_type_sw {
    type: string
    sql: ${TABLE}.SALES_TYPE_SW ;;
  }

  dimension: semi_conductor_sw {
    type: string
    sql: ${TABLE}.SEMI_CONDUCTOR_SW ;;
  }

  dimension: sheet_ind {
    type: string
    sql: ${TABLE}.SHEET_IND ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: special_comp_ind {
    type: string
    sql: ${TABLE}.SPECIAL_COMP_IND ;;
  }

  dimension: special_systems_cost {
    type: number
    sql: ${TABLE}.SPECIAL_SYSTEMS_COST ;;
  }

  dimension: split_bill_to_suff {
    type: string
    sql: ${TABLE}.SPLIT_BILL_TO_SUFF ;;
  }

  dimension: substitute_cost {
    type: number
    sql: ${TABLE}.SUBSTITUTE_COST ;;
  }

  dimension: system_component_sw {
    type: string
    sql: ${TABLE}.SYSTEM_COMPONENT_SW ;;
  }

  dimension: system_item_line_nbr {
    type: string
    sql: ${TABLE}.SYSTEM_ITEM_LINE_NBR ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TAX_CODE ;;
  }

  dimension: taxable_item_sw {
    type: string
    sql: ${TABLE}.TAXABLE_ITEM_SW ;;
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

  dimension: tr_to_order_nbr {
    type: string
    sql: ${TABLE}.TR_TO_ORDER_NBR ;;
  }

  dimension: tr_to_ship_nbr {
    type: string
    sql: ${TABLE}.TR_TO_SHIP_NBR ;;
  }

  dimension: trade_disc {
    type: number
    sql: ${TABLE}.TRADE_DISC ;;
  }

  dimension: uc_override_sw {
    type: string
    sql: ${TABLE}.UC_OVERRIDE_SW ;;
  }

  dimension: um {
    type: string
    sql: ${TABLE}.UM ;;
  }

  dimension: um_override_sw {
    type: string
    sql: ${TABLE}.UM_OVERRIDE_SW ;;
  }

  dimension: unisys_contract_acop_ind {
    type: string
    sql: ${TABLE}.UNISYS_CONTRACT_ACOP_IND ;;
  }

  dimension: unit_cost {
    type: number
    sql: ${TABLE}.UNIT_COST ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UNIT_PRICE ;;
  }

  dimension: unit_price_end_user {
    type: number
    sql: ${TABLE}.UNIT_PRICE_END_USER ;;
  }

  dimension: unit_weight {
    type: number
    sql: ${TABLE}.UNIT_WEIGHT ;;
  }

  dimension: up_override_sw {
    type: string
    sql: ${TABLE}.UP_OVERRIDE_SW ;;
  }

  dimension: upc_nbr {
    type: string
    sql: ${TABLE}.UPC_NBR ;;
  }

  dimension: vat_tax_code {
    type: string
    sql: ${TABLE}.VAT_TAX_CODE ;;
  }

  dimension: vat_tax_rate {
    type: number
    sql: ${TABLE}.VAT_TAX_RATE ;;
  }

  dimension: vdr_exchg_rate {
    type: number
    sql: ${TABLE}.VDR_EXCHG_RATE ;;
  }

  dimension: vdr_exchg_rate_type {
    type: string
    sql: ${TABLE}.VDR_EXCHG_RATE_TYPE ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: vendor_part_nbr {
    type: string
    sql: ${TABLE}.VENDOR_PART_NBR ;;
  }

  dimension: weight_per {
    type: string
    sql: ${TABLE}.WEIGHT_PER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
