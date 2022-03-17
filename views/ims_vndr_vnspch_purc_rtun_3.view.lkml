# The name of this view in Looker is "Ims Vndr Vnspch Purc Rtun 3"
view: ims_vndr_vnspch_purc_rtun_3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSPCH_PURC_RTUN_3`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Company" in Explore.

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: coordinator_id {
    type: string
    sql: ${TABLE}.COORDINATOR_ID ;;
  }

  dimension: euro_postal_code {
    type: string
    sql: ${TABLE}.EURO_POSTAL_CODE ;;
  }

  dimension: euro_return_city {
    type: string
    sql: ${TABLE}.EURO_RETURN_CITY ;;
  }

  dimension: euro_return_fax_area {
    type: string
    sql: ${TABLE}.EURO_RETURN_FAX_AREA ;;
  }

  dimension: euro_return_fax_int {
    type: string
    sql: ${TABLE}.EURO_RETURN_FAX_INT ;;
  }

  dimension: euro_return_phone_area {
    type: string
    sql: ${TABLE}.EURO_RETURN_PHONE_AREA ;;
  }

  dimension: freight_exempt {
    type: string
    sql: ${TABLE}.FREIGHT_EXEMPT ;;
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

  dimension: purchasing_suffix {
    type: string
    sql: ${TABLE}.PURCHASING_SUFFIX ;;
  }

  dimension: return_addr1 {
    type: string
    sql: ${TABLE}.RETURN_ADDR1 ;;
  }

  dimension: return_addr2 {
    type: string
    sql: ${TABLE}.RETURN_ADDR2 ;;
  }

  dimension: return_alt_tel_area_filler {
    type: string
    sql: ${TABLE}.RETURN_ALT_TEL_AREA_FILLER ;;
  }

  dimension: return_alt_tel_area_usa {
    type: string
    sql: ${TABLE}.RETURN_ALT_TEL_AREA_USA ;;
  }

  dimension: return_alt_tel_ext {
    type: string
    sql: ${TABLE}.RETURN_ALT_TEL_EXT ;;
  }

  dimension: return_alt_tel_nbr {
    type: string
    sql: ${TABLE}.RETURN_ALT_TEL_NBR ;;
  }

  dimension: return_attention {
    type: string
    sql: ${TABLE}.RETURN_ATTENTION ;;
  }

  dimension: return_city {
    type: string
    sql: ${TABLE}.RETURN_CITY ;;
  }

  dimension: return_contact {
    type: string
    sql: ${TABLE}.RETURN_CONTACT ;;
  }

  dimension: return_contact_email {
    type: string
    sql: ${TABLE}.RETURN_CONTACT_EMAIL ;;
  }

  dimension: return_damaged_days {
    type: number
    sql: ${TABLE}.RETURN_DAMAGED_DAYS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_return_damaged_days {
    type: sum
    sql: ${return_damaged_days} ;;
  }

  measure: average_return_damaged_days {
    type: average
    sql: ${return_damaged_days} ;;
  }

  dimension: return_damaged_pct {
    type: number
    sql: ${TABLE}.RETURN_DAMAGED_PCT ;;
  }

  dimension: return_date_created {
    type: number
    sql: ${TABLE}.RETURN_DATE_CREATED ;;
  }

  dimension: return_date_last_changed {
    type: number
    sql: ${TABLE}.RETURN_DATE_LAST_CHANGED ;;
  }

  dimension: return_default_sw {
    type: string
    sql: ${TABLE}.RETURN_DEFAULT_SW ;;
  }

  dimension: return_defective_days {
    type: number
    sql: ${TABLE}.RETURN_DEFECTIVE_DAYS ;;
  }

  dimension: return_defective_pct {
    type: number
    sql: ${TABLE}.RETURN_DEFECTIVE_PCT ;;
  }

  dimension: return_exceptions_sw {
    type: string
    sql: ${TABLE}.RETURN_EXCEPTIONS_SW ;;
  }

  dimension: return_fax_area {
    type: string
    sql: ${TABLE}.RETURN_FAX_AREA ;;
  }

  dimension: return_fax_method {
    type: string
    sql: ${TABLE}.RETURN_FAX_METHOD ;;
  }

  dimension: return_fax_pre {
    type: string
    sql: ${TABLE}.RETURN_FAX_PRE ;;
  }

  dimension: return_fax_suf {
    type: string
    sql: ${TABLE}.RETURN_FAX_SUF ;;
  }

  dimension: return_for_method {
    type: string
    sql: ${TABLE}.RETURN_FOR_METHOD ;;
  }

  dimension: return_freq_ind {
    type: string
    sql: ${TABLE}.RETURN_FREQ_IND ;;
  }

  dimension: return_note_1 {
    type: string
    sql: ${TABLE}.RETURN_NOTE_1 ;;
  }

  dimension: return_note_2 {
    type: string
    sql: ${TABLE}.RETURN_NOTE_2 ;;
  }

  dimension: return_note_3 {
    type: string
    sql: ${TABLE}.RETURN_NOTE_3 ;;
  }

  dimension: return_phone_area {
    type: string
    sql: ${TABLE}.RETURN_PHONE_AREA ;;
  }

  dimension: return_phone_ext {
    type: string
    sql: ${TABLE}.RETURN_PHONE_EXT ;;
  }

  dimension: return_phone_ext_2 {
    type: string
    sql: ${TABLE}.RETURN_PHONE_EXT_2 ;;
  }

  dimension: return_phone_nbr {
    type: string
    sql: ${TABLE}.RETURN_PHONE_NBR ;;
  }

  dimension: return_phone_nbr_2 {
    type: string
    sql: ${TABLE}.RETURN_PHONE_NBR_2 ;;
  }

  dimension: return_req_method_ind {
    type: string
    sql: ${TABLE}.RETURN_REQ_METHOD_IND ;;
  }

  dimension: return_sc_days {
    type: number
    sql: ${TABLE}.RETURN_SC_DAYS ;;
  }

  dimension: return_sc_pct {
    type: number
    sql: ${TABLE}.RETURN_SC_PCT ;;
  }

  dimension: return_serialized_ind {
    type: string
    sql: ${TABLE}.RETURN_SERIALIZED_IND ;;
  }

  dimension: return_state {
    type: string
    sql: ${TABLE}.RETURN_STATE ;;
  }

  dimension: return_stock_bal_days {
    type: number
    sql: ${TABLE}.RETURN_STOCK_BAL_DAYS ;;
  }

  dimension: return_stock_bal_pct {
    type: number
    sql: ${TABLE}.RETURN_STOCK_BAL_PCT ;;
  }

  dimension: return_tech_error_days {
    type: number
    sql: ${TABLE}.RETURN_TECH_ERROR_DAYS ;;
  }

  dimension: return_tech_error_pct {
    type: number
    sql: ${TABLE}.RETURN_TECH_ERROR_PCT ;;
  }

  dimension: return_wrong_sale_days {
    type: number
    sql: ${TABLE}.RETURN_WRONG_SALE_DAYS ;;
  }

  dimension: return_wrong_sale_pct {
    type: number
    sql: ${TABLE}.RETURN_WRONG_SALE_PCT ;;
  }

  dimension: return_zip {
    type: number
    sql: ${TABLE}.RETURN_ZIP ;;
  }

  dimension: return_zip_c {
    type: string
    sql: ${TABLE}.RETURN_ZIP_C ;;
  }

  dimension: seg_type_vnspch {
    type: string
    sql: ${TABLE}.SEG_TYPE_VNSPCH ;;
  }

  dimension: status_purch_vendor {
    type: string
    sql: ${TABLE}.STATUS_PURCH_VENDOR ;;
  }

  dimension: vendor_class {
    type: string
    sql: ${TABLE}.VENDOR_CLASS ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
