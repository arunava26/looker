# The name of this view in Looker is "Ims Prod Alt Stk Loc Insmsc"
view: ims_prod_alt_stk_loc_insmsc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_ALT_STK_LOC_INSMSC`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alt Adj Cost" in Explore.

  dimension: alt_adj_cost {
    type: number
    sql: ${TABLE}.ALT_ADJ_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_alt_adj_cost {
    type: sum
    sql: ${alt_adj_cost} ;;
  }

  measure: average_alt_adj_cost {
    type: average
    sql: ${alt_adj_cost} ;;
  }

  dimension: alt_avg_cost {
    type: number
    sql: ${TABLE}.ALT_AVG_COST ;;
  }

  dimension: alt_avg_cost_x {
    type: string
    sql: ${TABLE}.ALT_AVG_COST_X ;;
  }

  dimension: alt_ing_cost {
    type: number
    sql: ${TABLE}.ALT_ING_COST ;;
  }

  dimension: alt_ing_cost_x {
    type: string
    sql: ${TABLE}.ALT_ING_COST_X ;;
  }

  dimension: alt_item_status {
    type: string
    sql: ${TABLE}.ALT_ITEM_STATUS ;;
  }

  dimension: alt_loc_access_sw {
    type: string
    sql: ${TABLE}.ALT_LOC_ACCESS_SW ;;
  }

  dimension: alt_loc_bkorder_sw {
    type: string
    sql: ${TABLE}.ALT_LOC_BKORDER_SW ;;
  }

  dimension: alt_lock_sw {
    type: string
    sql: ${TABLE}.ALT_LOCK_SW ;;
  }

  dimension: alt_stocking_br {
    type: string
    sql: ${TABLE}.ALT_STOCKING_BR ;;
  }

  dimension: alt_stocking_company {
    type: string
    sql: ${TABLE}.ALT_STOCKING_COMPANY ;;
  }

  dimension: alt_stocking_loc_ind {
    type: string
    sql: ${TABLE}.ALT_STOCKING_LOC_IND ;;
  }

  dimension: alt_stocking_loc_seq {
    type: string
    sql: ${TABLE}.ALT_STOCKING_LOC_SEQ ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: item_consigned_sw {
    type: string
    sql: ${TABLE}.ITEM_CONSIGNED_SW ;;
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

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
