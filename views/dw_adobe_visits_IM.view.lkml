# The name of this view in Looker is "Dw Adobe Visits"
view: dw_adobe_visits_IM {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODSPROD.DW_ADOBE_VISITS`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: dates {
    type: string
    sql: ${TABLE}.DATES ;;
  }

  dimension: dates_yyyy_mm {
    label:"Year Month"
    type: string
    sql: CONCAT(EXTRACT (YEAR FROM CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')),'-',case when ${month}<10 then concat("0",cast(${month} as string)) else cast(${month} as string) end ) ;;
  }

  dimension: month{
    type: number
    sql: EXTRACT (MONTH FROM CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')) ;;
  }

  dimension: quarter{
    type: number
    sql: EXTRACT (QUARTER FROM CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')) ;;
  }
  dimension: year{
    type: string
    sql: FORMAT_DATE('%Y', PARSE_DATE('%B %d, %Y', ${TABLE}.dates)) ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.PAGE_TYPE ;;
  }

  dimension: page_views {
    type: number
    sql: ${TABLE}.PAGE_VIEWS ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.REVENUE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
  }

  measure: average_revenue {
    type: average
    sql: ${revenue} ;;
  }

  dimension: site_name {
    type: string
    sql: ${TABLE}.SITE_NAME ;;
  }

  dimension: transactions {
    type: number
    sql: ${TABLE}.TRANSACTIONS ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.VISITOR_ID ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.VISITS ;;
  }

  measure: count {
    type: count
    drill_fields: [site_name]
  }

  measure:count_distinct_no_of_customer{
    type: count_distinct
    sql: concat( ${TABLE}.COUNTRY, ${TABLE}.VISITOR_ID) ;;
    #sql: case when CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY') > DATE_SUB(CURRENT_DATE(), INTERVAL 13 MONTH) then concat( ${country},${ingram_reseller_id}) else 0 end ;;
    html: @{big_number_format} ;;
  }


  measure: Visitor_sum {
    type: sum
    #sql: case when CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY') > DATE_SUB(CURRENT_DATE(), INTERVAL 13 MONTH) then ${visits} else 0 end ;;
    sql: ${visits} ;;
    html: @{big_number_format} ;;
  }
}
