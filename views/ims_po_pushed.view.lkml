# The name of this view in Looker is "Ims Po Pushed"
view: ims_po_pushed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PO_PUSHED`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alliance Flag" in Explore.

  dimension: alliance_flag {
    type: string
    sql: ${TABLE}.ALLIANCE_FLAG ;;
  }

  dimension: asn_ru_vend_nbr {
    type: string
    sql: ${TABLE}.ASN_RU_VEND_NBR ;;
  }

  dimension: auto_fax_sw {
    type: string
    sql: ${TABLE}.AUTO_FAX_SW ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: bt_doorlog {
    type: string
    sql: ${TABLE}.BT_DOORLOG ;;
  }

  dimension: buyer {
    type: string
    sql: ${TABLE}.BUYER ;;
  }

  dimension: cbn_ind {
    type: string
    sql: ${TABLE}.CBN_IND ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: complete_month {
    type: string
    sql: ${TABLE}.COMPLETE_MONTH ;;
  }

  dimension: config_xfer_sw {
    type: string
    sql: ${TABLE}.CONFIG_XFER_SW ;;
  }

  dimension: confirm_sw {
    type: string
    sql: ${TABLE}.CONFIRM_SW ;;
  }

  dimension: cons_po_sw {
    type: string
    sql: ${TABLE}.CONS_PO_SW ;;
  }

  dimension: consign_acct_po_sw {
    type: string
    sql: ${TABLE}.CONSIGN_ACCT_PO_SW ;;
  }

  dimension: creation_date {
    type: number
    sql: ${TABLE}.CREATION_DATE ;;
  }

  dimension: creation_time {
    type: number
    sql: ${TABLE}.CREATION_TIME ;;
  }

  dimension: cso_trk_nbr {
    type: number
    sql: ${TABLE}.CSO_TRK_NBR ;;
  }

  dimension: curr_rate {
    type: number
    sql: ${TABLE}.CURR_RATE ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.DIVISION ;;
  }

  dimension: door_log_invoice_nbr {
    type: string
    sql: ${TABLE}.DOOR_LOG_INVOICE_NBR ;;
  }

  dimension: dsfr2_who_pays_ind {
    type: string
    sql: ${TABLE}.DSFR2_WHO_PAYS_IND ;;
  }

  dimension: edi_cnt {
    type: string
    sql: ${TABLE}.EDI_CNT ;;
  }

  dimension: edi_invoice_received {
    type: string
    sql: ${TABLE}.EDI_INVOICE_RECEIVED ;;
  }

  dimension: edi_send_sw {
    type: string
    sql: ${TABLE}.EDI_SEND_SW ;;
  }

  dimension: emp_signature {
    type: string
    sql: ${TABLE}.EMP_SIGNATURE ;;
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

  dimension: end_user_vendor_flag {
    type: string
    sql: ${TABLE}.END_USER_VENDOR_FLAG ;;
  }

  dimension: eta_flag {
    type: string
    sql: ${TABLE}.ETA_FLAG ;;
  }

  dimension: eta_source {
    type: string
    sql: ${TABLE}.ETA_SOURCE ;;
  }

  dimension: fax_cnt {
    type: string
    sql: ${TABLE}.FAX_CNT ;;
  }

  dimension: fob {
    type: string
    sql: ${TABLE}.FOB ;;
  }

  dimension: from_cons_center_sw {
    type: string
    sql: ${TABLE}.FROM_CONS_CENTER_SW ;;
  }

  dimension: frt_out_code {
    type: string
    sql: ${TABLE}.FRT_OUT_CODE ;;
  }

  dimension: government_bid_flag {
    type: string
    sql: ${TABLE}.GOVERNMENT_BID_FLAG ;;
  }

  dimension: govt_gsa_ind {
    type: string
    sql: ${TABLE}.GOVT_GSA_IND ;;
  }

  dimension: gst_tax_code {
    type: string
    sql: ${TABLE}.GST_TAX_CODE ;;
  }

  dimension: gwmd_disc_flag {
    type: string
    sql: ${TABLE}.GWMD_DISC_FLAG ;;
  }

  dimension: how {
    type: string
    sql: ${TABLE}.HOW ;;
  }

  dimension: hp_csn {
    type: string
    sql: ${TABLE}.HP_CSN ;;
  }

  dimension: ia_entry_form_sw {
    type: string
    sql: ${TABLE}.IA_ENTRY_FORM_SW ;;
  }

  dimension: imagine_disc_flag {
    type: string
    sql: ${TABLE}.IMAGINE_DISC_FLAG ;;
  }

  dimension: imd_via {
    type: string
    sql: ${TABLE}.IMD_VIA ;;
  }

  dimension: imd_via_filler {
    type: string
    sql: ${TABLE}.IMD_VIA_FILLER ;;
  }

  dimension: imfirst_dl_rec_sw {
    type: string
    sql: ${TABLE}.IMFIRST_DL_REC_SW ;;
  }

  dimension: inv_br_nbr {
    type: string
    sql: ${TABLE}.INV_BR_NBR ;;
  }

  dimension: inv_vendor_nbr {
    type: string
    sql: ${TABLE}.INV_VENDOR_NBR ;;
  }

  dimension: is_salesman {
    type: string
    sql: ${TABLE}.IS_SALESMAN ;;
  }

  dimension: l_sku_type_po_sw {
    type: string
    sql: ${TABLE}.L_SKU_TYPE_PO_SW ;;
  }

  dimension: last_line_nbr {
    type: number
    sql: ${TABLE}.LAST_LINE_NBR ;;
  }

  dimension: last_receipt_nbr {
    type: number
    sql: ${TABLE}.LAST_RECEIPT_NBR ;;
  }

  dimension: last_receipt_opid {
    type: string
    sql: ${TABLE}.LAST_RECEIPT_OPID ;;
  }

  dimension: last_receipt_type {
    type: string
    sql: ${TABLE}.LAST_RECEIPT_TYPE ;;
  }

  dimension: mfg_order_nbr {
    type: string
    sql: ${TABLE}.MFG_ORDER_NBR ;;
  }

  dimension: mfg_plant_nbr {
    type: string
    sql: ${TABLE}.MFG_PLANT_NBR ;;
  }

  dimension: mother_whse_po_ind {
    type: string
    sql: ${TABLE}.MOTHER_WHSE_PO_IND ;;
  }

  dimension: new_po_sw {
    type: string
    sql: ${TABLE}.NEW_PO_SW ;;
  }

  dimension: np_order_ind {
    type: string
    sql: ${TABLE}.NP_ORDER_IND ;;
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

  dimension: origin_system {
    type: string
    sql: ${TABLE}.ORIGIN_SYSTEM ;;
  }

  dimension: ploc {
    type: string
    sql: ${TABLE}.PLOC ;;
  }

  dimension: po_consigned_sw {
    type: string
    sql: ${TABLE}.PO_CONSIGNED_SW ;;
  }

  dimension: po_create_opid {
    type: string
    sql: ${TABLE}.PO_CREATE_OPID ;;
  }

  dimension: po_date {
    type: number
    sql: ${TABLE}.PO_DATE ;;
  }

  dimension: po_manual_send_ind {
    type: string
    sql: ${TABLE}.PO_MANUAL_SEND_IND ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: po_time {
    type: number
    sql: ${TABLE}.PO_TIME ;;
  }

  dimension: priority_flag {
    type: string
    sql: ${TABLE}.PRIORITY_FLAG ;;
  }

  dimension: prnt_edi_fax_sw {
    type: string
    sql: ${TABLE}.PRNT_EDI_FAX_SW ;;
  }

  dimension: promise_date {
    type: number
    sql: ${TABLE}.PROMISE_DATE ;;
  }

  dimension: promise_time {
    type: number
    sql: ${TABLE}.PROMISE_TIME ;;
  }

  dimension: prt_cnt {
    type: string
    sql: ${TABLE}.PRT_CNT ;;
  }

  dimension: pur_vendor_suf {
    type: string
    sql: ${TABLE}.PUR_VENDOR_SUF ;;
  }

  dimension: purchasing_type {
    type: string
    sql: ${TABLE}.PURCHASING_TYPE ;;
  }

  dimension: rec_in_progress_sw {
    type: string
    sql: ${TABLE}.REC_IN_PROGRESS_SW ;;
  }

  dimension: required_receipt_date {
    type: number
    sql: ${TABLE}.REQUIRED_RECEIPT_DATE ;;
  }

  dimension: rf_br_transfer_sw {
    type: string
    sql: ${TABLE}.RF_BR_TRANSFER_SW ;;
  }

  dimension: rtns_hold_code {
    type: string
    sql: ${TABLE}.RTNS_HOLD_CODE ;;
  }

  dimension: rtns_hold_type {
    type: string
    sql: ${TABLE}.RTNS_HOLD_TYPE ;;
  }

  dimension: sf_br {
    type: string
    sql: ${TABLE}.SF_BR ;;
  }

  dimension: ship_complete_sw {
    type: string
    sql: ${TABLE}.SHIP_COMPLETE_SW ;;
  }

  dimension: ship_from_state {
    type: string
    sql: ${TABLE}.SHIP_FROM_STATE ;;
  }

  dimension: so_br {
    type: string
    sql: ${TABLE}.SO_BR ;;
  }

  dimension: so_company {
    type: string
    sql: ${TABLE}.SO_COMPANY ;;
  }

  dimension: so_dist {
    type: string
    sql: ${TABLE}.SO_DIST ;;
  }

  dimension: so_entry_date {
    type: number
    sql: ${TABLE}.SO_ENTRY_DATE ;;
  }

  dimension: so_nbr {
    type: string
    sql: ${TABLE}.SO_NBR ;;
  }

  dimension: so_ship {
    type: string
    sql: ${TABLE}.SO_SHIP ;;
  }

  dimension: so_to_cust_type {
    type: string
    sql: ${TABLE}.SO_TO_CUST_TYPE ;;
  }

  dimension: special_disc {
    type: number
    sql: ${TABLE}.SPECIAL_DISC ;;
  }

  dimension: status_date {
    type: number
    sql: ${TABLE}.STATUS_DATE ;;
  }

  dimension: status_purchasing {
    type: string
    sql: ${TABLE}.STATUS_PURCHASING ;;
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

  dimension: third_party_frt_account {
    type: string
    sql: ${TABLE}.THIRD_PARTY_FRT_ACCOUNT ;;
  }

  dimension: total_cost {
    type: number
    sql: ${TABLE}.TOTAL_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_total_cost {
    type: sum
    sql: ${total_cost} ;;
  }

  measure: average_total_cost {
    type: average
    sql: ${total_cost} ;;
  }

  dimension: total_cost_in_trans {
    type: number
    sql: ${TABLE}.TOTAL_COST_IN_TRANS ;;
  }

  dimension: total_cost_local {
    type: number
    sql: ${TABLE}.TOTAL_COST_LOCAL ;;
  }

  dimension: total_cost_received {
    type: number
    sql: ${TABLE}.TOTAL_COST_RECEIVED ;;
  }

  dimension: total_nbr_of_receipts {
    type: number
    sql: ${TABLE}.TOTAL_NBR_OF_RECEIPTS ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.TOTAL_WEIGHT ;;
  }

  dimension: tracer_cnt {
    type: string
    sql: ${TABLE}.TRACER_CNT ;;
  }

  dimension: tracer_date {
    type: number
    sql: ${TABLE}.TRACER_DATE ;;
  }

  dimension: vat_br_transfer_sw {
    type: string
    sql: ${TABLE}.VAT_BR_TRANSFER_SW ;;
  }

  dimension: vendor_country_ind {
    type: string
    sql: ${TABLE}.VENDOR_COUNTRY_IND ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: vendor_po_nbr {
    type: string
    sql: ${TABLE}.VENDOR_PO_NBR ;;
  }

  dimension: vendor_ship_id {
    type: string
    sql: ${TABLE}.VENDOR_SHIP_ID ;;
  }

  dimension: vsn_date {
    type: number
    sql: ${TABLE}.VSN_DATE ;;
  }

  dimension: vsn_time {
    type: number
    sql: ${TABLE}.VSN_TIME ;;
  }

  dimension: vsq_order_flag {
    type: string
    sql: ${TABLE}.VSQ_ORDER_FLAG ;;
  }

  dimension: web_send_cnt {
    type: string
    sql: ${TABLE}.WEB_SEND_CNT ;;
  }

  dimension: web_send_sw {
    type: string
    sql: ${TABLE}.WEB_SEND_SW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
