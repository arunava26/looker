# The name of this view in Looker is "Vsam Px Pxlmst"
view: vsam_px_pxlmst {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_PX_PXLMST`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acct Seg Cd" in Explore.

  dimension: acct_seg_cd {
    type: string
    sql: ${TABLE}.ACCT_SEG_CD ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: correl_id {
    type: string
    sql: ${TABLE}.CORREL_ID ;;
  }

  dimension: cust_branch_nbr {
    type: string
    sql: ${TABLE}.CUST_BRANCH_NBR ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_qty_conv_fact {
    type: number
    sql: ${TABLE}.CUST_QTY_CONV_FACT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cust_qty_conv_fact {
    type: sum
    sql: ${cust_qty_conv_fact} ;;
  }

  measure: average_cust_qty_conv_fact {
    type: average
    sql: ${cust_qty_conv_fact} ;;
  }

  dimension: cust_sku {
    type: string
    sql: ${TABLE}.CUST_SKU ;;
  }

  dimension: cust_spec_ship_qty {
    type: number
    sql: ${TABLE}.CUST_SPEC_SHIP_QTY ;;
  }

  dimension: cust_um_cd {
    type: string
    sql: ${TABLE}.CUST_UM_CD ;;
  }

  dimension: cust_unit {
    type: string
    sql: ${TABLE}.CUST_UNIT ;;
  }

  dimension: cust_uses_our_part_flg {
    type: string
    sql: ${TABLE}.CUST_USES_OUR_PART_FLG ;;
  }

  dimension: del_pt {
    type: string
    sql: ${TABLE}.DEL_PT ;;
  }

  dimension: desc_seg_cd {
    type: string
    sql: ${TABLE}.DESC_SEG_CD ;;
  }

  dimension: im_sku_nbr {
    type: string
    sql: ${TABLE}.IM_SKU_NBR ;;
  }

  dimension: incl_disc_cd {
    type: string
    sql: ${TABLE}.INCL_DISC_CD ;;
  }

  dimension: item_typ_cd {
    type: string
    sql: ${TABLE}.ITEM_TYP_CD ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_chg_ts {
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
    sql: ${TABLE}.LAST_CHG_TS ;;
  }

  dimension: last_maint_cd {
    type: string
    sql: ${TABLE}.LAST_MAINT_CD ;;
  }

  dimension_group: last_maint_dt {
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
    sql: ${TABLE}.LAST_MAINT_DT ;;
  }

  dimension: last_ord_seg_cd {
    type: string
    sql: ${TABLE}.LAST_ORD_SEG_CD ;;
  }

  dimension: lent_inv_flg {
    type: string
    sql: ${TABLE}.LENT_INV_FLG ;;
  }

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

  dimension: ordr_qty {
    type: number
    sql: ${TABLE}.ORDR_QTY ;;
  }

  dimension: plan_nam {
    type: string
    sql: ${TABLE}.PLAN_NAM ;;
  }

  dimension: prc_seg_cd {
    type: string
    sql: ${TABLE}.PRC_SEG_CD ;;
  }

  dimension: reorder_seg_cd {
    type: string
    sql: ${TABLE}.REORDER_SEG_CD ;;
  }

  dimension: sec_src_flg {
    type: string
    sql: ${TABLE}.SEC_SRC_FLG ;;
  }

  dimension: stock_flg {
    type: string
    sql: ${TABLE}.STOCK_FLG ;;
  }

  dimension: stus_cd {
    type: string
    sql: ${TABLE}.STUS_CD ;;
  }

  dimension: supply_branch_nbr {
    type: string
    sql: ${TABLE}.SUPPLY_BRANCH_NBR ;;
  }

  dimension: tax_cd {
    type: string
    sql: ${TABLE}.TAX_CD ;;
  }

  dimension: trans_auth_id {
    type: string
    sql: ${TABLE}.TRANS_AUTH_ID ;;
  }

  dimension: um_conv_fact {
    type: number
    sql: ${TABLE}.UM_CONV_FACT ;;
  }

  dimension: var_seg_cnt {
    type: number
    sql: ${TABLE}.VAR_SEG_CNT ;;
  }

  dimension: vend_nbr {
    type: string
    sql: ${TABLE}.VEND_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
