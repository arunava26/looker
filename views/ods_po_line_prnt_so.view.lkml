# The name of this view in Looker is "Ods Po Line Prnt So"
view: ods_po_line_prnt_so {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_PO_LINE_PRNT_SO`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Des Puds" in Explore.

  dimension: des_puds {
    type: string
    sql: ${TABLE}.DES_PUDS ;;
  }

  dimension: desc_nbr {
    type: string
    sql: ${TABLE}.DESC_NBR ;;
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

  dimension: prnt_so_dist_nbr {
    type: string
    sql: ${TABLE}.PRNT_SO_DIST_NBR ;;
  }

  dimension: prnt_so_nbr {
    type: string
    sql: ${TABLE}.PRNT_SO_NBR ;;
  }

  dimension: prnt_so_ship_nbr {
    type: string
    sql: ${TABLE}.PRNT_SO_SHIP_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
