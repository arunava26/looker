# The name of this view in Looker is "Ods Brxfer Line Loc"
view: ods_brxfer_line_loc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_BRXFER_LINE_LOC`
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

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: insert_time {
    type: number
    sql: ${TABLE}.INSERT_TIME ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_insert_time {
    type: sum
    sql: ${insert_time} ;;
  }

  measure: average_insert_time {
    type: average
    sql: ${insert_time} ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
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

  dimension: pick_cntl_nbr {
    type: string
    sql: ${TABLE}.PICK_CNTL_NBR ;;
  }

  dimension: pick_cntl_typ_cd {
    type: string
    sql: ${TABLE}.PICK_CNTL_TYP_CD ;;
  }

  dimension: pkg_id {
    type: string
    sql: ${TABLE}.PKG_ID ;;
  }

  dimension: rf_pick_flg {
    type: string
    sql: ${TABLE}.RF_PICK_FLG ;;
  }

  dimension: rwip_seq_nbr {
    type: string
    sql: ${TABLE}.RWIP_SEQ_NBR ;;
  }

  dimension: rwip_tm {
    type: number
    sql: ${TABLE}.RWIP_TM ;;
  }

  dimension: rwpm_box_nbr {
    type: string
    sql: ${TABLE}.RWPM_BOX_NBR ;;
  }

  dimension: seg_typ_cd {
    type: string
    sql: ${TABLE}.SEG_TYP_CD ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: w_ctn_nbr {
    type: number
    sql: ${TABLE}.W_CTN_NBR ;;
  }

  dimension: wh_loc_cd {
    type: string
    sql: ${TABLE}.WH_LOC_CD ;;
  }

  dimension: wh_pick_qty {
    type: number
    sql: ${TABLE}.WH_PICK_QTY ;;
  }

  dimension: wh_ship_qty {
    type: number
    sql: ${TABLE}.WH_SHIP_QTY ;;
  }

  dimension: wip_loc_cd {
    type: string
    sql: ${TABLE}.WIP_LOC_CD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
