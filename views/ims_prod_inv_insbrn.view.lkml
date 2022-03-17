# The name of this view in Looker is "Ims Prod Inv Insbrn"
view: ims_prod_inv_insbrn {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_INV_INSBRN`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Abc Class" in Explore.

  dimension: abc_class {
    type: string
    sql: ${TABLE}.ABC_CLASS ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }

  dimension: allocation_sw {
    type: string
    sql: ${TABLE}.ALLOCATION_SW ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: avail_lst_upd_dt {
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
    sql: ${TABLE}.AVAIL_LST_UPD_DT ;;
  }

  dimension: avg_cost {
    type: number
    sql: ${TABLE}.AVG_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_cost {
    type: sum
    sql: ${avg_cost} ;;
  }

  measure: average_avg_cost {
    type: average
    sql: ${avg_cost} ;;
  }

  dimension: avg_cost_compushack {
    type: number
    sql: ${TABLE}.AVG_COST_COMPUSHACK ;;
  }

  dimension: avg_lead_days {
    type: number
    sql: ${TABLE}.AVG_LEAD_DAYS ;;
  }

  dimension: bal_on_hand {
    type: number
    sql: ${TABLE}.BAL_ON_HAND ;;
  }

  dimension_group: boh_lst_upd_dt {
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
    sql: ${TABLE}.BOH_LST_UPD_DT ;;
  }

  dimension: br_in_trans_qty {
    type: number
    sql: ${TABLE}.BR_IN_TRANS_QTY ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: br_nbr_ord_from {
    type: string
    sql: ${TABLE}.BR_NBR_ORD_FROM ;;
  }

  dimension: br_type {
    type: string
    sql: ${TABLE}.BR_TYPE ;;
  }

  dimension: bypass_hard_divert {
    type: string
    sql: ${TABLE}.BYPASS_HARD_DIVERT ;;
  }

  dimension: case_qty {
    type: number
    sql: ${TABLE}.CASE_QTY ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: consignment_sw {
    type: string
    sql: ${TABLE}.CONSIGNMENT_SW ;;
  }

  dimension: conv_base_price {
    type: number
    sql: ${TABLE}.CONV_BASE_PRICE ;;
  }

  dimension: conv_cost_flag {
    type: string
    sql: ${TABLE}.CONV_COST_FLAG ;;
  }

  dimension: conv_cost_override {
    type: number
    sql: ${TABLE}.CONV_COST_OVERRIDE ;;
  }

  dimension: conv_curr_flag {
    type: string
    sql: ${TABLE}.CONV_CURR_FLAG ;;
  }

  dimension: conv_curr_table_code {
    type: string
    sql: ${TABLE}.CONV_CURR_TABLE_CODE ;;
  }

  dimension: conv_duty_table_code {
    type: string
    sql: ${TABLE}.CONV_DUTY_TABLE_CODE ;;
  }

  dimension: conv_misc_cost {
    type: number
    sql: ${TABLE}.CONV_MISC_COST ;;
  }

  dimension: conv_tax_table_code {
    type: string
    sql: ${TABLE}.CONV_TAX_TABLE_CODE ;;
  }

  dimension: cos_var {
    type: number
    sql: ${TABLE}.COS_VAR ;;
  }

  dimension: cost_adj_pct {
    type: number
    sql: ${TABLE}.COST_ADJ_PCT ;;
  }

  dimension: cost_chg_var {
    type: number
    sql: ${TABLE}.COST_CHG_VAR ;;
  }

  dimension: creation_method {
    type: string
    sql: ${TABLE}.CREATION_METHOD ;;
  }

  dimension: cycle_freq_days {
    type: number
    sql: ${TABLE}.CYCLE_FREQ_DAYS ;;
  }

  dimension: cycle_times {
    type: number
    sql: ${TABLE}.CYCLE_TIMES ;;
  }

  dimension: date_created {
    type: number
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension: demand_qty {
    type: number
    sql: ${TABLE}.DEMAND_QTY ;;
  }

  dimension: dir_pos {
    type: number
    sql: ${TABLE}.DIR_POS ;;
  }

  dimension: eta {
    type: number
    sql: ${TABLE}.ETA ;;
  }

  dimension: eta_source {
    type: string
    sql: ${TABLE}.ETA_SOURCE ;;
  }

  dimension: fifo_control_sw {
    type: string
    sql: ${TABLE}.FIFO_CONTROL_SW ;;
  }

  dimension: foreign_avg_cost {
    type: number
    sql: ${TABLE}.FOREIGN_AVG_COST ;;
  }

  dimension: fut_ord_qty {
    type: number
    sql: ${TABLE}.FUT_ORD_QTY ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.HEIGHT ;;
  }

  dimension: icms_code {
    type: string
    sql: ${TABLE}.ICMS_CODE ;;
  }

  dimension: inb_vpp_date {
    type: number
    sql: ${TABLE}.INB_VPP_DATE ;;
  }

  dimension: last_phys_date {
    type: number
    sql: ${TABLE}.LAST_PHYS_DATE ;;
  }

  dimension: last_po_date {
    type: number
    sql: ${TABLE}.LAST_PO_DATE ;;
  }

  dimension: last_po_nbr {
    type: string
    sql: ${TABLE}.LAST_PO_NBR ;;
  }

  dimension: last_rcpt_date {
    type: number
    sql: ${TABLE}.LAST_RCPT_DATE ;;
  }

  dimension: last_sale_date {
    type: number
    sql: ${TABLE}.LAST_SALE_DATE ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.LENGTH ;;
  }

  dimension: location_seg_sw {
    type: string
    sql: ${TABLE}.LOCATION_SEG_SW ;;
  }

  dimension: ltc_add_date {
    type: number
    sql: ${TABLE}.LTC_ADD_DATE ;;
  }

  dimension: ltc_calc_lead_days {
    type: number
    sql: ${TABLE}.LTC_CALC_LEAD_DAYS ;;
  }

  dimension: ltc_expiration_date {
    type: number
    sql: ${TABLE}.LTC_EXPIRATION_DATE ;;
  }

  dimension: ltc_manual_override {
    type: string
    sql: ${TABLE}.LTC_MANUAL_OVERRIDE ;;
  }

  dimension: ltl_heavy_flag {
    type: string
    sql: ${TABLE}.LTL_HEAVY_FLAG ;;
  }

  dimension: mad_lead_days {
    type: number
    sql: ${TABLE}.MAD_LEAD_DAYS ;;
  }

  dimension: min_bin_size {
    type: string
    sql: ${TABLE}.MIN_BIN_SIZE ;;
  }

  dimension: movement_code {
    type: string
    sql: ${TABLE}.MOVEMENT_CODE ;;
  }

  dimension: nbr_of_lead_days {
    type: number
    sql: ${TABLE}.NBR_OF_LEAD_DAYS ;;
  }

  dimension: no_of_picks {
    type: number
    sql: ${TABLE}.NO_OF_PICKS ;;
  }

  dimension: note_sw {
    type: string
    sql: ${TABLE}.NOTE_SW ;;
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

  dimension: oversize_indicator {
    type: string
    sql: ${TABLE}.OVERSIZE_INDICATOR ;;
  }

  dimension: pallet_qty {
    type: number
    sql: ${TABLE}.PALLET_QTY ;;
  }

  dimension: pick_casepack_qty {
    type: number
    sql: ${TABLE}.PICK_CASEPACK_QTY ;;
  }

  dimension: pick_casepack_sw {
    type: string
    sql: ${TABLE}.PICK_CASEPACK_SW ;;
  }

  dimension: pick_rule {
    type: string
    sql: ${TABLE}.PICK_RULE ;;
  }

  dimension: planned_on_order {
    type: number
    sql: ${TABLE}.PLANNED_ON_ORDER ;;
  }

  dimension: po_cost_override {
    type: number
    sql: ${TABLE}.PO_COST_OVERRIDE ;;
  }

  dimension: promo_qty {
    type: number
    sql: ${TABLE}.PROMO_QTY ;;
  }

  dimension: protect_sw {
    type: string
    sql: ${TABLE}.PROTECT_SW ;;
  }

  dimension: purch_var {
    type: number
    sql: ${TABLE}.PURCH_VAR ;;
  }

  dimension: put_bin_type {
    type: string
    sql: ${TABLE}.PUT_BIN_TYPE ;;
  }

  dimension: putaway_sw {
    type: string
    sql: ${TABLE}.PUTAWAY_SW ;;
  }

  dimension: qty_allocated {
    type: number
    sql: ${TABLE}.QTY_ALLOCATED ;;
  }

  dimension: qty_committed {
    type: number
    sql: ${TABLE}.QTY_COMMITTED ;;
  }

  dimension: qty_exception {
    type: number
    sql: ${TABLE}.QTY_EXCEPTION ;;
  }

  dimension: qty_on_bo {
    type: number
    sql: ${TABLE}.QTY_ON_BO ;;
  }

  dimension: qty_on_hold {
    type: number
    sql: ${TABLE}.QTY_ON_HOLD ;;
  }

  dimension: qty_on_order {
    type: number
    sql: ${TABLE}.QTY_ON_ORDER ;;
  }

  dimension: qty_rip {
    type: number
    sql: ${TABLE}.QTY_RIP ;;
  }

  dimension: qty_shipped {
    type: number
    sql: ${TABLE}.QTY_SHIPPED ;;
  }

  dimension: repack_only_sw {
    type: string
    sql: ${TABLE}.REPACK_ONLY_SW ;;
  }

  dimension: replenish_code {
    type: string
    sql: ${TABLE}.REPLENISH_CODE ;;
  }

  dimension: replenish_max_qty {
    type: number
    sql: ${TABLE}.REPLENISH_MAX_QTY ;;
  }

  dimension: replenish_min_qty {
    type: number
    sql: ${TABLE}.REPLENISH_MIN_QTY ;;
  }

  dimension: res_qty {
    type: number
    sql: ${TABLE}.RES_QTY ;;
  }

  dimension: reserved_seg_sw {
    type: string
    sql: ${TABLE}.RESERVED_SEG_SW ;;
  }

  dimension: salesman_setup {
    type: string
    sql: ${TABLE}.SALESMAN_SETUP ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: ship_location {
    type: string
    sql: ${TABLE}.SHIP_LOCATION ;;
  }

  dimension: ship_qty {
    type: number
    sql: ${TABLE}.SHIP_QTY ;;
  }

  dimension: sku_size_ind {
    type: string
    sql: ${TABLE}.SKU_SIZE_IND ;;
  }

  dimension: sku_type {
    type: string
    sql: ${TABLE}.SKU_TYPE ;;
  }

  dimension: soq_override_sw {
    type: string
    sql: ${TABLE}.SOQ_OVERRIDE_SW ;;
  }

  dimension: spec_pos {
    type: number
    sql: ${TABLE}.SPEC_POS ;;
  }

  dimension: status_date {
    type: number
    sql: ${TABLE}.STATUS_DATE ;;
  }

  dimension: status_inv_br {
    type: string
    sql: ${TABLE}.STATUS_INV_BR ;;
  }

  dimension: stck_out_count {
    type: number
    sql: ${TABLE}.STCK_OUT_COUNT ;;
  }

  dimension: stck_out_qty {
    type: number
    sql: ${TABLE}.STCK_OUT_QTY ;;
  }

  dimension: stock_pos {
    type: number
    sql: ${TABLE}.STOCK_POS ;;
  }

  dimension: sug_ord_qty {
    type: number
    sql: ${TABLE}.SUG_ORD_QTY ;;
  }

  dimension: vend_in_trans_qty {
    type: number
    sql: ${TABLE}.VEND_IN_TRANS_QTY ;;
  }

  dimension: vendor_boh_qty {
    type: number
    sql: ${TABLE}.VENDOR_BOH_QTY ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: vpp_status {
    type: string
    sql: ${TABLE}.VPP_STATUS ;;
  }

  dimension: warehouse_zone {
    type: string
    sql: ${TABLE}.WAREHOUSE_ZONE ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
  }

  dimension: wh_loc {
    type: string
    sql: ${TABLE}.WH_LOC ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.WIDTH ;;
  }

  dimension: wks_on_hand {
    type: number
    sql: ${TABLE}.WKS_ON_HAND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
