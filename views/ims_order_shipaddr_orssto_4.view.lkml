# The name of this view in Looker is "Ims Order Shipaddr Orssto 4"
view: ims_order_shipaddr_orssto_4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_ORDER_SHIPADDR_ORSSTO_4`
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

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: expanded_address {
    type: string
    sql: ${TABLE}.EXPANDED_ADDRESS ;;
  }

  dimension: geo_code_city {
    type: string
    sql: ${TABLE}.GEO_CODE_CITY ;;
  }

  dimension: geo_code_county {
    type: string
    sql: ${TABLE}.GEO_CODE_COUNTY ;;
  }

  dimension: geo_code_state {
    type: string
    sql: ${TABLE}.GEO_CODE_STATE ;;
  }

  dimension: line_of_addr {
    type: string
    sql: ${TABLE}.LINE_OF_ADDR ;;
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

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: track_addr_chg_1 {
    type: string
    sql: ${TABLE}.TRACK_ADDR_CHG_1 ;;
  }

  dimension: track_addr_chg_2 {
    type: string
    sql: ${TABLE}.TRACK_ADDR_CHG_2 ;;
  }

  dimension: track_addr_chg_3 {
    type: string
    sql: ${TABLE}.TRACK_ADDR_CHG_3 ;;
  }

  dimension: track_addr_chg_4 {
    type: string
    sql: ${TABLE}.TRACK_ADDR_CHG_4 ;;
  }

  dimension: track_addr_chg_5 {
    type: string
    sql: ${TABLE}.TRACK_ADDR_CHG_5 ;;
  }

  dimension: track_addr_chg_6 {
    type: string
    sql: ${TABLE}.TRACK_ADDR_CHG_6 ;;
  }

  dimension: track_addr_chg_7 {
    type: string
    sql: ${TABLE}.TRACK_ADDR_CHG_7 ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
