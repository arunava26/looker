view: customer_matrix {
  derived_table: {
    sql: SELECT COUNTRY, ERP_REGION,
      EXTRACT(YEAR FROM PARSE_DATE('%B %d, %Y', dates)) as YEAR,
      CONCAT("Q",EXTRACT(QUARTER FROM PARSE_DATE('%B %d, %Y', dates))) as QUARTER,
      EXTRACT(MONTH FROM PARSE_DATE('%B %d, %Y', dates)) as MONTH,
      EXTRACT(WEEK FROM PARSE_DATE('%B %d, %Y', dates)) as WEEK,
      CONCAT( COUNTRY, INGRAM_RESELLER_ID) AS customer
      from `imsandboxpoc2.ODS_PROD.DW_ADOBE_VISITS_0330` as VISIT LEFT JOIN `imsandboxpoc2.ODS_PROD.REF_ADOBE_ERP_MAPPING` as MAPPING
      ON VISIT.COUNTRY=MAPPING.ERP_Country_Name
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: erp_region {
    type: string
    sql: ${TABLE}.ERP_REGION ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.MONTH ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.WEEK ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  measure: distinct_count_customer {
    type: count_distinct
    sql: ${TABLE}.customer ;;
    html: @{big_number_format} ;;
  }

  set: detail {
    fields: [
      country,
      erp_region,
      year,
      quarter,
      month,
      week,
      customer
    ]
  }
}
