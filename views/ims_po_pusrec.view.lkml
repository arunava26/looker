# The name of this view in Looker is "Ims Po Pusrec"
view: ims_po_pusrec {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PO_PUSREC`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount Cust Billed" in Explore.

  dimension: amount_cust_billed {
    type: number
    sql: ${TABLE}.AMOUNT_CUST_BILLED ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount_cust_billed {
    type: sum
    sql: ${amount_cust_billed} ;;
  }

  measure: average_amount_cust_billed {
    type: average
    sql: ${amount_cust_billed} ;;
  }

  dimension: ap_invoice_total {
    type: number
    sql: ${TABLE}.AP_INVOICE_TOTAL ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: cgst_amt {
    type: number
    sql: ${TABLE}.CGST_AMT ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: ctl_br {
    type: string
    sql: ${TABLE}.CTL_BR ;;
  }

  dimension: ctl_nbr {
    type: string
    sql: ${TABLE}.CTL_NBR ;;
  }

  dimension: ctn_nbr {
    type: string
    sql: ${TABLE}.CTN_NBR ;;
  }

  dimension: curr_diff_amt {
    type: number
    sql: ${TABLE}.CURR_DIFF_AMT ;;
  }

  dimension: currency_rate {
    type: number
    sql: ${TABLE}.CURRENCY_RATE ;;
  }

  dimension: currency_rate_other {
    type: number
    sql: ${TABLE}.CURRENCY_RATE_OTHER ;;
  }

  dimension: date_matched {
    type: number
    sql: ${TABLE}.DATE_MATCHED ;;
  }

  dimension: duty_amt {
    type: number
    sql: ${TABLE}.DUTY_AMT ;;
  }

  dimension: fifo_reporting_sw {
    type: string
    sql: ${TABLE}.FIFO_REPORTING_SW ;;
  }

  dimension: gst_ind {
    type: string
    sql: ${TABLE}.GST_IND ;;
  }

  dimension: inv_rec_value_stk {
    type: number
    sql: ${TABLE}.INV_REC_VALUE_STK ;;
  }

  dimension: invoiced_today_sw {
    type: string
    sql: ${TABLE}.INVOICED_TODAY_SW ;;
  }

  dimension: microsiga_sw {
    type: string
    sql: ${TABLE}.MICROSIGA_SW ;;
  }

  dimension: misc_cost_amt {
    type: number
    sql: ${TABLE}.MISC_COST_AMT ;;
  }

  dimension: nbr_lines_rec {
    type: number
    sql: ${TABLE}.NBR_LINES_REC ;;
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

  dimension: ord_br {
    type: string
    sql: ${TABLE}.ORD_BR ;;
  }

  dimension: ord_dist {
    type: string
    sql: ${TABLE}.ORD_DIST ;;
  }

  dimension: ord_nbr {
    type: string
    sql: ${TABLE}.ORD_NBR ;;
  }

  dimension: ord_ship {
    type: string
    sql: ${TABLE}.ORD_SHIP ;;
  }

  dimension: ord_type {
    type: string
    sql: ${TABLE}.ORD_TYPE ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: rec_date {
    type: number
    sql: ${TABLE}.REC_DATE ;;
  }

  dimension: receipt_nbr {
    type: number
    sql: ${TABLE}.RECEIPT_NBR ;;
  }

  dimension: received_today_sw {
    type: string
    sql: ${TABLE}.RECEIVED_TODAY_SW ;;
  }

  dimension: receiving_sw {
    type: string
    sql: ${TABLE}.RECEIVING_SW ;;
  }

  dimension: ship_date {
    type: number
    sql: ${TABLE}.SHIP_DATE ;;
  }

  dimension: ship_from_country_code {
    type: string
    sql: ${TABLE}.SHIP_FROM_COUNTRY_CODE ;;
  }

  dimension: ship_reference {
    type: string
    sql: ${TABLE}.SHIP_REFERENCE ;;
  }

  dimension: ship_reference_me {
    type: string
    sql: ${TABLE}.SHIP_REFERENCE_ME ;;
  }

  dimension: spec_lne_ind_sw {
    type: string
    sql: ${TABLE}.SPEC_LNE_IND_SW ;;
  }

  dimension: status_ap {
    type: string
    sql: ${TABLE}.STATUS_AP ;;
  }

  dimension: status_cust_bill {
    type: string
    sql: ${TABLE}.STATUS_CUST_BILL ;;
  }

  dimension: status_receipt {
    type: string
    sql: ${TABLE}.STATUS_RECEIPT ;;
  }

  dimension: tax_amt {
    type: number
    sql: ${TABLE}.TAX_AMT ;;
  }

  dimension: total_amt_rec_spec {
    type: number
    sql: ${TABLE}.TOTAL_AMT_REC_SPEC ;;
  }

  dimension: total_amt_rec_stk {
    type: number
    sql: ${TABLE}.TOTAL_AMT_REC_STK ;;
  }

  dimension: total_qty_rec {
    type: number
    sql: ${TABLE}.TOTAL_QTY_REC ;;
  }

  dimension: totamt_recstk_alt {
    type: number
    sql: ${TABLE}.TOTAMT_RECSTK_ALT ;;
  }

  dimension: transmit_mo {
    type: string
    sql: ${TABLE}.TRANSMIT_MO ;;
  }

  dimension: transmit_nbr {
    type: string
    sql: ${TABLE}.TRANSMIT_NBR ;;
  }

  dimension: transmit_year {
    type: string
    sql: ${TABLE}.TRANSMIT_YEAR ;;
  }

  dimension: vat_indicator {
    type: string
    sql: ${TABLE}.VAT_INDICATOR ;;
  }

  dimension: vdr_exchg_rate {
    type: number
    sql: ${TABLE}.VDR_EXCHG_RATE ;;
  }

  dimension: vdr_exchg_rate_type {
    type: string
    sql: ${TABLE}.VDR_EXCHG_RATE_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
