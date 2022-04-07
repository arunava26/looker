view: visit_matrix_IM {
  derived_table: {
    sql: SELECT COUNTRY,REGION,FISCAL_YEAR,FISCAL_QUARTER,FISCAL_MONTH,FISCAL_WEEK,visits
        FROM (
        SELECT
        MAP.ERP_Country_Name AS COUNTRY,
        MAP.ERP_REGION AS REGION,
        EXTRACT(YEAR
        FROM
        PARSE_DATE('%B %d, %Y',
        dw_adobe_visits.dates)) AS FISCAL_YEAR,
        CONCAT("Q",EXTRACT(QUARTER
        FROM
        PARSE_DATE('%B %d, %Y',
        dw_adobe_visits.dates))) AS FISCAL_QUARTER,
        EXTRACT(MONTH
        FROM
        PARSE_DATE('%B %d, %Y',
        dw_adobe_visits.dates)) AS FISCAL_MONTH,
        EXTRACT(WEEK
        FROM
        PARSE_DATE('%B %d, %Y',
        dw_adobe_visits.dates)) AS FISCAL_WEEK,
        FORMAT_DATE('%Y-%W', PARSE_DATE('%B %d, %Y',
        dw_adobe_visits.dates)) AS dw_adobe_visits_year_week,
        COALESCE(dw_adobe_visits.VISITS,
        0) AS visits
        FROM
        `ODSPROD.DW_ADOBE_CONVERSIONS` AS dw_adobe_visits
        LEFT JOIN
        `ODSPROD.REF_ADOBE_ERP_MAPPING` AS MAP
        ON
        dw_adobe_visits.COUNTRY = MAP.Adobe_CountryName )
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

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: fiscal_quarter {
    type: string
    sql: ${TABLE}.FISCAL_QUARTER ;;
  }

  dimension: fiscal_month {
    type: number
    sql: ${TABLE}.FISCAL_MONTH ;;
  }

  dimension: fiscal_week {
    type: number
    sql: ${TABLE}.FISCAL_WEEK ;;
  }

  measure: total_visits {
    type: sum
    sql: ${TABLE}.visits ;;
    html: @{big_number_format} ;;
  }

  set: detail {
    fields: [
      country,
      fiscal_year,
      fiscal_quarter,
      fiscal_month,
      fiscal_week

    ]
  }
}
