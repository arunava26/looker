# The name of this view in Looker is "Ims Prod Std Insstd S"
view: ims_prod_std_insstd_s {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_STD_INSSTD_S`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bar Code Sw" in Explore.

  dimension: bar_code_sw {
    type: string
    sql: ${TABLE}.BAR_CODE_SW ;;
  }

  dimension: bo_prnt {
    type: string
    sql: ${TABLE}.BO_PRNT ;;
  }

  dimension: cam_sw {
    type: string
    sql: ${TABLE}.CAM_SW ;;
  }

  dimension: case_size {
    type: number
    sql: ${TABLE}.CASE_SIZE ;;
  }

  dimension: casepack_weight {
    type: number
    sql: ${TABLE}.CASEPACK_WEIGHT ;;
  }

  dimension: cat_page_1 {
    type: string
    sql: ${TABLE}.CAT_PAGE_1 ;;
  }

  dimension: cat_page_2 {
    type: string
    sql: ${TABLE}.CAT_PAGE_2 ;;
  }

  dimension: ce_ind {
    type: string
    sql: ${TABLE}.CE_IND ;;
  }

  dimension: cmpaty_des {
    type: string
    sql: ${TABLE}.CMPATY_DES ;;
  }

  dimension: co_op_code {
    type: string
    sql: ${TABLE}.CO_OP_CODE ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cps_sw {
    type: string
    sql: ${TABLE}.CPS_SW ;;
  }

  dimension: cpu_code {
    type: string
    sql: ${TABLE}.CPU_CODE ;;
  }

  dimension: create_po_flag {
    type: string
    sql: ${TABLE}.CREATE_PO_FLAG ;;
  }

  dimension: cust_app_sw {
    type: string
    sql: ${TABLE}.CUST_APP_SW ;;
  }

  dimension: date_created {
    type: number
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension: discontinued_date {
    type: number
    sql: ${TABLE}.DISCONTINUED_DATE ;;
  }

  dimension: edi_model_force_flag {
    type: string
    sql: ${TABLE}.EDI_MODEL_FORCE_FLAG ;;
  }

  dimension: ewaste_fee_req_sw {
    type: string
    sql: ${TABLE}.EWASTE_FEE_REQ_SW ;;
  }

  dimension: export_dist_right {
    type: string
    sql: ${TABLE}.EXPORT_DIST_RIGHT ;;
  }

  dimension: export_entry_date {
    type: number
    sql: ${TABLE}.EXPORT_ENTRY_DATE ;;
  }

  dimension: export_entry_opid {
    type: string
    sql: ${TABLE}.EXPORT_ENTRY_OPID ;;
  }

  dimension: ext_vend_part_no {
    type: string
    sql: ${TABLE}.EXT_VEND_PART_NO ;;
  }

  dimension: family_code {
    type: string
    sql: ${TABLE}.FAMILY_CODE ;;
  }

  dimension: fifo_day {
    type: string
    sql: ${TABLE}.FIFO_DAY ;;
  }

  dimension: fifo_ind {
    type: string
    sql: ${TABLE}.FIFO_IND ;;
  }

  dimension: fmwork_part_nbr {
    type: string
    sql: ${TABLE}.FMWORK_PART_NBR ;;
  }

  dimension: gst_tax_code {
    type: string
    sql: ${TABLE}.GST_TAX_CODE ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.HEIGHT ;;
  }

  dimension: iml_oversize_item_flg {
    type: string
    sql: ${TABLE}.IML_OVERSIZE_ITEM_FLG ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.LENGTH ;;
  }

  dimension: lifo_cost {
    type: number
    sql: ${TABLE}.LIFO_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_lifo_cost {
    type: sum
    sql: ${lifo_cost} ;;
  }

  measure: average_lifo_cost {
    type: average
    sql: ${lifo_cost} ;;
  }

  dimension: lifo_pool_nbr {
    type: string
    sql: ${TABLE}.LIFO_POOL_NBR ;;
  }

  dimension: lock_ship_sw {
    type: string
    sql: ${TABLE}.LOCK_SHIP_SW ;;
  }

  dimension: ltl_heavy_flag {
    type: string
    sql: ${TABLE}.LTL_HEAVY_FLAG ;;
  }

  dimension: min_order_qty {
    type: number
    sql: ${TABLE}.MIN_ORDER_QTY ;;
  }

  dimension: msds_date {
    type: number
    sql: ${TABLE}.MSDS_DATE ;;
  }

  dimension: no_boh_sw {
    type: string
    sql: ${TABLE}.NO_BOH_SW ;;
  }

  dimension: no_cust_rtn_date {
    type: number
    sql: ${TABLE}.NO_CUST_RTN_DATE ;;
  }

  dimension: no_negotiation_sw {
    type: string
    sql: ${TABLE}.NO_NEGOTIATION_SW ;;
  }

  dimension: no_returns_flag {
    type: string
    sql: ${TABLE}.NO_RETURNS_FLAG ;;
  }

  dimension: no_vend_rtn_date {
    type: number
    sql: ${TABLE}.NO_VEND_RTN_DATE ;;
  }

  dimension: nom_nbr {
    type: string
    sql: ${TABLE}.NOM_NBR ;;
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

  dimension: pallet_size {
    type: number
    sql: ${TABLE}.PALLET_SIZE ;;
  }

  dimension: pi_case_1 {
    type: number
    sql: ${TABLE}.PI_CASE_1 ;;
  }

  dimension: pi_case_2 {
    type: number
    sql: ${TABLE}.PI_CASE_2 ;;
  }

  dimension: pi_case_3 {
    type: number
    sql: ${TABLE}.PI_CASE_3 ;;
  }

  dimension: pi_case_4 {
    type: number
    sql: ${TABLE}.PI_CASE_4 ;;
  }

  dimension: pi_case_5 {
    type: number
    sql: ${TABLE}.PI_CASE_5 ;;
  }

  dimension: pi_case_6 {
    type: number
    sql: ${TABLE}.PI_CASE_6 ;;
  }

  dimension: pi_case_7 {
    type: number
    sql: ${TABLE}.PI_CASE_7 ;;
  }

  dimension: po_case_size {
    type: number
    sql: ${TABLE}.PO_CASE_SIZE ;;
  }

  dimension: po_internet_ord_sw {
    type: string
    sql: ${TABLE}.PO_INTERNET_ORD_SW ;;
  }

  dimension: po_pallet_size {
    type: number
    sql: ${TABLE}.PO_PALLET_SIZE ;;
  }

  dimension: product_grp_cd {
    type: string
    sql: ${TABLE}.PRODUCT_GRP_CD ;;
  }

  dimension: product_line_cd {
    type: string
    sql: ${TABLE}.PRODUCT_LINE_CD ;;
  }

  dimension: purchase_unit {
    type: string
    sql: ${TABLE}.PURCHASE_UNIT ;;
  }

  dimension: qty_conv_factor {
    type: number
    sql: ${TABLE}.QTY_CONV_FACTOR ;;
  }

  dimension: rack_job_sw {
    type: string
    sql: ${TABLE}.RACK_JOB_SW ;;
  }

  dimension: reclass_end_date {
    type: number
    sql: ${TABLE}.RECLASS_END_DATE ;;
  }

  dimension: release_date {
    type: number
    sql: ${TABLE}.RELEASE_DATE ;;
  }

  dimension: restr_exp_date {
    type: number
    sql: ${TABLE}.RESTR_EXP_DATE ;;
  }

  dimension: restr_qty {
    type: number
    sql: ${TABLE}.RESTR_QTY ;;
  }

  dimension: rfid_sw {
    type: string
    sql: ${TABLE}.RFID_SW ;;
  }

  dimension: screen_diag_size {
    type: number
    sql: ${TABLE}.SCREEN_DIAG_SIZE ;;
  }

  dimension: second_source_ind {
    type: string
    sql: ${TABLE}.SECOND_SOURCE_IND ;;
  }

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: ser_nbr_avail_sw {
    type: string
    sql: ${TABLE}.SER_NBR_AVAIL_SW ;;
  }

  dimension: ser_nbr_lgth {
    type: number
    sql: ${TABLE}.SER_NBR_LGTH ;;
  }

  dimension: ser_nbr_type {
    type: string
    sql: ${TABLE}.SER_NBR_TYPE ;;
  }

  dimension: sit_trib_code {
    type: string
    sql: ${TABLE}.SIT_TRIB_CODE ;;
  }

  dimension: sku_control {
    type: string
    sql: ${TABLE}.SKU_CONTROL ;;
  }

  dimension: sku_sell_type {
    type: string
    sql: ${TABLE}.SKU_SELL_TYPE ;;
  }

  dimension: special_handle_sw {
    type: string
    sql: ${TABLE}.SPECIAL_HANDLE_SW ;;
  }

  dimension: std_pack_1 {
    type: number
    sql: ${TABLE}.STD_PACK_1 ;;
  }

  dimension: std_pack_2 {
    type: number
    sql: ${TABLE}.STD_PACK_2 ;;
  }

  dimension: suppress_ingram_sku {
    type: string
    sql: ${TABLE}.SUPPRESS_INGRAM_SKU ;;
  }

  dimension: tla_flag {
    type: string
    sql: ${TABLE}.TLA_FLAG ;;
  }

  dimension: top_100_sw {
    type: string
    sql: ${TABLE}.TOP_100_SW ;;
  }

  dimension: um_conv_factor {
    type: number
    sql: ${TABLE}.UM_CONV_FACTOR ;;
  }

  dimension: um_order {
    type: string
    sql: ${TABLE}.UM_ORDER ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: vendor_nbr_old {
    type: string
    sql: ${TABLE}.VENDOR_NBR_OLD ;;
  }

  dimension: vrf_expire_date {
    type: number
    sql: ${TABLE}.VRF_EXPIRE_DATE ;;
  }

  dimension: warranty_days {
    type: number
    sql: ${TABLE}.WARRANTY_DAYS ;;
  }

  dimension: warranty_vendor {
    type: string
    sql: ${TABLE}.WARRANTY_VENDOR ;;
  }

  dimension: weee_weight {
    type: number
    sql: ${TABLE}.WEEE_WEIGHT ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.WIDTH ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
