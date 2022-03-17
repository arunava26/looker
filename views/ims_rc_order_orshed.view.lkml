# The name of this view in Looker is "Ims Rc Order Orshed"
view: ims_rc_order_orshed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_RC_ORDER_ORSHED`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ack Code" in Explore.

  dimension: ack_code {
    type: string
    sql: ${TABLE}.ACK_CODE ;;
  }

  dimension: alliance_sw {
    type: string
    sql: ${TABLE}.ALLIANCE_SW ;;
  }

  dimension: aod_sw {
    type: string
    sql: ${TABLE}.AOD_SW ;;
  }

  dimension: base_rate_order_sw {
    type: string
    sql: ${TABLE}.BASE_RATE_ORDER_SW ;;
  }

  dimension: bill_to_br_nbr {
    type: string
    sql: ${TABLE}.BILL_TO_BR_NBR ;;
  }

  dimension: bill_to_cust_nbr {
    type: string
    sql: ${TABLE}.BILL_TO_CUST_NBR ;;
  }

  dimension: bill_to_suffix {
    type: string
    sql: ${TABLE}.BILL_TO_SUFFIX ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.CAMPAIGN ;;
  }

  dimension: caps_buyer {
    type: string
    sql: ${TABLE}.CAPS_BUYER ;;
  }

  dimension: caps_id_code {
    type: string
    sql: ${TABLE}.CAPS_ID_CODE ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}.CITY_CODE ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}.CONTRACT ;;
  }

  dimension: copy_code {
    type: string
    sql: ${TABLE}.COPY_CODE ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: county_code {
    type: string
    sql: ${TABLE}.COUNTY_CODE ;;
  }

  dimension: credit_release {
    type: string
    sql: ${TABLE}.CREDIT_RELEASE ;;
  }

  dimension: cu_business_type {
    type: string
    sql: ${TABLE}.CU_BUSINESS_TYPE ;;
  }

  dimension: cua_ship_from {
    type: string
    sql: ${TABLE}.CUA_SHIP_FROM ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: currency_rate {
    type: number
    sql: ${TABLE}.CURRENCY_RATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_currency_rate {
    type: sum
    sql: ${currency_rate} ;;
  }

  measure: average_currency_rate {
    type: average
    sql: ${currency_rate} ;;
  }

  dimension: cust_order_nbr {
    type: string
    sql: ${TABLE}.CUST_ORDER_NBR ;;
  }

  dimension: cust_ref_nbr {
    type: string
    sql: ${TABLE}.CUST_REF_NBR ;;
  }

  dimension: cust_ref_nbr2 {
    type: string
    sql: ${TABLE}.CUST_REF_NBR2 ;;
  }

  dimension: cust_type {
    type: string
    sql: ${TABLE}.CUST_TYPE ;;
  }

  dimension: customers_language_code {
    type: string
    sql: ${TABLE}.CUSTOMERS_LANGUAGE_CODE ;;
  }

  dimension: delivery_terms {
    type: string
    sql: ${TABLE}.DELIVERY_TERMS ;;
  }

  dimension: edi_co {
    type: string
    sql: ${TABLE}.EDI_CO ;;
  }

  dimension: end_cust_id {
    type: string
    sql: ${TABLE}.END_CUST_ID ;;
  }

  dimension: end_cust_num {
    type: string
    sql: ${TABLE}.END_CUST_NUM ;;
  }

  dimension: end_user_addr_suffix {
    type: string
    sql: ${TABLE}.END_USER_ADDR_SUFFIX ;;
  }

  dimension: end_user_authorization {
    type: string
    sql: ${TABLE}.END_USER_AUTHORIZATION ;;
  }

  dimension: end_user_cont_suffix {
    type: string
    sql: ${TABLE}.END_USER_CONT_SUFFIX ;;
  }

  dimension: end_user_nbr {
    type: string
    sql: ${TABLE}.END_USER_NBR ;;
  }

  dimension: end_user_order_sw {
    type: string
    sql: ${TABLE}.END_USER_ORDER_SW ;;
  }

  dimension: end_user_po_nbr {
    type: string
    sql: ${TABLE}.END_USER_PO_NBR ;;
  }

  dimension: end_user_vendor_flag {
    type: string
    sql: ${TABLE}.END_USER_VENDOR_FLAG ;;
  }

  dimension: enhanced_cm_sw {
    type: string
    sql: ${TABLE}.ENHANCED_CM_SW ;;
  }

  dimension: enhanced_rma_sw {
    type: string
    sql: ${TABLE}.ENHANCED_RMA_SW ;;
  }

  dimension: entry_date {
    type: number
    sql: ${TABLE}.ENTRY_DATE ;;
  }

  dimension: entry_method {
    type: string
    sql: ${TABLE}.ENTRY_METHOD ;;
  }

  dimension: entry_time {
    type: number
    sql: ${TABLE}.ENTRY_TIME ;;
  }

  dimension: ext_so_code {
    type: string
    sql: ${TABLE}.EXT_SO_CODE ;;
  }

  dimension: flooring_auth_nbr {
    type: string
    sql: ${TABLE}.FLOORING_AUTH_NBR ;;
  }

  dimension: freight_forwarder {
    type: string
    sql: ${TABLE}.FREIGHT_FORWARDER ;;
  }

  dimension: fulfillment_sw {
    type: string
    sql: ${TABLE}.FULFILLMENT_SW ;;
  }

  dimension: gl_offset_nbr {
    type: string
    sql: ${TABLE}.GL_OFFSET_NBR ;;
  }

  dimension: gl_offset_type {
    type: string
    sql: ${TABLE}.GL_OFFSET_TYPE ;;
  }

  dimension: gwmd_imag_apply_flag {
    type: string
    sql: ${TABLE}.GWMD_IMAG_APPLY_FLAG ;;
  }

  dimension: is_salesman {
    type: string
    sql: ${TABLE}.IS_SALESMAN ;;
  }

  dimension: job_acct_nbr {
    type: string
    sql: ${TABLE}.JOB_ACCT_NBR ;;
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

  dimension: ord_ref_nbr {
    type: string
    sql: ${TABLE}.ORD_REF_NBR ;;
  }

  dimension: order_management_sw {
    type: string
    sql: ${TABLE}.ORDER_MANAGEMENT_SW ;;
  }

  dimension: order_nbr {
    type: string
    sql: ${TABLE}.ORDER_NBR ;;
  }

  dimension: order_value_at_add {
    type: number
    sql: ${TABLE}.ORDER_VALUE_AT_ADD ;;
  }

  dimension: os_salesman {
    type: string
    sql: ${TABLE}.OS_SALESMAN ;;
  }

  dimension: payee {
    type: string
    sql: ${TABLE}.PAYEE ;;
  }

  dimension: postal_codes {
    type: string
    sql: ${TABLE}.POSTAL_CODES ;;
  }

  dimension: priority_code {
    type: string
    sql: ${TABLE}.PRIORITY_CODE ;;
  }

  dimension: reseller_nbr {
    type: string
    sql: ${TABLE}.RESELLER_NBR ;;
  }

  dimension: reseller_split_pct {
    type: number
    sql: ${TABLE}.RESELLER_SPLIT_PCT ;;
  }

  dimension: residential_sw {
    type: string
    sql: ${TABLE}.RESIDENTIAL_SW ;;
  }

  dimension: ship_to_suffix {
    type: string
    sql: ${TABLE}.SHIP_TO_SUFFIX ;;
  }

  dimension: sold_to_suffix {
    type: string
    sql: ${TABLE}.SOLD_TO_SUFFIX ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.SOURCE_CODE ;;
  }

  dimension: special_handle_sw {
    type: string
    sql: ${TABLE}.SPECIAL_HANDLE_SW ;;
  }

  dimension: split_bill_to_sw {
    type: string
    sql: ${TABLE}.SPLIT_BILL_TO_SW ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.STATE_CODE ;;
  }

  dimension: summ_invoice_code {
    type: string
    sql: ${TABLE}.SUMM_INVOICE_CODE ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TAX_CODE ;;
  }

  dimension: term_id {
    type: string
    sql: ${TABLE}.TERM_ID ;;
  }

  dimension: terms {
    type: number
    sql: ${TABLE}.TERMS ;;
  }

  dimension: trade_disc {
    type: number
    sql: ${TABLE}.TRADE_DISC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
