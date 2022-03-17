# The name of this view in Looker is "Ims Vndr Vnspch Purc Nam 0"
view: ims_vndr_vnspch_purc_nam_0 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_VNDR_VNSPCH_PURC_NAM_0`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Auto Email Nbr" in Explore.

  dimension: auto_email_nbr {
    type: string
    sql: ${TABLE}.AUTO_EMAIL_NBR ;;
  }

  dimension: auto_po_fax_number {
    type: string
    sql: ${TABLE}.AUTO_PO_FAX_NUMBER ;;
  }

  dimension: auto_po_fax_sw {
    type: string
    sql: ${TABLE}.AUTO_PO_FAX_SW ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: country_ind {
    type: string
    sql: ${TABLE}.COUNTRY_IND ;;
  }

  dimension: date_created {
    type: number
    sql: ${TABLE}.DATE_CREATED ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_date_created {
    type: sum
    sql: ${date_created} ;;
  }

  measure: average_date_created {
    type: average
    sql: ${date_created} ;;
  }

  dimension: dir_po_autofax_sw {
    type: string
    sql: ${TABLE}.DIR_PO_AUTOFAX_SW ;;
  }

  dimension: fax_dest_cc {
    type: string
    sql: ${TABLE}.FAX_DEST_CC ;;
  }

  dimension: fob {
    type: string
    sql: ${TABLE}.FOB ;;
  }

  dimension: gst_exemption_sw {
    type: string
    sql: ${TABLE}.GST_EXEMPTION_SW ;;
  }

  dimension: gst_hold_type {
    type: string
    sql: ${TABLE}.GST_HOLD_TYPE ;;
  }

  dimension: gst_tds_end_date {
    type: number
    sql: ${TABLE}.GST_TDS_END_DATE ;;
  }

  dimension: gst_tds_max_amt {
    type: number
    sql: ${TABLE}.GST_TDS_MAX_AMT ;;
  }

  dimension: gst_tds_rate {
    type: number
    sql: ${TABLE}.GST_TDS_RATE ;;
  }

  dimension: gst_tds_rate_applied_sw {
    type: string
    sql: ${TABLE}.GST_TDS_RATE_APPLIED_SW ;;
  }

  dimension: gst_tds_ref_nbr {
    type: string
    sql: ${TABLE}.GST_TDS_REF_NBR ;;
  }

  dimension: gst_tds_start_date {
    type: number
    sql: ${TABLE}.GST_TDS_START_DATE ;;
  }

  dimension: gst_tds_type {
    type: string
    sql: ${TABLE}.GST_TDS_TYPE ;;
  }

  dimension: gstin_end_date {
    type: number
    sql: ${TABLE}.GSTIN_END_DATE ;;
  }

  dimension: gstin_exempt_number {
    type: string
    sql: ${TABLE}.GSTIN_EXEMPT_NUMBER ;;
  }

  dimension: gstin_number {
    type: string
    sql: ${TABLE}.GSTIN_NUMBER ;;
  }

  dimension: gstin_start_date {
    type: number
    sql: ${TABLE}.GSTIN_START_DATE ;;
  }

  dimension: how {
    type: string
    sql: ${TABLE}.HOW ;;
  }

  dimension: imd_ship_via {
    type: string
    sql: ${TABLE}.IMD_SHIP_VIA ;;
  }

  dimension: inv_vend_nbr {
    type: string
    sql: ${TABLE}.INV_VEND_NBR ;;
  }

  dimension: mfg_from_country_code {
    type: string
    sql: ${TABLE}.MFG_FROM_COUNTRY_CODE ;;
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

  dimension: old_po_fax_number {
    type: string
    sql: ${TABLE}.OLD_PO_FAX_NUMBER ;;
  }

  dimension: payee_nbr {
    type: string
    sql: ${TABLE}.PAYEE_NBR ;;
  }

  dimension: po_type {
    type: string
    sql: ${TABLE}.PO_TYPE ;;
  }

  dimension: postal_codes {
    type: string
    sql: ${TABLE}.POSTAL_CODES ;;
  }

  dimension: purch_default_currency {
    type: string
    sql: ${TABLE}.PURCH_DEFAULT_CURRENCY ;;
  }

  dimension: purchasing_addr1 {
    type: string
    sql: ${TABLE}.PURCHASING_ADDR1 ;;
  }

  dimension: purchasing_name {
    type: string
    sql: ${TABLE}.PURCHASING_NAME ;;
  }

  dimension: purchasing_phone {
    type: number
    sql: ${TABLE}.PURCHASING_PHONE ;;
  }

  dimension: purchasing_suffix {
    type: string
    sql: ${TABLE}.PURCHASING_SUFFIX ;;
  }

  dimension: remit_in_po_sw {
    type: string
    sql: ${TABLE}.REMIT_IN_PO_SW ;;
  }

  dimension: rev_charge_type {
    type: string
    sql: ${TABLE}.REV_CHARGE_TYPE ;;
  }

  dimension: seg_type_vnspch {
    type: string
    sql: ${TABLE}.SEG_TYPE_VNSPCH ;;
  }

  dimension: ship_from_country_code {
    type: string
    sql: ${TABLE}.SHIP_FROM_COUNTRY_CODE ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.STATE_CODE ;;
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

  dimension: via {
    type: string
    sql: ${TABLE}.VIA ;;
  }

  dimension: vnp_date_last_maint {
    type: number
    sql: ${TABLE}.VNP_DATE_LAST_MAINT ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZIP_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [purchasing_name]
  }
}
