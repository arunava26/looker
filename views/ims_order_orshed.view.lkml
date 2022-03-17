# The name of this view in Looker is "Ims Order Orshed"
view: ims_order_orshed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_ORDER_ORSHED`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Base Rate Ordr Sw" in Explore.

  dimension: base_rate_ordr_sw {
    type: string
    sql: ${TABLE}.BASE_RATE_ORDR_SW ;;
  }

  dimension: bid_exp_dt {
    type: number
    sql: ${TABLE}.BID_EXP_DT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bid_exp_dt {
    type: sum
    sql: ${bid_exp_dt} ;;
  }

  measure: average_bid_exp_dt {
    type: average
    sql: ${bid_exp_dt} ;;
  }

  dimension: bid_qot_flg {
    type: string
    sql: ${TABLE}.BID_QOT_FLG ;;
  }

  dimension: bill_to_branch_nbr {
    type: string
    sql: ${TABLE}.BILL_TO_BRANCH_NBR ;;
  }

  dimension: bill_to_cust_nbr {
    type: string
    sql: ${TABLE}.BILL_TO_CUST_NBR ;;
  }

  dimension: bill_to_sfx {
    type: string
    sql: ${TABLE}.BILL_TO_SFX ;;
  }

  dimension: bin_typ {
    type: string
    sql: ${TABLE}.BIN_TYP ;;
  }

  dimension: bordr_stus {
    type: string
    sql: ${TABLE}.BORDR_STUS ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.CAMPAIGN ;;
  }

  dimension: caps_id_cd {
    type: string
    sql: ${TABLE}.CAPS_ID_CD ;;
  }

  dimension: ccy_cd {
    type: string
    sql: ${TABLE}.CCY_CD ;;
  }

  dimension: ccy_rate {
    type: number
    sql: ${TABLE}.CCY_RATE ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: configuration_flag {
    type: string
    sql: ${TABLE}.CONFIGURATION_FLAG ;;
  }

  dimension: cr_crd_sw {
    type: string
    sql: ${TABLE}.CR_CRD_SW ;;
  }

  dimension: cr_rels {
    type: string
    sql: ${TABLE}.CR_RELS ;;
  }

  dimension: cu_bus_sgmt {
    type: string
    sql: ${TABLE}.CU_BUS_SGMT ;;
  }

  dimension: cu_bus_typ {
    type: string
    sql: ${TABLE}.CU_BUS_TYP ;;
  }

  dimension: cua_ship_from {
    type: string
    sql: ${TABLE}.CUA_SHIP_FROM ;;
  }

  dimension: cust_ordr_nbr {
    type: string
    sql: ${TABLE}.CUST_ORDR_NBR ;;
  }

  dimension: edi_co {
    type: string
    sql: ${TABLE}.EDI_CO ;;
  }

  dimension: end_user_addr_suffix {
    type: string
    sql: ${TABLE}.END_USER_ADDR_SUFFIX ;;
  }

  dimension: end_user_authorization {
    type: string
    sql: ${TABLE}.END_USER_AUTHORIZATION ;;
  }

  dimension: end_user_data_sw {
    type: string
    sql: ${TABLE}.END_USER_DATA_SW ;;
  }

  dimension: end_user_nbr {
    type: string
    sql: ${TABLE}.END_USER_NBR ;;
  }

  dimension: end_user_po_nbr {
    type: string
    sql: ${TABLE}.END_USER_PO_NBR ;;
  }

  dimension: end_user_vendor_flag {
    type: string
    sql: ${TABLE}.END_USER_VENDOR_FLAG ;;
  }

  dimension: enhcd_cr_memo_sw {
    type: string
    sql: ${TABLE}.ENHCD_CR_MEMO_SW ;;
  }

  dimension: enhcd_rma_sw {
    type: string
    sql: ${TABLE}.ENHCD_RMA_SW ;;
  }

  dimension: enty_dt {
    type: number
    sql: ${TABLE}.ENTY_DT ;;
  }

  dimension: enty_mthd {
    type: string
    sql: ${TABLE}.ENTY_MTHD ;;
  }

  dimension: enty_tm {
    type: number
    sql: ${TABLE}.ENTY_TM ;;
  }

  dimension: flrng_auth_actn_cd {
    type: string
    sql: ${TABLE}.FLRNG_AUTH_ACTN_CD ;;
  }

  dimension: fulmnt_sw {
    type: string
    sql: ${TABLE}.FULMNT_SW ;;
  }

  dimension: govt_bid_flg {
    type: string
    sql: ${TABLE}.GOVT_BID_FLG ;;
  }

  dimension: govt_end_user_typ {
    type: string
    sql: ${TABLE}.GOVT_END_USER_TYP ;;
  }

  dimension: govt_end_user_zip {
    type: string
    sql: ${TABLE}.GOVT_END_USER_ZIP ;;
  }

  dimension: govt_gsa_ind {
    type: string
    sql: ${TABLE}.GOVT_GSA_IND ;;
  }

  dimension: india_gst_order_ind {
    type: string
    sql: ${TABLE}.INDIA_GST_ORDER_IND ;;
  }

  dimension: is_slsmn {
    type: string
    sql: ${TABLE}.IS_SLSMN ;;
  }

  dimension: last_dist_nbr {
    type: string
    sql: ${TABLE}.LAST_DIST_NBR ;;
  }

  dimension: last_shipment_nbr {
    type: string
    sql: ${TABLE}.LAST_SHIPMENT_NBR ;;
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

  dimension: ordr_cmplt_fill_sw {
    type: string
    sql: ${TABLE}.ORDR_CMPLT_FILL_SW ;;
  }

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: os_slsmn {
    type: string
    sql: ${TABLE}.OS_SLSMN ;;
  }

  dimension: payee_nbr {
    type: string
    sql: ${TABLE}.PAYEE_NBR ;;
  }

  dimension: payee_suf {
    type: string
    sql: ${TABLE}.PAYEE_SUF ;;
  }

  dimension: po_crtd_sw {
    type: string
    sql: ${TABLE}.PO_CRTD_SW ;;
  }

  dimension: priority_code {
    type: number
    sql: ${TABLE}.PRIORITY_CODE ;;
  }

  dimension: pstl_cd {
    type: string
    sql: ${TABLE}.PSTL_CD ;;
  }

  dimension: resdntl_sw {
    type: string
    sql: ${TABLE}.RESDNTL_SW ;;
  }

  dimension: reseller_nbr {
    type: string
    sql: ${TABLE}.RESELLER_NBR ;;
  }

  dimension: ship_to_sfx {
    type: string
    sql: ${TABLE}.SHIP_TO_SFX ;;
  }

  dimension: special_handle_sw {
    type: string
    sql: ${TABLE}.SPECIAL_HANDLE_SW ;;
  }

  dimension: split_bill_to_sw {
    type: string
    sql: ${TABLE}.SPLIT_BILL_TO_SW ;;
  }

  dimension: split_sw {
    type: string
    sql: ${TABLE}.SPLIT_SW ;;
  }

  dimension: term_id {
    type: string
    sql: ${TABLE}.TERM_ID ;;
  }

  dimension: terms {
    type: number
    sql: ${TABLE}.TERMS ;;
  }

  dimension: tn_spec_cd {
    type: string
    sql: ${TABLE}.TN_SPEC_CD ;;
  }

  dimension: user_nam {
    type: string
    sql: ${TABLE}.USER_NAM ;;
  }

  dimension: vendor_claim_nbr {
    type: string
    sql: ${TABLE}.VENDOR_CLAIM_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
