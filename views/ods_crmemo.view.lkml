# The name of this view in Looker is "Ods Crmemo"
view: ods_crmemo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_CRMEMO`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ack Cd" in Explore.

  dimension: ack_cd {
    type: string
    sql: ${TABLE}.ACK_CD ;;
  }

  dimension: alne_sw {
    type: string
    sql: ${TABLE}.ALNE_SW ;;
  }

  dimension: aod_sw {
    type: string
    sql: ${TABLE}.AOD_SW ;;
  }

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

  dimension: caps_byr {
    type: string
    sql: ${TABLE}.CAPS_BYR ;;
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

  dimension: cfg_flg {
    type: string
    sql: ${TABLE}.CFG_FLG ;;
  }

  dimension: city_cd {
    type: string
    sql: ${TABLE}.CITY_CD ;;
  }

  dimension: cmpgn {
    type: string
    sql: ${TABLE}.CMPGN ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: cont {
    type: string
    sql: ${TABLE}.CONT ;;
  }

  dimension: copy_cd {
    type: string
    sql: ${TABLE}.COPY_CD ;;
  }

  dimension: county_cd {
    type: string
    sql: ${TABLE}.COUNTY_CD ;;
  }

  dimension: cr_crd_sw {
    type: string
    sql: ${TABLE}.CR_CRD_SW ;;
  }

  dimension: cr_rels {
    type: string
    sql: ${TABLE}.CR_RELS ;;
  }

  dimension: ctry_cd {
    type: string
    sql: ${TABLE}.CTRY_CD ;;
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

  dimension: cust_ref_nbr {
    type: string
    sql: ${TABLE}.CUST_REF_NBR ;;
  }

  dimension: cust_ref_nbr2 {
    type: string
    sql: ${TABLE}.CUST_REF_NBR2 ;;
  }

  dimension: cust_typ {
    type: string
    sql: ${TABLE}.CUST_TYP ;;
  }

  dimension: customers_lang_cd {
    type: string
    sql: ${TABLE}.CUSTOMERS_LANG_CD ;;
  }

  dimension: dlvy_terms {
    type: string
    sql: ${TABLE}.DLVY_TERMS ;;
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

  dimension: end_user_cont_sfx {
    type: string
    sql: ${TABLE}.END_USER_CONT_SFX ;;
  }

  dimension: end_user_ordr_sw {
    type: string
    sql: ${TABLE}.END_USER_ORDR_SW ;;
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

  dimension: eu_addr_sfx {
    type: string
    sql: ${TABLE}.EU_ADDR_SFX ;;
  }

  dimension: eu_auth {
    type: string
    sql: ${TABLE}.EU_AUTH ;;
  }

  dimension: eu_data_sw {
    type: string
    sql: ${TABLE}.EU_DATA_SW ;;
  }

  dimension: eu_nbr {
    type: string
    sql: ${TABLE}.EU_NBR ;;
  }

  dimension: eu_po_nbr {
    type: string
    sql: ${TABLE}.EU_PO_NBR ;;
  }

  dimension: eu_vend_flg {
    type: string
    sql: ${TABLE}.EU_VEND_FLG ;;
  }

  dimension: ext_so_cd {
    type: string
    sql: ${TABLE}.EXT_SO_CD ;;
  }

  dimension: flrng_auth_actn_cd {
    type: string
    sql: ${TABLE}.FLRNG_AUTH_ACTN_CD ;;
  }

  dimension: flrng_auth_nbr {
    type: string
    sql: ${TABLE}.FLRNG_AUTH_NBR ;;
  }

  dimension: frt_forwarder {
    type: string
    sql: ${TABLE}.FRT_FORWARDER ;;
  }

  dimension: fulfmt_sw {
    type: string
    sql: ${TABLE}.FULFMT_SW ;;
  }

  dimension: gl_offst_nbr {
    type: string
    sql: ${TABLE}.GL_OFFST_NBR ;;
  }

  dimension: gl_offst_type {
    type: string
    sql: ${TABLE}.GL_OFFST_TYPE ;;
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

  dimension: gwmd_imag_aply_flg {
    type: string
    sql: ${TABLE}.GWMD_IMAG_APLY_FLG ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: india_gst_order_ind {
    type: string
    sql: ${TABLE}.INDIA_GST_ORDER_IND ;;
  }

  dimension: is_slsmn {
    type: string
    sql: ${TABLE}.IS_SLSMN ;;
  }

  dimension: job_acct_nbr {
    type: string
    sql: ${TABLE}.JOB_ACCT_NBR ;;
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

  dimension_group: ordr_dt {
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
    sql: ${TABLE}.ORDR_DT ;;
  }

  dimension: ordr_mgmt_sw {
    type: string
    sql: ${TABLE}.ORDR_MGMT_SW ;;
  }

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: ordr_valu_at_add {
    type: number
    sql: ${TABLE}.ORDR_VALU_AT_ADD ;;
  }

  dimension: os_slsmn {
    type: string
    sql: ${TABLE}.OS_SLSMN ;;
  }

  dimension: paye_nbr {
    type: string
    sql: ${TABLE}.PAYE_NBR ;;
  }

  dimension: paye_sfx {
    type: string
    sql: ${TABLE}.PAYE_SFX ;;
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

  dimension: rslr_nbr {
    type: string
    sql: ${TABLE}.RSLR_NBR ;;
  }

  dimension: rslr_split_pct {
    type: number
    sql: ${TABLE}.RSLR_SPLIT_PCT ;;
  }

  dimension: ship_to_sfx {
    type: string
    sql: ${TABLE}.SHIP_TO_SFX ;;
  }

  dimension: sold_to_sfx {
    type: string
    sql: ${TABLE}.SOLD_TO_SFX ;;
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

  dimension: src_cd {
    type: string
    sql: ${TABLE}.SRC_CD ;;
  }

  dimension: state_cd {
    type: string
    sql: ${TABLE}.STATE_CD ;;
  }

  dimension: summ_invc_cd {
    type: string
    sql: ${TABLE}.SUMM_INVC_CD ;;
  }

  dimension: tax_cd {
    type: string
    sql: ${TABLE}.TAX_CD ;;
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

  dimension: trade_disc {
    type: number
    sql: ${TABLE}.TRADE_DISC ;;
  }

  dimension: user_nam {
    type: string
    sql: ${TABLE}.USER_NAM ;;
  }

  dimension: vendor_claim_nbr {
    type: string
    sql: ${TABLE}.VENDOR_CLAIM_NBR ;;
  }

  dimension: was_bord {
    type: string
    sql: ${TABLE}.WAS_BORD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
