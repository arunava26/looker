# The name of this view in Looker is "Ods Order Oflw"
view: ods_order_oflw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_ORDER_OFLW`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Branch Nbr" in Explore.

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: clnt_br_nbr {
    type: string
    sql: ${TABLE}.CLNT_BR_NBR ;;
  }

  dimension: clnt_cust_nbr {
    type: string
    sql: ${TABLE}.CLNT_CUST_NBR ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: crt_realtime_po_flg {
    type: string
    sql: ${TABLE}.CRT_REALTIME_PO_FLG ;;
  }

  dimension: cso_ordr_flg {
    type: string
    sql: ${TABLE}.CSO_ORDR_FLG ;;
  }

  dimension: cst_flg {
    type: string
    sql: ${TABLE}.CST_FLG ;;
  }

  dimension: dep_order_nbr {
    type: string
    sql: ${TABLE}.DEP_ORDER_NBR ;;
  }

  dimension: dpas_order_ind {
    type: string
    sql: ${TABLE}.DPAS_ORDER_IND ;;
  }

  dimension: dpas_pgm_id {
    type: string
    sql: ${TABLE}.DPAS_PGM_ID ;;
  }

  dimension: dv_flg {
    type: string
    sql: ${TABLE}.DV_FLG ;;
  }

  dimension: eu_dep_id {
    type: string
    sql: ${TABLE}.EU_DEP_ID ;;
  }

  dimension: hp_csn {
    type: string
    sql: ${TABLE}.HP_CSN ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: india_gst_order_type_ind {
    type: string
    sql: ${TABLE}.INDIA_GST_ORDER_TYPE_IND ;;
  }

  dimension: last_chg_date {
    type: string
    sql: ${TABLE}.LAST_CHG_DATE ;;
  }

  dimension: line_added_flg {
    type: string
    sql: ${TABLE}.LINE_ADDED_FLG ;;
  }

  dimension: np_order_ind {
    type: string
    sql: ${TABLE}.NP_ORDER_IND ;;
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

  dimension: oip_in_progs_flg {
    type: string
    sql: ${TABLE}.OIP_IN_PROGS_FLG ;;
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

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: orshedof_key {
    type: string
    sql: ${TABLE}.ORSHEDOF_KEY ;;
  }

  dimension: paye_vend_nbr {
    type: string
    sql: ${TABLE}.PAYE_VEND_NBR ;;
  }

  dimension: po_box_flg {
    type: string
    sql: ${TABLE}.PO_BOX_FLG ;;
  }

  dimension: power_disp {
    type: string
    sql: ${TABLE}.POWER_DISP ;;
  }

  dimension: rslr_asgd_flg {
    type: string
    sql: ${TABLE}.RSLR_ASGD_FLG ;;
  }

  dimension: service_fee_bypass_sw {
    type: string
    sql: ${TABLE}.SERVICE_FEE_BYPASS_SW ;;
  }

  dimension: ship_to_chg_flg {
    type: string
    sql: ${TABLE}.SHIP_TO_CHG_FLG ;;
  }

  dimension: sseu_isrt_flg {
    type: string
    sql: ${TABLE}.SSEU_ISRT_FLG ;;
  }

  dimension: vend_rma_nbr {
    type: string
    sql: ${TABLE}.VEND_RMA_NBR ;;
  }

  dimension: vendor_order_nbr {
    type: string
    sql: ${TABLE}.VENDOR_ORDER_NBR ;;
  }

  dimension: warr_ext_item_exists_sw {
    type: string
    sql: ${TABLE}.WARR_EXT_ITEM_EXISTS_SW ;;
  }

  dimension: wrkflow_status {
    type: string
    sql: ${TABLE}.WRKFLOW_STATUS ;;
  }

  dimension: xdoc_dist_ctr {
    type: string
    sql: ${TABLE}.XDOC_DIST_CTR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
