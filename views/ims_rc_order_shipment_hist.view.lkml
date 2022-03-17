# The name of this view in Looker is "Ims Rc Order Shipment Hist"
view: ims_rc_order_shipment_hist {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_RC_ORDER_SHIPMENT_HIST`
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

  dimension: alt_warehouse_co {
    type: string
    sql: ${TABLE}.ALT_WAREHOUSE_CO ;;
  }

  dimension: alt_wh_currency_rate {
    type: number
    sql: ${TABLE}.ALT_WH_CURRENCY_RATE ;;
  }

  dimension: backorder_status {
    type: string
    sql: ${TABLE}.BACKORDER_STATUS ;;
  }

  dimension: bank_code {
    type: string
    sql: ${TABLE}.BANK_CODE ;;
  }

  dimension: bankslip_data {
    type: string
    sql: ${TABLE}.BANKSLIP_DATA ;;
  }

  dimension: bill_lading_nbr {
    type: string
    sql: ${TABLE}.BILL_LADING_NBR ;;
  }

  dimension: bill_only_sw {
    type: string
    sql: ${TABLE}.BILL_ONLY_SW ;;
  }

  dimension: billing_method_sw {
    type: string
    sql: ${TABLE}.BILLING_METHOD_SW ;;
  }

  dimension: bkorder_frt_charge {
    type: string
    sql: ${TABLE}.BKORDER_FRT_CHARGE ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: br_nbr_ship_from {
    type: string
    sql: ${TABLE}.BR_NBR_SHIP_FROM ;;
  }

  dimension: brazil_bankslip_data {
    type: number
    sql: ${TABLE}.BRAZIL_BANKSLIP_DATA ;;
  }

  dimension: bypass_sell_cr_hold {
    type: string
    sql: ${TABLE}.BYPASS_SELL_CR_HOLD ;;
  }

  dimension: carr_type {
    type: string
    sql: ${TABLE}.CARR_TYPE ;;
  }

  dimension: carrier_code {
    type: string
    sql: ${TABLE}.CARRIER_CODE ;;
  }

  dimension: cfop_1 {
    type: string
    sql: ${TABLE}.CFOP_1 ;;
  }

  dimension: cfop_code_2 {
    type: string
    sql: ${TABLE}.CFOP_CODE_2 ;;
  }

  dimension: cofins_tax_rate {
    type: number
    sql: ${TABLE}.COFINS_TAX_RATE ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: config_finance_branch {
    type: string
    sql: ${TABLE}.CONFIG_FINANCE_BRANCH ;;
  }

  dimension: config_flag {
    type: string
    sql: ${TABLE}.CONFIG_FLAG ;;
  }

  dimension: config_status {
    type: string
    sql: ${TABLE}.CONFIG_STATUS ;;
  }

  dimension: credit_memo_code {
    type: string
    sql: ${TABLE}.CREDIT_MEMO_CODE ;;
  }

  dimension: credit_memo_reason {
    type: string
    sql: ${TABLE}.CREDIT_MEMO_REASON ;;
  }

  dimension: def_carrier_code {
    type: string
    sql: ${TABLE}.DEF_CARRIER_CODE ;;
  }

  dimension: delivery_restriction {
    type: string
    sql: ${TABLE}.DELIVERY_RESTRICTION ;;
  }

  dimension: discount_amt {
    type: number
    sql: ${TABLE}.DISCOUNT_AMT ;;
  }

  dimension: discount_qualify_sw {
    type: string
    sql: ${TABLE}.DISCOUNT_QUALIFY_SW ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: export_ord_ind {
    type: string
    sql: ${TABLE}.EXPORT_ORD_IND ;;
  }

  dimension: fo_override_code {
    type: string
    sql: ${TABLE}.FO_OVERRIDE_CODE ;;
  }

  dimension: fob_code {
    type: string
    sql: ${TABLE}.FOB_CODE ;;
  }

  dimension: foreign_discount_amt {
    type: number
    sql: ${TABLE}.FOREIGN_DISCOUNT_AMT ;;
  }

  dimension: foreign_frt_in_amt {
    type: number
    sql: ${TABLE}.FOREIGN_FRT_IN_AMT ;;
  }

  dimension: foreign_frt_out_amt {
    type: number
    sql: ${TABLE}.FOREIGN_FRT_OUT_AMT ;;
  }

  dimension: foreign_total_sales {
    type: number
    sql: ${TABLE}.FOREIGN_TOTAL_SALES ;;
  }

  dimension: foreign_total_tax {
    type: number
    sql: ${TABLE}.FOREIGN_TOTAL_TAX ;;
  }

  dimension: freight_fwrd_ind {
    type: string
    sql: ${TABLE}.FREIGHT_FWRD_IND ;;
  }

  dimension: frt_chrg_exception_sw {
    type: string
    sql: ${TABLE}.FRT_CHRG_EXCEPTION_SW ;;
  }

  dimension: frt_cus_pays {
    type: number
    sql: ${TABLE}.FRT_CUS_PAYS ;;
  }

  dimension: frt_in_amt {
    type: number
    sql: ${TABLE}.FRT_IN_AMT ;;
  }

  dimension: frt_in_code {
    type: string
    sql: ${TABLE}.FRT_IN_CODE ;;
  }

  dimension: frt_out_amt {
    type: number
    sql: ${TABLE}.FRT_OUT_AMT ;;
  }

  dimension: frt_out_code {
    type: string
    sql: ${TABLE}.FRT_OUT_CODE ;;
  }

  dimension: frt_out_cost {
    type: number
    sql: ${TABLE}.FRT_OUT_COST ;;
  }

  dimension: frt_tax {
    type: number
    sql: ${TABLE}.FRT_TAX ;;
  }

  dimension: ground_frt_out_amt {
    type: number
    sql: ${TABLE}.GROUND_FRT_OUT_AMT ;;
  }

  dimension: grs_tax_code {
    type: string
    sql: ${TABLE}.GRS_TAX_CODE ;;
  }

  dimension: grs_tax_rate {
    type: number
    sql: ${TABLE}.GRS_TAX_RATE ;;
  }

  dimension: invoice_date {
    type: number
    sql: ${TABLE}.INVOICE_DATE ;;
  }

  dimension: invoice_dist {
    type: string
    sql: ${TABLE}.INVOICE_DIST ;;
  }

  dimension: invoice_ord {
    type: string
    sql: ${TABLE}.INVOICE_ORD ;;
  }

  dimension: invoice_ship {
    type: string
    sql: ${TABLE}.INVOICE_SHIP ;;
  }

  dimension: iva_nonreg_rate {
    type: number
    sql: ${TABLE}.IVA_NONREG_RATE ;;
  }

  dimension: iva_reg_rate {
    type: number
    sql: ${TABLE}.IVA_REG_RATE ;;
  }

  dimension: last_print_date {
    type: number
    sql: ${TABLE}.LAST_PRINT_DATE ;;
  }

  dimension: last_print_time {
    type: number
    sql: ${TABLE}.LAST_PRINT_TIME ;;
  }

  dimension: md_disc_percent {
    type: number
    sql: ${TABLE}.MD_DISC_PERCENT ;;
  }

  dimension: num_of_cartons {
    type: number
    sql: ${TABLE}.NUM_OF_CARTONS ;;
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

  dimension: oe_carrier_code {
    type: string
    sql: ${TABLE}.OE_CARRIER_CODE ;;
  }

  dimension: oper_id {
    type: string
    sql: ${TABLE}.OPER_ID ;;
  }

  dimension: ord_ref_nbr {
    type: string
    sql: ${TABLE}.ORD_REF_NBR ;;
  }

  dimension: order_nbr {
    type: string
    sql: ${TABLE}.ORDER_NBR ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.ORDER_TYPE ;;
  }

  dimension: orig_frt_rate_amt {
    type: number
    sql: ${TABLE}.ORIG_FRT_RATE_AMT ;;
  }

  dimension: override_code {
    type: string
    sql: ${TABLE}.OVERRIDE_CODE ;;
  }

  dimension: parent_dist {
    type: string
    sql: ${TABLE}.PARENT_DIST ;;
  }

  dimension: parent_ord {
    type: string
    sql: ${TABLE}.PARENT_ORD ;;
  }

  dimension: parent_ship {
    type: string
    sql: ${TABLE}.PARENT_SHIP ;;
  }

  dimension: pick_status_sw {
    type: string
    sql: ${TABLE}.PICK_STATUS_SW ;;
  }

  dimension: print_count {
    type: string
    sql: ${TABLE}.PRINT_COUNT ;;
  }

  dimension: print_order_sw {
    type: string
    sql: ${TABLE}.PRINT_ORDER_SW ;;
  }

  dimension: promise_date {
    type: number
    sql: ${TABLE}.PROMISE_DATE ;;
  }

  dimension: qa_code {
    type: string
    sql: ${TABLE}.QA_CODE ;;
  }

  dimension: return_br {
    type: string
    sql: ${TABLE}.RETURN_BR ;;
  }

  dimension: rma_code {
    type: string
    sql: ${TABLE}.RMA_CODE ;;
  }

  dimension: ship_date {
    type: number
    sql: ${TABLE}.SHIP_DATE ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: ship_via {
    type: string
    sql: ${TABLE}.SHIP_VIA ;;
  }

  dimension: sla {
    type: string
    sql: ${TABLE}.SLA ;;
  }

  dimension: sls_mgr_code {
    type: string
    sql: ${TABLE}.SLS_MGR_CODE ;;
  }

  dimension: state_code_2 {
    type: string
    sql: ${TABLE}.STATE_CODE_2 ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: system_item_exist_sw {
    type: string
    sql: ${TABLE}.SYSTEM_ITEM_EXIST_SW ;;
  }

  dimension: tax_pct {
    type: number
    sql: ${TABLE}.TAX_PCT ;;
  }

  dimension: terms_disc_chrg_pct {
    type: number
    sql: ${TABLE}.TERMS_DISC_CHRG_PCT ;;
  }

  dimension: total_city_tax_amt {
    type: number
    sql: ${TABLE}.TOTAL_CITY_TAX_AMT ;;
  }

  dimension: total_cost {
    type: number
    sql: ${TABLE}.TOTAL_COST ;;
  }

  dimension: total_county_tax_amt {
    type: number
    sql: ${TABLE}.TOTAL_COUNTY_TAX_AMT ;;
  }

  dimension: total_ord_weight {
    type: number
    sql: ${TABLE}.TOTAL_ORD_WEIGHT ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.TOTAL_SALES ;;
  }

  dimension: total_state_tax_amt {
    type: number
    sql: ${TABLE}.TOTAL_STATE_TAX_AMT ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.TOTAL_TAX ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.TOTAL_WEIGHT ;;
  }

  dimension: transit_days {
    type: string
    sql: ${TABLE}.TRANSIT_DAYS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
