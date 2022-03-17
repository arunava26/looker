# The name of this view in Looker is "Sales Mart"
view: sales_mart {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.SALES_MART`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Base Price" in Explore.

  dimension: base_price {
    type: number
    sql: ${TABLE}.BASE_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_base_price {
    type: sum
    sql: ${base_price} ;;
  }

  measure: average_base_price {
    type: average
    sql: ${base_price} ;;
  }

  dimension: bill_to_branch_nbr {
    type: string
    sql: ${TABLE}.BILL_TO_BRANCH_NBR ;;
  }

  dimension: bill_to_cust_nbr {
    type: string
    sql: ${TABLE}.BILL_TO_CUST_NBR ;;
  }

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: ccy_cd {
    type: string
    sql: ${TABLE}.CCY_CD ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: cust_ordr_nbr {
    type: string
    sql: ${TABLE}.CUST_ORDR_NBR ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  dimension: enty_dt {
    type: number
    sql: ${TABLE}.ENTY_DT ;;
  }

  dimension: enty_mthd {
    type: string
    sql: ${TABLE}.ENTY_MTHD ;;
  }

  dimension: im_part_nbr {
    type: string
    sql: ${TABLE}.IM_PART_NBR ;;
  }

  dimension: invc_br_nbr {
    type: string
    sql: ${TABLE}.INVC_BR_NBR ;;
  }

  dimension: invc_co_cd {
    type: string
    sql: ${TABLE}.INVC_CO_CD ;;
  }

  dimension: invc_dist_nbr {
    type: string
    sql: ${TABLE}.INVC_DIST_NBR ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: invc_invc_dt {
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
    sql: ${TABLE}.INVC_INVC_DT ;;
  }

  dimension: invc_ordr_nbr {
    type: string
    sql: ${TABLE}.INVC_ORDR_NBR ;;
  }

  dimension: invc_ship_nbr {
    type: string
    sql: ${TABLE}.INVC_SHIP_NBR ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: line_stus {
    type: string
    sql: ${TABLE}.LINE_STUS ;;
  }

  dimension: line_typ {
    type: string
    sql: ${TABLE}.LINE_TYP ;;
  }

  dimension: mstr_cust_nbr {
    type: string
    sql: ${TABLE}.MSTR_CUST_NBR ;;
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

  dimension: parent_cust_nbr {
    type: string
    sql: ${TABLE}.PARENT_CUST_NBR ;;
  }

  dimension: qty_bild {
    type: number
    sql: ${TABLE}.QTY_BILD ;;
  }

  dimension: qty_bord {
    type: number
    sql: ${TABLE}.QTY_BORD ;;
  }

  dimension: qty_orded {
    type: number
    sql: ${TABLE}.QTY_ORDED ;;
  }

  dimension: qty_shpd {
    type: number
    sql: ${TABLE}.QTY_SHPD ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  dimension: term_id {
    type: string
    sql: ${TABLE}.TERM_ID ;;
  }

  dimension: vend_nbr {
    type: string
    sql: ${TABLE}.VEND_NBR ;;
  }

  dimension: vend_part_nbr {
    type: string
    sql: ${TABLE}.VEND_PART_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
