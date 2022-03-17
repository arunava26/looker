# The name of this view in Looker is "Vsam Tbxbran"
view: vsam_tbxbran {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_TBXBRAN`
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

  dimension: tb_bran_currency_restrictor {
    type: string
    sql: ${TABLE}.TB_BRAN_CURRENCY_RESTRICTOR ;;
  }

  dimension: tb_brn_auto_directs_po_sw {
    type: string
    sql: ${TABLE}.TB_BRN_AUTO_DIRECTS_PO_SW ;;
  }

  dimension: tb_brn_branch {
    type: string
    sql: ${TABLE}.TB_BRN_BRANCH ;;
  }

  dimension: tb_brn_caps_branch_sw {
    type: string
    sql: ${TABLE}.TB_BRN_CAPS_BRANCH_SW ;;
  }

  dimension: tb_brn_central_stock_sw {
    type: string
    sql: ${TABLE}.TB_BRN_CENTRAL_STOCK_SW ;;
  }

  dimension: tb_brn_company_code {
    type: string
    sql: ${TABLE}.TB_BRN_COMPANY_CODE ;;
  }

  dimension: tb_brn_config_file_sw {
    type: string
    sql: ${TABLE}.TB_BRN_CONFIG_FILE_SW ;;
  }

  dimension_group: tb_brn_last_chg_ts {
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
    sql: ${TABLE}.TB_BRN_LAST_CHG_TS ;;
  }

  dimension: tb_brn_po_allocation_sw {
    type: string
    sql: ${TABLE}.TB_BRN_PO_ALLOCATION_SW ;;
  }

  dimension: tb_brn_putaway_print_sw {
    type: string
    sql: ${TABLE}.TB_BRN_PUTAWAY_PRINT_SW ;;
  }

  dimension: tb_brn_receiver_print_sw {
    type: string
    sql: ${TABLE}.TB_BRN_RECEIVER_PRINT_SW ;;
  }

  dimension: tb_brn_returns_warehouse_sw {
    type: string
    sql: ${TABLE}.TB_BRN_RETURNS_WAREHOUSE_SW ;;
  }

  dimension: tb_brn_ship_order_rel_opt {
    type: string
    sql: ${TABLE}.TB_BRN_SHIP_ORDER_REL_OPT ;;
  }

  dimension: tb_brn_so_sort_option_sw {
    type: string
    sql: ${TABLE}.TB_BRN_SO_SORT_OPTION_SW ;;
  }

  dimension: tb_brn_time_diff {
    type: number
    sql: ${TABLE}.TB_BRN_TIME_DIFF ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tb_brn_time_diff {
    type: sum
    sql: ${tb_brn_time_diff} ;;
  }

  measure: average_tb_brn_time_diff {
    type: average
    sql: ${tb_brn_time_diff} ;;
  }

  dimension: tb_brn_warehousing_sw {
    type: string
    sql: ${TABLE}.TB_BRN_WAREHOUSING_SW ;;
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
