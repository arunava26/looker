# The name of this view in Looker is "Ods Order Ship to Addr"
view: ods_order_ship_to_addr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_ORDER_SHIP_TO_ADDR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Attn Phn Nbr" in Explore.

  dimension: attn_phn_nbr {
    type: string
    sql: ${TABLE}.ATTN_PHN_NBR ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
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

  dimension: rslr_emal_id {
    type: string
    sql: ${TABLE}.RSLR_EMAL_ID ;;
  }

  dimension: ship_addr_1_line {
    type: string
    sql: ${TABLE}.SHIP_ADDR_1_LINE ;;
  }

  dimension: ship_addr_2_line {
    type: string
    sql: ${TABLE}.SHIP_ADDR_2_LINE ;;
  }

  dimension: ship_addr_4_line {
    type: string
    sql: ${TABLE}.SHIP_ADDR_4_LINE ;;
  }

  dimension: ship_addr_5_line {
    type: string
    sql: ${TABLE}.SHIP_ADDR_5_LINE ;;
  }

  dimension: ship_addr_6_line {
    type: string
    sql: ${TABLE}.SHIP_ADDR_6_LINE ;;
  }

  dimension: ship_attn_nam {
    type: string
    sql: ${TABLE}.SHIP_ATTN_NAM ;;
  }

  dimension: ship_city_nam {
    type: string
    sql: ${TABLE}.SHIP_CITY_NAM ;;
  }

  dimension: ship_co_nam {
    type: string
    sql: ${TABLE}.SHIP_CO_NAM ;;
  }

  dimension: ship_ctry_cd {
    type: string
    sql: ${TABLE}.SHIP_CTRY_CD ;;
  }

  dimension: ship_post_cd {
    type: string
    sql: ${TABLE}.SHIP_POST_CD ;;
  }

  dimension: ship_st_pvnc_cd {
    type: string
    sql: ${TABLE}.SHIP_ST_PVNC_CD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
