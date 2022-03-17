# The name of this view in Looker is "Vsam Tbxenish"
view: vsam_tbxenish {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXENISH`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Correl ID" in Explore.

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_isrt_ts {
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
    sql: ${TABLE}.ODS_ISRT_TS ;;
  }

  dimension_group: ods_upd_ts {
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
    sql: ${TABLE}.ODS_UPD_TS ;;
  }

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: tb_enish_apply_cost_uplift_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_APPLY_COST_UPLIFT_SW ;;
  }

  dimension: tb_enish_apply_inv_chg_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_APPLY_INV_CHG_SW ;;
  }

  dimension: tb_enish_business_ind {
    type: string
    sql: ${TABLE}.TB_ENISH_BUSINESS_IND ;;
  }

  dimension: tb_enish_cisco_default_sf {
    type: string
    sql: ${TABLE}.TB_ENISH_CISCO_DEFAULT_SF ;;
  }

  dimension: tb_enish_company_code {
    type: string
    sql: ${TABLE}.TB_ENISH_COMPANY_CODE ;;
  }

  dimension: tb_enish_converted_to_sap_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_CONVERTED_TO_SAP_SW ;;
  }

  dimension: tb_enish_cost_seg_ind {
    type: string
    sql: ${TABLE}.TB_ENISH_COST_SEG_IND ;;
  }

  dimension: tb_enish_de_sell_br {
    type: string
    sql: ${TABLE}.TB_ENISH_DE_SELL_BR ;;
  }

  dimension: tb_enish_de_sell_co {
    type: string
    sql: ${TABLE}.TB_ENISH_DE_SELL_CO ;;
  }

  dimension: tb_enish_def_sf_override_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_DEF_SF_OVERRIDE_SW ;;
  }

  dimension: tb_enish_default_br {
    type: string
    sql: ${TABLE}.TB_ENISH_DEFAULT_BR ;;
  }

  dimension: tb_enish_default_co {
    type: string
    sql: ${TABLE}.TB_ENISH_DEFAULT_CO ;;
  }

  dimension: tb_enish_default_config_br {
    type: string
    sql: ${TABLE}.TB_ENISH_DEFAULT_CONFIG_BR ;;
  }

  dimension: tb_enish_default_rtn_br {
    type: string
    sql: ${TABLE}.TB_ENISH_DEFAULT_RTN_BR ;;
  }

  dimension: tb_enish_direct_ih_po_ind_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_DIRECT_IH_PO_IND_SW ;;
  }

  dimension: tb_enish_dual_mir_br {
    type: string
    sql: ${TABLE}.TB_ENISH_DUAL_MIR_BR ;;
  }

  dimension: tb_enish_dual_mir_cfbr {
    type: string
    sql: ${TABLE}.TB_ENISH_DUAL_MIR_CFBR ;;
  }

  dimension: tb_enish_dual_mir_co {
    type: string
    sql: ${TABLE}.TB_ENISH_DUAL_MIR_CO ;;
  }

  dimension: tb_enish_dual_mir_rtbr {
    type: string
    sql: ${TABLE}.TB_ENISH_DUAL_MIR_RTBR ;;
  }

  dimension: tb_enish_dual_mirror_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_DUAL_MIRROR_SW ;;
  }

  dimension: tb_enish_dual_send_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_DUAL_SEND_SW ;;
  }

  dimension: tb_enish_inventory_indicator {
    type: string
    sql: ${TABLE}.TB_ENISH_INVENTORY_INDICATOR ;;
  }

  dimension_group: tb_enish_last_chg_ts {
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
    sql: ${TABLE}.TB_ENISH_LAST_CHG_TS ;;
  }

  dimension: tb_enish_like_comp_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_LIKE_COMP_SW ;;
  }

  dimension: tb_enish_mirrored_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_MIRRORED_SW ;;
  }

  dimension: tb_enish_orig_rma_rtn_br {
    type: string
    sql: ${TABLE}.TB_ENISH_ORIG_RMA_RTN_BR ;;
  }

  dimension: tb_enish_orig_selling_br {
    type: string
    sql: ${TABLE}.TB_ENISH_ORIG_SELLING_BR ;;
  }

  dimension: tb_enish_orig_selling_co {
    type: string
    sql: ${TABLE}.TB_ENISH_ORIG_SELLING_CO ;;
  }

  dimension: tb_enish_physical_cntry {
    type: string
    sql: ${TABLE}.TB_ENISH_PHYSICAL_CNTRY ;;
  }

  dimension: tb_enish_po_ind_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_PO_IND_SW ;;
  }

  dimension: tb_enish_rework_adj_cost_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_REWORK_ADJ_COST_SW ;;
  }

  dimension: tb_enish_share_inv_chg_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_SHARE_INV_CHG_SW ;;
  }

  dimension: tb_enish_share_inv_vat {
    type: string
    sql: ${TABLE}.TB_ENISH_SHARE_INV_VAT ;;
  }

  dimension: tb_enish_stop_man_adjcst_sw {
    type: string
    sql: ${TABLE}.TB_ENISH_STOP_MAN_ADJCST_SW ;;
  }

  dimension: tb_enish_updt_repl_cost_ind {
    type: string
    sql: ${TABLE}.TB_ENISH_UPDT_REPL_COST_IND ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
