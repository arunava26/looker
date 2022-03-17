# The name of this view in Looker is "Ims Rc Order Oflw Hist"
view: ims_rc_order_oflw_hist {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_RC_ORDER_OFLW_HIST`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Br Nbr" in Explore.

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: co_cd {
    type: string
    sql: ${TABLE}.CO_CD ;;
  }

  dimension: cst_flg {
    type: string
    sql: ${TABLE}.CST_FLG ;;
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

  dimension: order_nbr {
    type: string
    sql: ${TABLE}.ORDER_NBR ;;
  }

  dimension: orshedof_key {
    type: string
    sql: ${TABLE}.ORSHEDOF_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
