# The name of this view in Looker is "Ods Po Line Bo So Line Xref"
view: ods_po_line_bo_so_line_xref {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_PO_LINE_BO_SO_LINE_XREF`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bo Fr Dist Nbr" in Explore.

  dimension: bo_fr_dist_nbr {
    type: string
    sql: ${TABLE}.BO_FR_DIST_NBR ;;
  }

  dimension: bo_fr_ordr_nbr {
    type: string
    sql: ${TABLE}.BO_FR_ORDR_NBR ;;
  }

  dimension: bo_fr_ship_nbr {
    type: string
    sql: ${TABLE}.BO_FR_SHIP_NBR ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: crt_dt {
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
    sql: ${TABLE}.CRT_DT ;;
  }

  dimension: cso_fulf_sku {
    type: string
    sql: ${TABLE}.CSO_FULF_SKU ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension_group: ods_last_upd_ts {
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
    sql: ${TABLE}.ODS_LAST_UPD_TS ;;
  }

  dimension: orig_ordr_qty {
    type: number
    sql: ${TABLE}.ORIG_ORDR_QTY ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_orig_ordr_qty {
    type: sum
    sql: ${orig_ordr_qty} ;;
  }

  measure: average_orig_ordr_qty {
    type: average
    sql: ${orig_ordr_qty} ;;
  }

  dimension: po_br_nbr {
    type: string
    sql: ${TABLE}.PO_BR_NBR ;;
  }

  dimension: po_co_cd {
    type: string
    sql: ${TABLE}.PO_CO_CD ;;
  }

  dimension: po_line_nbr {
    type: string
    sql: ${TABLE}.PO_LINE_NBR ;;
  }

  dimension: po_nbr {
    type: string
    sql: ${TABLE}.PO_NBR ;;
  }

  dimension: rtd_qty {
    type: number
    sql: ${TABLE}.RTD_QTY ;;
  }

  dimension: so_br_nbr {
    type: string
    sql: ${TABLE}.SO_BR_NBR ;;
  }

  dimension: so_co_cd {
    type: string
    sql: ${TABLE}.SO_CO_CD ;;
  }

  dimension: so_dist_nbr {
    type: string
    sql: ${TABLE}.SO_DIST_NBR ;;
  }

  dimension_group: so_enty_dt {
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
    sql: ${TABLE}.SO_ENTY_DT ;;
  }

  dimension: so_line_nbr {
    type: string
    sql: ${TABLE}.SO_LINE_NBR ;;
  }

  dimension: so_ordr_nbr {
    type: string
    sql: ${TABLE}.SO_ORDR_NBR ;;
  }

  dimension: so_ship_nbr {
    type: string
    sql: ${TABLE}.SO_SHIP_NBR ;;
  }

  dimension: stus_cd {
    type: string
    sql: ${TABLE}.STUS_CD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
