# The name of this view in Looker is "Ods Order Eu Bid Info"
view: ods_order_eu_bid_info {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_ORDER_EU_BID_INFO`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bid Attn Nam" in Explore.

  dimension: bid_attn_nam {
    type: string
    sql: ${TABLE}.BID_ATTN_NAM ;;
  }

  dimension: bid_cmnt_2_line {
    type: string
    sql: ${TABLE}.BID_CMNT_2_LINE ;;
  }

  dimension: bid_eu_co_nam {
    type: string
    sql: ${TABLE}.BID_EU_CO_NAM ;;
  }

  dimension: bid_fax_nbr {
    type: string
    sql: ${TABLE}.BID_FAX_NBR ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
