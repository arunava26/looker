# The name of this view in Looker is "Ims Ap Apshed"
view: ims_ap_apshed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_AP_APSHED`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Aankoop Month" in Explore.

  dimension: aankoop_month {
    type: string
    sql: ${TABLE}.AANKOOP_MONTH ;;
  }

  dimension: aankoop_year {
    type: string
    sql: ${TABLE}.AANKOOP_YEAR ;;
  }

  dimension: accrual_flag {
    type: string
    sql: ${TABLE}.ACCRUAL_FLAG ;;
  }

  dimension: acct_month {
    type: string
    sql: ${TABLE}.ACCT_MONTH ;;
  }

  dimension: acct_year {
    type: string
    sql: ${TABLE}.ACCT_YEAR ;;
  }

  dimension: alliance_sw {
    type: string
    sql: ${TABLE}.ALLIANCE_SW ;;
  }

  dimension: aph_vendor_inv_dm_type_me {
    type: string
    sql: ${TABLE}.APH_VENDOR_INV_DM_TYPE_ME ;;
  }

  dimension: aph_vendor_inv_nbr_1_me {
    type: string
    sql: ${TABLE}.APH_VENDOR_INV_NBR_1_ME ;;
  }

  dimension: bank_code {
    type: string
    sql: ${TABLE}.BANK_CODE ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: branch_payee_sw {
    type: string
    sql: ${TABLE}.BRANCH_PAYEE_SW ;;
  }

  dimension: change_time {
    type: number
    sql: ${TABLE}.CHANGE_TIME ;;
  }

  dimension: change_tranid {
    type: string
    sql: ${TABLE}.CHANGE_TRANID ;;
  }

  dimension: check_date {
    type: number
    sql: ${TABLE}.CHECK_DATE ;;
  }

  dimension: check_nbr {
    type: number
    sql: ${TABLE}.CHECK_NBR ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.CLASS ;;
  }

  dimension: clear_code {
    type: string
    sql: ${TABLE}.CLEAR_CODE ;;
  }

  dimension: clear_date {
    type: number
    sql: ${TABLE}.CLEAR_DATE ;;
  }

  dimension: clear_difference {
    type: number
    sql: ${TABLE}.CLEAR_DIFFERENCE ;;
  }

  dimension: commissions_sw {
    type: string
    sql: ${TABLE}.COMMISSIONS_SW ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: consigned_po_sw {
    type: string
    sql: ${TABLE}.CONSIGNED_PO_SW ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: currency_rate_at_invoice {
    type: number
    sql: ${TABLE}.CURRENCY_RATE_AT_INVOICE ;;
  }

  dimension: currency_rate_at_payment {
    type: number
    sql: ${TABLE}.CURRENCY_RATE_AT_PAYMENT ;;
  }

  dimension: date_entered {
    type: number
    sql: ${TABLE}.DATE_ENTERED ;;
  }

  dimension: date_last_changed {
    type: number
    sql: ${TABLE}.DATE_LAST_CHANGED ;;
  }

  dimension: debit_memo_sw {
    type: string
    sql: ${TABLE}.DEBIT_MEMO_SW ;;
  }

  dimension: direct_check_sw {
    type: string
    sql: ${TABLE}.DIRECT_CHECK_SW ;;
  }

  dimension: dis_date_ovr_sw {
    type: string
    sql: ${TABLE}.DIS_DATE_OVR_SW ;;
  }

  dimension: disc_amt {
    type: number
    sql: ${TABLE}.DISC_AMT ;;
  }

  dimension: disc_due_date {
    type: number
    sql: ${TABLE}.DISC_DUE_DATE ;;
  }

  dimension: disc_ovr_sw {
    type: string
    sql: ${TABLE}.DISC_OVR_SW ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.DIVISION ;;
  }

  dimension: end_user_order_no {
    type: string
    sql: ${TABLE}.END_USER_ORDER_NO ;;
  }

  dimension: entered_tranid {
    type: string
    sql: ${TABLE}.ENTERED_TRANID ;;
  }

  dimension: entry_month {
    type: string
    sql: ${TABLE}.ENTRY_MONTH ;;
  }

  dimension: entry_year {
    type: string
    sql: ${TABLE}.ENTRY_YEAR ;;
  }

  dimension: exempt_flag {
    type: string
    sql: ${TABLE}.EXEMPT_FLAG ;;
  }

  dimension: fx_or_orig_rate {
    type: number
    sql: ${TABLE}.FX_OR_ORIG_RATE ;;
  }

  dimension: fx_rate_indicator {
    type: string
    sql: ${TABLE}.FX_RATE_INDICATOR ;;
  }

  dimension: govt_tax_withholding_sw {
    type: string
    sql: ${TABLE}.GOVT_TAX_WITHHOLDING_SW ;;
  }

  dimension: gwmd_imag_disc_amt {
    type: number
    sql: ${TABLE}.GWMD_IMAG_DISC_AMT ;;
  }

  dimension: hold_code {
    type: string
    sql: ${TABLE}.HOLD_CODE ;;
  }

  dimension: hold_date {
    type: number
    sql: ${TABLE}.HOLD_DATE ;;
  }

  dimension: image_doc_id {
    type: string
    sql: ${TABLE}.IMAGE_DOC_ID ;;
  }

  dimension: inst_prtl_ind {
    type: string
    sql: ${TABLE}.INST_PRTL_IND ;;
  }

  dimension: inst_seq_nbr {
    type: number
    sql: ${TABLE}.INST_SEQ_NBR ;;
  }

  dimension: interco_flag {
    type: string
    sql: ${TABLE}.INTERCO_FLAG ;;
  }

  dimension: invoice_amt {
    type: number
    sql: ${TABLE}.INVOICE_AMT ;;
  }

  dimension: invoice_date {
    type: number
    sql: ${TABLE}.INVOICE_DATE ;;
  }

  dimension: invoice_type {
    type: string
    sql: ${TABLE}.INVOICE_TYPE ;;
  }

  dimension: multiple_payment_sw {
    type: string
    sql: ${TABLE}.MULTIPLE_PAYMENT_SW ;;
  }

  dimension: net_date_ovr_sw {
    type: string
    sql: ${TABLE}.NET_DATE_OVR_SW ;;
  }

  dimension: net_due_date {
    type: number
    sql: ${TABLE}.NET_DUE_DATE ;;
  }

  dimension: new_cleared_sw {
    type: string
    sql: ${TABLE}.NEW_CLEARED_SW ;;
  }

  dimension: new_paid_sw {
    type: string
    sql: ${TABLE}.NEW_PAID_SW ;;
  }

  dimension: new_void_sw {
    type: string
    sql: ${TABLE}.NEW_VOID_SW ;;
  }

  dimension: no_check_pay_method {
    type: string
    sql: ${TABLE}.NO_CHECK_PAY_METHOD ;;
  }

  dimension: notify_microsiga_sw {
    type: string
    sql: ${TABLE}.NOTIFY_MICROSIGA_SW ;;
  }

  dimension: number_of_payments {
    type: number
    sql: ${TABLE}.NUMBER_OF_PAYMENTS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_payments {
    type: sum
    sql: ${number_of_payments} ;;
  }

  measure: average_number_of_payments {
    type: average
    sql: ${number_of_payments} ;;
  }

  dimension: number_of_payments_made {
    type: number
    sql: ${TABLE}.NUMBER_OF_PAYMENTS_MADE ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_lst_upd_ts {
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
    sql: ${TABLE}.ODS_LST_UPD_TS ;;
  }

  dimension: original_termid {
    type: string
    sql: ${TABLE}.ORIGINAL_TERMID ;;
  }

  dimension: paid_month {
    type: string
    sql: ${TABLE}.PAID_MONTH ;;
  }

  dimension: paid_year {
    type: string
    sql: ${TABLE}.PAID_YEAR ;;
  }

  dimension: payee_nbr {
    type: string
    sql: ${TABLE}.PAYEE_NBR ;;
  }

  dimension: payee_ovr_sw {
    type: string
    sql: ${TABLE}.PAYEE_OVR_SW ;;
  }

  dimension: payee_suffix {
    type: string
    sql: ${TABLE}.PAYEE_SUFFIX ;;
  }

  dimension: payment_code {
    type: string
    sql: ${TABLE}.PAYMENT_CODE ;;
  }

  dimension: po_curr_converted_flag {
    type: string
    sql: ${TABLE}.PO_CURR_CONVERTED_FLAG ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: po_rec_nbr {
    type: string
    sql: ${TABLE}.PO_REC_NBR ;;
  }

  dimension: po_type {
    type: string
    sql: ${TABLE}.PO_TYPE ;;
  }

  dimension: postal_codes {
    type: string
    sql: ${TABLE}.POSTAL_CODES ;;
  }

  dimension: protocol_nbr {
    type: number
    sql: ${TABLE}.PROTOCOL_NBR ;;
  }

  dimension: prtl_lock_sw {
    type: string
    sql: ${TABLE}.PRTL_LOCK_SW ;;
  }

  dimension: prtl_seq_nbr {
    type: number
    sql: ${TABLE}.PRTL_SEQ_NBR ;;
  }

  dimension: purch_ship_date {
    type: number
    sql: ${TABLE}.PURCH_SHIP_DATE ;;
  }

  dimension: sagency_eu_pmnt_tran_cd {
    type: string
    sql: ${TABLE}.SAGENCY_EU_PMNT_TRAN_CD ;;
  }

  dimension: sagency_int_tran_paid_dt {
    type: number
    sql: ${TABLE}.SAGENCY_INT_TRAN_PAID_DT ;;
  }

  dimension: sagency_trans_sw {
    type: string
    sql: ${TABLE}.SAGENCY_TRANS_SW ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: tds_transm_flag {
    type: string
    sql: ${TABLE}.TDS_TRANSM_FLAG ;;
  }

  dimension: termid {
    type: string
    sql: ${TABLE}.TERMID ;;
  }

  dimension: terms_disc_days {
    type: number
    sql: ${TABLE}.TERMS_DISC_DAYS ;;
  }

  dimension: terms_disc_pct {
    type: number
    sql: ${TABLE}.TERMS_DISC_PCT ;;
  }

  dimension: terms_net_days {
    type: number
    sql: ${TABLE}.TERMS_NET_DAYS ;;
  }

  dimension: terms_ovr_sw {
    type: string
    sql: ${TABLE}.TERMS_OVR_SW ;;
  }

  dimension: transmittal_nbr {
    type: string
    sql: ${TABLE}.TRANSMITTAL_NBR ;;
  }

  dimension: transmittal_seq {
    type: string
    sql: ${TABLE}.TRANSMITTAL_SEQ ;;
  }

  dimension: vdr_exchg_rate {
    type: number
    sql: ${TABLE}.VDR_EXCHG_RATE ;;
  }

  dimension: vdr_exchg_rate_type {
    type: string
    sql: ${TABLE}.VDR_EXCHG_RATE_TYPE ;;
  }

  dimension: vendor_inv_dm_type {
    type: string
    sql: ${TABLE}.VENDOR_INV_DM_TYPE ;;
  }

  dimension: vendor_inv_nbr_1 {
    type: string
    sql: ${TABLE}.VENDOR_INV_NBR_1 ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZIP_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
