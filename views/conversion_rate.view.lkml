view: conversion_rate {
  derived_table: {
    sql: SELECT SKUS_VISITOR_ID,VISITS_VISITOR_ID,concat(OFF.YEAR,'-',OFF.MONTH) YEAR_MM, visitor, orderid from
      (SELECT SKUS_VISITOR_ID,VISITS_VISITOR_ID,MONTH,YEAR from `imsandboxpoc2.ODS_PROD.REF_OFFLINE_CONVERSION`) AS OFF INNER JOIN
      (Select SUM( VISITS) as visitor, SUM(case when TRANSACTIONS >0 then VISITS else 0 end ) AS orderid,
      FORMAT_DATE('%Y', PARSE_DATE('%B %d, %Y', dates)) as YEAR,
      FORMAT_DATE('%m', PARSE_DATE('%B %d, %Y', dates)) as MONTH from `imsandboxpoc2.ODS_PROD.DW_ADOBE_VISITS`
      where CAST(DATES AS DATE FORMAT 'MONTH DD, YYYY') > DATE_SUB(CURRENT_DATE(), INTERVAL 13 MONTH)
      group by 3,4
      ) AS ON1
      ON OFF.MONTH=ON1.MONTH and OFF.YEAR=ON1.YEAR
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: skus_visitor_id {
    type: sum
    sql: ${TABLE}.SKUS_VISITOR_ID ;;
  }

  measure: visits_visitor_id {
    type: sum
    sql: ${TABLE}.VISITS_VISITOR_ID ;;
  }

  dimension: year_mm {
    type: string
    sql: ${TABLE}.YEAR_MM ;;
  }

  measure: visitor {
    type: sum
    sql: ${TABLE}.visitor ;;
  }

  measure: orderid {
    type: sum
    sql: ${TABLE}.orderid ;;
  }

  set: detail {
    fields: [skus_visitor_id, visits_visitor_id, year_mm, visitor, orderid]
  }
}
