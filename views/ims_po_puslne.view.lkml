# The name of this view in Looker is "Ims Po Puslne"
view: ims_po_puslne {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PO_PUSLNE`
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

  dimension: allocated_line_sw {
    type: string
    sql: ${TABLE}.ALLOCATED_LINE_SW ;;
  }

  dimension: allocated_qty {
    type: number
    sql: ${TABLE}.ALLOCATED_QTY ;;
  }

  dimension: alt_br {
    type: string
    sql: ${TABLE}.ALT_BR ;;
  }

  dimension: alt_co {
    type: string
    sql: ${TABLE}.ALT_CO ;;
  }

  dimension: avg_cost_before {
    type: number
    sql: ${TABLE}.AVG_COST_BEFORE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_cost_before {
    type: sum
    sql: ${avg_cost_before} ;;
  }

  measure: average_avg_cost_before {
    type: average
    sql: ${avg_cost_before} ;;
  }

  dimension: avg_cost_boh_before {
    type: number
    sql: ${TABLE}.AVG_COST_BOH_BEFORE ;;
  }

  dimension: bal_on_hand_qty {
    type: number
    sql: ${TABLE}.BAL_ON_HAND_QTY ;;
  }

  dimension: base_unit {
    type: string
    sql: ${TABLE}.BASE_UNIT ;;
  }

  dimension: bo_sw {
    type: string
    sql: ${TABLE}.BO_SW ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: brtr_so_cst_at_bill {
    type: number
    sql: ${TABLE}.BRTR_SO_CST_AT_BILL ;;
  }

  dimension: case_override_sw {
    type: string
    sql: ${TABLE}.CASE_OVERRIDE_SW ;;
  }

  dimension: case_pallet_sw {
    type: string
    sql: ${TABLE}.CASE_PALLET_SW ;;
  }

  dimension: cat_nbr {
    type: string
    sql: ${TABLE}.CAT_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cost_updated_sw {
    type: string
    sql: ${TABLE}.COST_UPDATED_SW ;;
  }

  dimension: creation_date {
    type: number
    sql: ${TABLE}.CREATION_DATE ;;
  }

  dimension: creation_time {
    type: number
    sql: ${TABLE}.CREATION_TIME ;;
  }

  dimension: customs_exchng_rate {
    type: number
    sql: ${TABLE}.CUSTOMS_EXCHNG_RATE ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: door_log_date {
    type: number
    sql: ${TABLE}.DOOR_LOG_DATE ;;
  }

  dimension: door_log_nbr {
    type: string
    sql: ${TABLE}.DOOR_LOG_NBR ;;
  }

  dimension: door_rec_nbr {
    type: string
    sql: ${TABLE}.DOOR_REC_NBR ;;
  }

  dimension: duty_code {
    type: string
    sql: ${TABLE}.DUTY_CODE ;;
  }

  dimension: eta_source {
    type: string
    sql: ${TABLE}.ETA_SOURCE ;;
  }

  dimension: eu_mrkt_sgmt_typ_cd {
    type: string
    sql: ${TABLE}.EU_MRKT_SGMT_TYP_CD ;;
  }

  dimension: extra_disc {
    type: number
    sql: ${TABLE}.EXTRA_DISC ;;
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

  dimension: icms_code {
    type: string
    sql: ${TABLE}.ICMS_CODE ;;
  }

  dimension: inv_ind {
    type: string
    sql: ${TABLE}.INV_IND ;;
  }

  dimension: inv_um {
    type: string
    sql: ${TABLE}.INV_UM ;;
  }

  dimension: inv_unit_cost {
    type: number
    sql: ${TABLE}.INV_UNIT_COST ;;
  }

  dimension: last_case_pallet_sw {
    type: string
    sql: ${TABLE}.LAST_CASE_PALLET_SW ;;
  }

  dimension: last_chg_date {
    type: number
    sql: ${TABLE}.LAST_CHG_DATE ;;
  }

  dimension: last_chg_opid {
    type: string
    sql: ${TABLE}.LAST_CHG_OPID ;;
  }

  dimension: last_chg_type {
    type: string
    sql: ${TABLE}.LAST_CHG_TYPE ;;
  }

  dimension: last_rec_date {
    type: number
    sql: ${TABLE}.LAST_REC_DATE ;;
  }

  dimension: last_rec_inv_unit {
    type: number
    sql: ${TABLE}.LAST_REC_INV_UNIT ;;
  }

  dimension: last_rec_nbr {
    type: number
    sql: ${TABLE}.LAST_REC_NBR ;;
  }

  dimension: last_rec_new_avg_cost {
    type: number
    sql: ${TABLE}.LAST_REC_NEW_AVG_COST ;;
  }

  dimension: last_rec_qty {
    type: number
    sql: ${TABLE}.LAST_REC_QTY ;;
  }

  dimension: last_rec_quoted_unit_cost {
    type: number
    sql: ${TABLE}.LAST_REC_QUOTED_UNIT_COST ;;
  }

  dimension: last_rec_time {
    type: number
    sql: ${TABLE}.LAST_REC_TIME ;;
  }

  dimension: last_rec_voided_sw {
    type: string
    sql: ${TABLE}.LAST_REC_VOIDED_SW ;;
  }

  dimension: last_receipt_type {
    type: string
    sql: ${TABLE}.LAST_RECEIPT_TYPE ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: misc_cost {
    type: number
    sql: ${TABLE}.MISC_COST ;;
  }

  dimension: np_ind {
    type: string
    sql: ${TABLE}.NP_IND ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_prod_lst_upd_dt {
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
    sql: ${TABLE}.ODS_PROD_LST_UPD_DT ;;
  }

  dimension: order_line_nbr {
    type: string
    sql: ${TABLE}.ORDER_LINE_NBR ;;
  }

  dimension: pallet_nbr {
    type: string
    sql: ${TABLE}.PALLET_NBR ;;
  }

  dimension: pallet_rec_nbr {
    type: string
    sql: ${TABLE}.PALLET_REC_NBR ;;
  }

  dimension: pallet_rec_type {
    type: string
    sql: ${TABLE}.PALLET_REC_TYPE ;;
  }

  dimension: part_number {
    type: string
    sql: ${TABLE}.PART_NUMBER ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: prepaid_maint {
    type: string
    sql: ${TABLE}.PREPAID_MAINT ;;
  }

  dimension: priority_flag {
    type: string
    sql: ${TABLE}.PRIORITY_FLAG ;;
  }

  dimension: program_code {
    type: string
    sql: ${TABLE}.PROGRAM_CODE ;;
  }

  dimension: prom_date {
    type: number
    sql: ${TABLE}.PROM_DATE ;;
  }

  dimension: prom_time {
    type: number
    sql: ${TABLE}.PROM_TIME ;;
  }

  dimension: qty_in_trans {
    type: number
    sql: ${TABLE}.QTY_IN_TRANS ;;
  }

  dimension: qty_open {
    type: number
    sql: ${TABLE}.QTY_OPEN ;;
  }

  dimension: qty_ordered {
    type: number
    sql: ${TABLE}.QTY_ORDERED ;;
  }

  dimension: qty_ordered_orig {
    type: number
    sql: ${TABLE}.QTY_ORDERED_ORIG ;;
  }

  dimension: qty_received {
    type: number
    sql: ${TABLE}.QTY_RECEIVED ;;
  }

  dimension: qty_transferred {
    type: number
    sql: ${TABLE}.QTY_TRANSFERRED ;;
  }

  dimension: quoted_unit_cost {
    type: number
    sql: ${TABLE}.QUOTED_UNIT_COST ;;
  }

  dimension: rcm_unit_amt {
    type: number
    sql: ${TABLE}.RCM_UNIT_AMT ;;
  }

  dimension: rcv_duty_rate {
    type: number
    sql: ${TABLE}.RCV_DUTY_RATE ;;
  }

  dimension: rcv_field_pop_sw {
    type: string
    sql: ${TABLE}.RCV_FIELD_POP_SW ;;
  }

  dimension: rcv_misc_cost {
    type: number
    sql: ${TABLE}.RCV_MISC_COST ;;
  }

  dimension: rcv_tax_rate {
    type: number
    sql: ${TABLE}.RCV_TAX_RATE ;;
  }

  dimension: reseller_part_nbr {
    type: string
    sql: ${TABLE}.RESELLER_PART_NBR ;;
  }

  dimension: rf_rec_qty {
    type: number
    sql: ${TABLE}.RF_REC_QTY ;;
  }

  dimension: rf_status {
    type: string
    sql: ${TABLE}.RF_STATUS ;;
  }

  dimension: roll_sw {
    type: string
    sql: ${TABLE}.ROLL_SW ;;
  }

  dimension: rsv_cust_br {
    type: string
    sql: ${TABLE}.RSV_CUST_BR ;;
  }

  dimension: rsv_cust_nbr {
    type: string
    sql: ${TABLE}.RSV_CUST_NBR ;;
  }

  dimension: rsv_cust_seq {
    type: string
    sql: ${TABLE}.RSV_CUST_SEQ ;;
  }

  dimension: rsv_qty {
    type: number
    sql: ${TABLE}.RSV_QTY ;;
  }

  dimension: rsv_type {
    type: string
    sql: ${TABLE}.RSV_TYPE ;;
  }

  dimension: sap_po_item_number {
    type: string
    sql: ${TABLE}.SAP_PO_ITEM_NUMBER ;;
  }

  dimension: sap_po_pr_number {
    type: string
    sql: ${TABLE}.SAP_PO_PR_NUMBER ;;
  }

  dimension: sat_tax {
    type: number
    sql: ${TABLE}.SAT_TAX ;;
  }

  dimension: semi_conductor_sw {
    type: string
    sql: ${TABLE}.SEMI_CONDUCTOR_SW ;;
  }

  dimension: ship_qty {
    type: number
    sql: ${TABLE}.SHIP_QTY ;;
  }

  dimension: status_line {
    type: string
    sql: ${TABLE}.STATUS_LINE ;;
  }

  dimension: std_pack_1 {
    type: number
    sql: ${TABLE}.STD_PACK_1 ;;
  }

  dimension: system_component_sw {
    type: string
    sql: ${TABLE}.SYSTEM_COMPONENT_SW ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TAX_CODE ;;
  }

  dimension: temp_rec_qty {
    type: number
    sql: ${TABLE}.TEMP_REC_QTY ;;
  }

  dimension: temp_rec_status {
    type: string
    sql: ${TABLE}.TEMP_REC_STATUS ;;
  }

  dimension: tes_code {
    type: string
    sql: ${TABLE}.TES_CODE ;;
  }

  dimension: transfer_status {
    type: string
    sql: ${TABLE}.TRANSFER_STATUS ;;
  }

  dimension: type_line {
    type: string
    sql: ${TABLE}.TYPE_LINE ;;
  }

  dimension: uc_override_sw {
    type: string
    sql: ${TABLE}.UC_OVERRIDE_SW ;;
  }

  dimension: upc_part_nbr {
    type: string
    sql: ${TABLE}.UPC_PART_NBR ;;
  }

  dimension: vat_cst_ind {
    type: string
    sql: ${TABLE}.VAT_CST_IND ;;
  }

  dimension: vat_cst_tax {
    type: number
    sql: ${TABLE}.VAT_CST_TAX ;;
  }

  dimension: vendor_line_nbr {
    type: string
    sql: ${TABLE}.VENDOR_LINE_NBR ;;
  }

  dimension: vendor_order_nbr {
    type: string
    sql: ${TABLE}.VENDOR_ORDER_NBR ;;
  }

  dimension: vendor_part_nbr {
    type: string
    sql: ${TABLE}.VENDOR_PART_NBR ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
  }

  dimension: weight_per {
    type: string
    sql: ${TABLE}.WEIGHT_PER ;;
  }

  dimension: xtra_desc_sw {
    type: string
    sql: ${TABLE}.XTRA_DESC_SW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
