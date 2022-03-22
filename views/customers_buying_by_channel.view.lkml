view: customers_buying_by_channel {
  derived_table: {
    sql: SELECT hi_invoiceline_sample.Country AS COUNTRY, hi_invoiceline_sample.Region AS REGION,
      EXTRACT(YEAR from DATE(hi_invoiceline_sample.ENTRYDT)) as YEAR,
      concat("Q",EXTRACT(QUARTER from DATE(hi_invoiceline_sample.ENTRYDT))) as QUARTER,
      EXTRACT(MONTH from DATE(hi_invoiceline_sample.ENTRYDT)) as MONTH,
      EXTRACT(WEEK from DATE(hi_invoiceline_sample.ENTRYDT)) as WEEK,
      CASE WHEN hi_invoiceline_sample.ENTRYMETHOD = 'L' and hi_invoiceline_sample.TERMIDCD in ('WEBA','WEBO','LU6G','WEB2','HERM','WEBL') and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'WEB'
      WHEN hi_invoiceline_sample.ENTRYMETHOD = 'ZWEB' and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'WEB'
      WHEN hi_invoiceline_sample.TERMIDCD = 'VENP' and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'Vendor Portals'
      WHEN hi_invoiceline_sample.ENTRYMETHOD = 'O' and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'EDI'
      WHEN hi_invoiceline_sample.ENTRYMETHOD = 'L' and hi_invoiceline_sample.TERMIDCD in ('BTCH') and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'EDI'
      WHEN hi_invoiceline_sample.ENTRYMETHOD = 'ZEDI' and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'EDI'
      WHEN hi_invoiceline_sample.ENTRYMETHOD = 'L' and hi_invoiceline_sample.TERMIDCD in ('WEBX','LU6X') and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'XML'
      WHEN hi_invoiceline_sample.ENTRYMETHOD = 'ZXML' and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'XML'
      WHEN hi_invoiceline_sample.ENTRYMETHOD = 'L' and hi_invoiceline_sample.TERMIDCD in ('WEBS') and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'API'
      WHEN hi_invoiceline_sample.TERMIDCD = 'G360' and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN 'Manual Quote to Order'
      WHEN hi_invoiceline_sample.ENTRYMETHOD = 'CMP' and left(hi_invoiceline_sample.BRANCHCUSTOMERNBR,2) not in ('16','IC') THEN hi_invoiceline_sample.CATEGORY1
      ELSE 'Manual Entry'
      END
      AS Channel,
      concat(hi_invoiceline_sample.COMPANYCD,hi_invoiceline_sample.MASTERBRCUSTNBR) AS company_concat,
      (SELECT COUNT(DISTINCT concat(COMPANYCD,MASTERBRCUSTNBR) ) FROM `ODS_PROD.HI_INVOICELINE`) AS TOTALCOUNT_DENOM
      FROM `ODS_PROD.HI_INVOICELINE`
      AS hi_invoiceline_sample
      ORDER BY
      6
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

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  measure: company_concat {
    type: count_distinct
    sql: ${TABLE}.company_concat ;;
  }

  dimension: totalcount_denom {
    type: number
    sql: ${TABLE}.TOTALCOUNT_DENOM ;;
  }

  set: detail {
    fields: [
      country,
      region,
      year,
      quarter,
      month,
      week,
      channel,
      company_concat,
      totalcount_denom
    ]
  }
}
