# The name of this view in Looker is "Ims Vndr Vnsap"
view: ims_vndr_vnsap {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSAP`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alt Bank ID" in Explore.

  dimension: alt_bank_id {
    type: string
    sql: ${TABLE}.ALT_BANK_ID ;;
  }

  dimension: bank_aba_code {
    type: string
    sql: ${TABLE}.BANK_ABA_CODE ;;
  }

  dimension: bank_acct_type {
    type: string
    sql: ${TABLE}.BANK_ACCT_TYPE ;;
  }

  dimension: bank_branch_name {
    type: string
    sql: ${TABLE}.BANK_BRANCH_NAME ;;
  }

  dimension: bank_code {
    type: string
    sql: ${TABLE}.BANK_CODE ;;
  }

  dimension: bank_id {
    type: string
    sql: ${TABLE}.BANK_ID ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.BANK_NAME ;;
  }

  dimension: central_payee_flag {
    type: string
    sql: ${TABLE}.CENTRAL_PAYEE_FLAG ;;
  }

  dimension: chk_carrier {
    type: string
    sql: ${TABLE}.CHK_CARRIER ;;
  }

  dimension: clerk_id {
    type: string
    sql: ${TABLE}.CLERK_ID ;;
  }

  dimension: comm_pay_typ {
    type: string
    sql: ${TABLE}.COMM_PAY_TYP ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: create_consign_dm_sw {
    type: string
    sql: ${TABLE}.CREATE_CONSIGN_DM_SW ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}.CREDIT_LIMIT ;;
  }

  dimension: daily_unpaid_balance {
    type: number
    sql: ${TABLE}.DAILY_UNPAID_BALANCE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_daily_unpaid_balance {
    type: sum
    sql: ${daily_unpaid_balance} ;;
  }

  measure: average_daily_unpaid_balance {
    type: average
    sql: ${daily_unpaid_balance} ;;
  }

  dimension: date_created {
    type: number
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension: date_last_activity {
    type: number
    sql: ${TABLE}.DATE_LAST_ACTIVITY ;;
  }

  dimension: date_last_maint {
    type: number
    sql: ${TABLE}.DATE_LAST_MAINT ;;
  }

  dimension: debit_note_freq {
    type: string
    sql: ${TABLE}.DEBIT_NOTE_FREQ ;;
  }

  dimension: default_currency {
    type: string
    sql: ${TABLE}.DEFAULT_CURRENCY ;;
  }

  dimension: dir_frt_flag {
    type: string
    sql: ${TABLE}.DIR_FRT_FLAG ;;
  }

  dimension: direct_check_sw {
    type: string
    sql: ${TABLE}.DIRECT_CHECK_SW ;;
  }

  dimension: direct_frt_sw {
    type: string
    sql: ${TABLE}.DIRECT_FRT_SW ;;
  }

  dimension: disc_flag {
    type: string
    sql: ${TABLE}.DISC_FLAG ;;
  }

  dimension: eft_float_day {
    type: number
    sql: ${TABLE}.EFT_FLOAT_DAY ;;
  }

  dimension: fax_contact {
    type: string
    sql: ${TABLE}.FAX_CONTACT ;;
  }

  dimension: fax_phone_nbr {
    type: string
    sql: ${TABLE}.FAX_PHONE_NBR ;;
  }

  dimension: fed_id_nbr {
    type: string
    sql: ${TABLE}.FED_ID_NBR ;;
  }

  dimension: freight_flag {
    type: string
    sql: ${TABLE}.FREIGHT_FLAG ;;
  }

  dimension: fxrate_inv_override_sw {
    type: string
    sql: ${TABLE}.FXRATE_INV_OVERRIDE_SW ;;
  }

  dimension: hold_code {
    type: string
    sql: ${TABLE}.HOLD_CODE ;;
  }

  dimension: hold_date {
    type: number
    sql: ${TABLE}.HOLD_DATE ;;
  }

  dimension: hold_days {
    type: number
    sql: ${TABLE}.HOLD_DAYS ;;
  }

  dimension: interco_flag {
    type: string
    sql: ${TABLE}.INTERCO_FLAG ;;
  }

  dimension: interm_bank_code {
    type: string
    sql: ${TABLE}.INTERM_BANK_CODE ;;
  }

  dimension: iso_country_code {
    type: string
    sql: ${TABLE}.ISO_COUNTRY_CODE ;;
  }

  dimension: last_check_amt {
    type: number
    sql: ${TABLE}.LAST_CHECK_AMT ;;
  }

  dimension: last_check_date {
    type: number
    sql: ${TABLE}.LAST_CHECK_DATE ;;
  }

  dimension: last_check_nbr {
    type: number
    sql: ${TABLE}.LAST_CHECK_NBR ;;
  }

  dimension: local_bank_code {
    type: string
    sql: ${TABLE}.LOCAL_BANK_CODE ;;
  }

  dimension: local_sw {
    type: string
    sql: ${TABLE}.LOCAL_SW ;;
  }

  dimension: meth_of_payment_flag {
    type: string
    sql: ${TABLE}.METH_OF_PAYMENT_FLAG ;;
  }

  dimension: mtd_tax_withhold {
    type: number
    sql: ${TABLE}.MTD_TAX_WITHHOLD ;;
  }

  dimension: mtd_taxable_amount {
    type: number
    sql: ${TABLE}.MTD_TAXABLE_AMOUNT ;;
  }

  dimension: name_payee {
    type: string
    sql: ${TABLE}.NAME_PAYEE ;;
  }

  dimension: no_ser_debit_flag {
    type: string
    sql: ${TABLE}.NO_SER_DEBIT_FLAG ;;
  }

  dimension: no_upc_debit_flag {
    type: string
    sql: ${TABLE}.NO_UPC_DEBIT_FLAG ;;
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

  dimension: payee_bank_acct {
    type: string
    sql: ${TABLE}.PAYEE_BANK_ACCT ;;
  }

  dimension: payee_suffix {
    type: string
    sql: ${TABLE}.PAYEE_SUFFIX ;;
  }

  dimension: payee_type {
    type: string
    sql: ${TABLE}.PAYEE_TYPE ;;
  }

  dimension: postal_codes {
    type: string
    sql: ${TABLE}.POSTAL_CODES ;;
  }

  dimension: soc_sec_nbr {
    type: string
    sql: ${TABLE}.SOC_SEC_NBR ;;
  }

  dimension: state_tax_id {
    type: string
    sql: ${TABLE}.STATE_TAX_ID ;;
  }

  dimension: status_payee {
    type: string
    sql: ${TABLE}.STATUS_PAYEE ;;
  }

  dimension: supervisor_id {
    type: string
    sql: ${TABLE}.SUPERVISOR_ID ;;
  }

  dimension: swift_code {
    type: string
    sql: ${TABLE}.SWIFT_CODE ;;
  }

  dimension: tax_compras_type {
    type: string
    sql: ${TABLE}.TAX_COMPRAS_TYPE ;;
  }

  dimension: tax_flag {
    type: string
    sql: ${TABLE}.TAX_FLAG ;;
  }

  dimension: tax_withhld_type {
    type: string
    sql: ${TABLE}.TAX_WITHHLD_TYPE ;;
  }

  dimension: tax_withhld_type_1 {
    type: string
    sql: ${TABLE}.TAX_WITHHLD_TYPE_1 ;;
  }

  dimension: tax_withhld_type_2 {
    type: string
    sql: ${TABLE}.TAX_WITHHLD_TYPE_2 ;;
  }

  dimension: tax_withhld_type_3 {
    type: string
    sql: ${TABLE}.TAX_WITHHLD_TYPE_3 ;;
  }

  dimension: tax_withhld_type_4 {
    type: string
    sql: ${TABLE}.TAX_WITHHLD_TYPE_4 ;;
  }

  dimension: tax_withhld_type_5 {
    type: string
    sql: ${TABLE}.TAX_WITHHLD_TYPE_5 ;;
  }

  dimension: tax_withhld_type_6 {
    type: string
    sql: ${TABLE}.TAX_WITHHLD_TYPE_6 ;;
  }

  dimension: ten99_code {
    type: string
    sql: ${TABLE}.TEN99_CODE ;;
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

  dimension: vat_id {
    type: string
    sql: ${TABLE}.VAT_ID ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: ytd_disc_taken_payee {
    type: number
    sql: ${TABLE}.YTD_DISC_TAKEN_PAYEE ;;
  }

  dimension: ytd_payments_payee {
    type: number
    sql: ${TABLE}.YTD_PAYMENTS_PAYEE ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZIP_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [bank_branch_name, bank_name]
  }
}
