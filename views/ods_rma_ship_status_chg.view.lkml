# The name of this view in Looker is "Ods Rma Ship Status Chg"
view: ods_rma_ship_status_chg {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_RMA_SHIP_STATUS_CHG`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bill to Branch Nbr" in Explore.

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

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: cust_ordr_nbr {
    type: string
    sql: ${TABLE}.CUST_ORDR_NBR ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: eu_po_nbr {
    type: string
    sql: ${TABLE}.EU_PO_NBR ;;
  }

  dimension: hld_rsn {
    type: string
    sql: ${TABLE}.HLD_RSN ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: incarn_nbr {
    type: number
    sql: ${TABLE}.INCARN_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_incarn_nbr {
    type: sum
    sql: ${incarn_nbr} ;;
  }

  measure: average_incarn_nbr {
    type: average
    sql: ${incarn_nbr} ;;
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

  dimension: oper_id {
    type: string
    sql: ${TABLE}.OPER_ID ;;
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

  dimension: ordr_typ {
    type: string
    sql: ${TABLE}.ORDR_TYP ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension_group: ship_stus_chg_dt {
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
    sql: ${TABLE}.SHIP_STUS_CHG_DT ;;
  }

  dimension: ship_to_sfx {
    type: string
    sql: ${TABLE}.SHIP_TO_SFX ;;
  }

  dimension: shipbl_sw {
    type: string
    sql: ${TABLE}.SHIPBL_SW ;;
  }

  dimension: shipment_was_bord {
    type: string
    sql: ${TABLE}.SHIPMENT_WAS_BORD ;;
  }

  dimension: stus {
    type: string
    sql: ${TABLE}.STUS ;;
  }

  dimension: tot_sls {
    type: number
    sql: ${TABLE}.TOT_SLS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
