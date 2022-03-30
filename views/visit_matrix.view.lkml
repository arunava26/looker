view: visit_matrix {
    derived_table: {
      sql: SELECT COUNTRY,FISCAL_YEAR,FISCAL_QUARTER,FISCAL_MONTH,FISCAL_WEEK,visits from (

      SELECT

      COUNTRY,

      EXTRACT(YEAR FROM PARSE_DATE('%B %d, %Y', dw_adobe_visits.dates)) as FISCAL_YEAR,

      CONCAT("Q",EXTRACT(QUARTER FROM PARSE_DATE('%B %d, %Y', dw_adobe_visits.dates))) as FISCAL_QUARTER ,

      EXTRACT(MONTH FROM PARSE_DATE('%B %d, %Y', dw_adobe_visits.dates)) as FISCAL_MONTH,

      EXTRACT(WEEK FROM PARSE_DATE('%B %d, %Y', dw_adobe_visits.dates)) as FISCAL_WEEK,



      FORMAT_DATE('%Y-%W', PARSE_DATE('%B %d, %Y', dw_adobe_visits.dates)) AS dw_adobe_visits_year_week,

      COALESCE(dw_adobe_visits.VISITS , 0) AS visits

      FROM `ODS_PROD.DW_ADOBE_VISITS_0330`

      AS dw_adobe_visits



      )
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
