view: customer_matrix_IM {
  derived_table: {
    sql: SELECT MAPPING.ERP_Country_Name, ERP_REGION,
      EXTRACT(YEAR FROM PARSE_DATE('%B %d, %Y', VISIT.dates)) as YEAR,
      CONCAT("Q",EXTRACT(QUARTER FROM PARSE_DATE('%B %d, %Y', VISIT.dates))) as QUARTER,
      EXTRACT(MONTH FROM PARSE_DATE('%B %d, %Y', VISIT.dates)) as MONTH,
      EXTRACT(WEEK FROM PARSE_DATE('%B %d, %Y', VISIT.dates)) as WEEK,
      CONCAT( VISIT.COUNTRY, MAPP.INGRAM_RESELLER_ID) AS customer
      from `imsandboxpoc2.ODS_PROD.DW_ADOBE_VISITS` as VISIT
      INNER JOIN (SELECT DATES, COUNTRY, SITE_NAME,VISITOR_ID, max(INGRAM_RESELLER_ID) AS INGRAM_RESELLER_ID
      FROM ODS_PROD.DW_ADOBE_VISITORID_MAPPING group by 1,2,3,4) AS MAPP ON
      MAPP.VISITOR_ID=VISIT.VISITOR_ID and MAPP.COUNTRY=VISIT.COUNTRY and MAPP.DATES=VISIT.DATES and MAPP.SITE_NAME=VISIT.SITE_NAME
      LEFT JOIN `imsandboxpoc2.ODS_PROD.REF_ADOBE_ERP_MAPPING` as MAPPING
      ON VISIT.COUNTRY=MAPPING.ADOBE_CountryName
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: erp_country_name {
    type: string
    sql: ${TABLE}.ERP_Country_Name ;;
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
      erp_country_name,
      erp_region,
      year,
      quarter,
      month,
      week,
      customer
    ]
  }
}
