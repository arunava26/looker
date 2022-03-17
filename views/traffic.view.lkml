view: traffic {
  derived_table: {
    sql: SELECT
      concat(
      EXTRACT (YEAR FROM CAST(dw_adobe_visits.DATES AS DATE FORMAT 'MONTH DD, YYYY')),'-',EXTRACT (MONTH FROM CAST(dw_adobe_visits.DATES AS DATE FORMAT 'MONTH DD, YYYY'))) as YEAR_MONTH,
      COUNT(DISTINCT customer_hierarchy_dimention.cust_nbr) AS no_of_customer,
      COUNT(DISTINCT dw_adobe_visits.VISITOR_ID ) AS no_of_visitor
      FROM `ODS_PROD.DW_ADOBE_VISITS`
      AS dw_adobe_visits
      LEFT JOIN `ODS_PROD.CUSTOMER_HIERARCHY_DIMENTION`
      AS customer_hierarchy_dimention ON dw_adobe_visits.INGRAM_RESELLER_ID = customer_hierarchy_dimention.cust_nbr
      group by YEAR_MONTH
      order by YEAR_MONTH
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: year_month {
    type: string
    sql: ${TABLE}.YEAR_MONTH ;;
  }

  measure: no_of_customer {
    type: sum
    sql: ${TABLE}.no_of_customer ;;
  }

  measure: no_of_visitor {
    type: sum
    sql: ${TABLE}.no_of_visitor ;;
  }

  set: detail {
    fields: [year_month, no_of_customer, no_of_visitor]
  }
}
