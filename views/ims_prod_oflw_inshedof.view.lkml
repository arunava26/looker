# The name of this view in Looker is "Ims Prod Oflw Inshedof"
view: ims_prod_oflw_inshedof {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_OFLW_INSHEDOF`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acce Reqd Nbr" in Explore.

  dimension: acce_reqd_nbr {
    type: string
    sql: ${TABLE}.ACCE_REQD_NBR ;;
  }

  dimension: act_rpt_flg {
    type: string
    sql: ${TABLE}.ACT_RPT_FLG ;;
  }

  dimension: allowed_sell_typ {
    type: string
    sql: ${TABLE}.ALLOWED_SELL_TYP ;;
  }

  dimension: auth_point_value {
    type: number
    sql: ${TABLE}.AUTH_POINT_VALUE ;;
  }

  dimension: benq_cond_code {
    type: string
    sql: ${TABLE}.BENQ_COND_CODE ;;
  }

  dimension: ccats_1 {
    type: string
    sql: ${TABLE}.CCATS_1 ;;
  }

  dimension: ccats_2 {
    type: string
    sql: ${TABLE}.CCATS_2 ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: create_rsn_code {
    type: string
    sql: ${TABLE}.CREATE_RSN_CODE ;;
  }

  dimension: customer_code {
    type: string
    sql: ${TABLE}.CUSTOMER_CODE ;;
  }

  dimension: delivery_method {
    type: string
    sql: ${TABLE}.DELIVERY_METHOD ;;
  }

  dimension: dship_type {
    type: string
    sql: ${TABLE}.DSHIP_TYPE ;;
  }

  dimension: duration_length {
    type: number
    sql: ${TABLE}.DURATION_LENGTH ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_duration_length {
    type: sum
    sql: ${duration_length} ;;
  }

  measure: average_duration_length {
    type: average
    sql: ${duration_length} ;;
  }

  dimension: duration_um {
    type: string
    sql: ${TABLE}.DURATION_UM ;;
  }

  dimension: duty_code {
    type: string
    sql: ${TABLE}.DUTY_CODE ;;
  }

  dimension: dv_unit_price {
    type: number
    sql: ${TABLE}.DV_UNIT_PRICE ;;
  }

  dimension: end_user_group {
    type: string
    sql: ${TABLE}.END_USER_GROUP ;;
  }

  dimension: energy_star_comp_ind {
    type: string
    sql: ${TABLE}.ENERGY_STAR_COMP_IND ;;
  }

  dimension: epeat_certified {
    type: string
    sql: ${TABLE}.EPEAT_CERTIFIED ;;
  }

  dimension: family_cd {
    type: string
    sql: ${TABLE}.FAMILY_CD ;;
  }

  dimension: gbl_trck_item_nbr {
    type: string
    sql: ${TABLE}.GBL_TRCK_ITEM_NBR ;;
  }

  dimension: gsa_ind {
    type: string
    sql: ${TABLE}.GSA_IND ;;
  }

  dimension: hts_update_date {
    type: number
    sql: ${TABLE}.HTS_UPDATE_DATE ;;
  }

  dimension: ia_gst_bun_tax_calc_sw {
    type: string
    sql: ${TABLE}.IA_GST_BUN_TAX_CALC_SW ;;
  }

  dimension: incr_drp_qty {
    type: number
    sql: ${TABLE}.INCR_DRP_QTY ;;
  }

  dimension: iniof_map_price {
    type: number
    sql: ${TABLE}.INIOF_MAP_PRICE ;;
  }

  dimension: inshedof_key {
    type: string
    sql: ${TABLE}.INSHEDOF_KEY ;;
  }

  dimension: link_to_part_nbr {
    type: string
    sql: ${TABLE}.LINK_TO_PART_NBR ;;
  }

  dimension: min_drp_qty {
    type: number
    sql: ${TABLE}.MIN_DRP_QTY ;;
  }

  dimension: non_imts_stocked_sw {
    type: string
    sql: ${TABLE}.NON_IMTS_STOCKED_SW ;;
  }

  dimension: number_of_users {
    type: number
    sql: ${TABLE}.NUMBER_OF_USERS ;;
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

  dimension: original_sku {
    type: string
    sql: ${TABLE}.ORIGINAL_SKU ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.PARTNER_ID ;;
  }

  dimension: pedimento_req_sw {
    type: string
    sql: ${TABLE}.PEDIMENTO_REQ_SW ;;
  }

  dimension: prod_sls_mgmt_cd {
    type: string
    sql: ${TABLE}.PROD_SLS_MGMT_CD ;;
  }

  dimension: prorate_flag {
    type: string
    sql: ${TABLE}.PRORATE_FLAG ;;
  }

  dimension: rohs_compliant {
    type: string
    sql: ${TABLE}.ROHS_COMPLIANT ;;
  }

  dimension: se_hold {
    type: string
    sql: ${TABLE}.SE_HOLD ;;
  }

  dimension: section_508_ind {
    type: string
    sql: ${TABLE}.SECTION_508_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: sku_floor_margin_pct {
    type: number
    sql: ${TABLE}.SKU_FLOOR_MARGIN_PCT ;;
  }

  dimension: sku_margin_ind {
    type: string
    sql: ${TABLE}.SKU_MARGIN_IND ;;
  }

  dimension: sku_msg_ind {
    type: string
    sql: ${TABLE}.SKU_MSG_IND ;;
  }

  dimension: sku_size_ind {
    type: string
    sql: ${TABLE}.SKU_SIZE_IND ;;
  }

  dimension: slc_sp_handle {
    type: string
    sql: ${TABLE}.SLC_SP_HANDLE ;;
  }

  dimension: software_type {
    type: string
    sql: ${TABLE}.SOFTWARE_TYPE ;;
  }

  dimension: special_item_nbr {
    type: string
    sql: ${TABLE}.SPECIAL_ITEM_NBR ;;
  }

  dimension: suppress_push_sw {
    type: string
    sql: ${TABLE}.SUPPRESS_PUSH_SW ;;
  }

  dimension: tax_category {
    type: string
    sql: ${TABLE}.TAX_CATEGORY ;;
  }

  dimension: tcs_apply_sw {
    type: string
    sql: ${TABLE}.TCS_APPLY_SW ;;
  }

  dimension: typ_of_sku {
    type: string
    sql: ${TABLE}.TYP_OF_SKU ;;
  }

  dimension: unspsc_cd {
    type: string
    sql: ${TABLE}.UNSPSC_CD ;;
  }

  dimension: velocity_code {
    type: string
    sql: ${TABLE}.VELOCITY_CODE ;;
  }

  dimension: vend_promo_code {
    type: string
    sql: ${TABLE}.VEND_PROMO_CODE ;;
  }

  dimension: vendor_auth_req_sw {
    type: string
    sql: ${TABLE}.VENDOR_AUTH_REQ_SW ;;
  }

  dimension: vendor_boh_qty {
    type: string
    sql: ${TABLE}.VENDOR_BOH_QTY ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  dimension: vendor_retail {
    type: number
    sql: ${TABLE}.VENDOR_RETAIL ;;
  }

  dimension: virt_part_nbr {
    type: string
    sql: ${TABLE}.VIRT_PART_NBR ;;
  }

  dimension: vndr_frt_code {
    type: string
    sql: ${TABLE}.VNDR_FRT_CODE ;;
  }

  dimension: warranty {
    type: string
    sql: ${TABLE}.WARRANTY ;;
  }

  dimension: web_sw {
    type: string
    sql: ${TABLE}.WEB_SW ;;
  }

  dimension: weee_compliant {
    type: string
    sql: ${TABLE}.WEEE_COMPLIANT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
