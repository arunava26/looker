# The name of this view in Looker is "Ods Crmemo Line Serial S"
view: ods_crmemo_line_serial_s {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_CRMEMO_LINE_SERIAL_S`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Asset Tag Nbr" in Explore.

  dimension: asset_tag_nbr {
    type: string
    sql: ${TABLE}.ASSET_TAG_NBR ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: build_nbr {
    type: number
    sql: ${TABLE}.BUILD_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_build_nbr {
    type: sum
    sql: ${build_nbr} ;;
  }

  measure: average_build_nbr {
    type: average
    sql: ${build_nbr} ;;
  }

  dimension: cam_id {
    type: string
    sql: ${TABLE}.CAM_ID ;;
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

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: lot_serial_nbr {
    type: string
    sql: ${TABLE}.LOT_SERIAL_NBR ;;
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

  dimension: piece_nbr {
    type: number
    sql: ${TABLE}.PIECE_NBR ;;
  }

  dimension: prob_desc_code {
    type: string
    sql: ${TABLE}.PROB_DESC_CODE ;;
  }

  dimension: qty_shipped {
    type: number
    sql: ${TABLE}.QTY_SHIPPED ;;
  }

  dimension: rmlrtv_dt {
    type: number
    sql: ${TABLE}.RMLRTV_DT ;;
  }

  dimension: rmlrtv_tm {
    type: number
    sql: ${TABLE}.RMLRTV_TM ;;
  }

  dimension: sgmt_typ {
    type: string
    sql: ${TABLE}.SGMT_TYP ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: ss_receipt_nbr {
    type: string
    sql: ${TABLE}.SS_RECEIPT_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
