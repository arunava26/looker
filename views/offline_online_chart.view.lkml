view: offline_online_chart {
  derived_table: {
      sql: SELECT OFF.TOTAL_ORDERS_DENOMINATOR,OFF.ORDERS_RELATED_TO_WEB_SEARCH_NUMERATOR,OFF.FISCAL_YEAR,OFF.FISCAL_MONTH,OFF.REGION,OFF.COUNTRY,OFF.FISCAL_WEEK,OFF.FISCAL_QUARTER, visitor, orderid from
              (select
              IL.COUNTRY AS COUNTRY,
              IL.REGION as REGION,
              substr(cast(IL.FISWEEKID as String),1,4) as FISCAL_YEAR,
              EXTRACT(QUARTER FROM ENTRYDT) as FISCAL_QUARTER ,
              EXTRACT(MONTH FROM ENTRYDT) as FISCAL_MONTH,
              EXTRACT(WEEK FROM ENTRYDT) as FISCAL_WEEK,
              COUNT(DISTINCT concat( il.COMPANYCD ,il.ORDERNBR, IL.ENTRYDT ) ) as TOTAL_ORDERS_DENOMINATOR
              ,COUNT(DISTINCT
              case when same_day.SKU is not null or previous_day.SKU is not null or twoprevious_days.SKU is not null then
              concat( il.COMPANYCD ,il.ORDERNBR, IL.ENTRYDT )
              else null end)
              as ORDERS_RELATED_TO_WEB_SEARCH_NUMERATOR
              , COUNT(DISTINCT
              case when same_day.SKU is not null or previous_day.SKU is not null or twoprevious_days.SKU is not null then
              concat( il.COMPANYCD ,il.ORDERNBR, IL.ENTRYDT )
              else null end)
              /
              case when COUNT(DISTINCT concat( il.COMPANYCD ,il.ORDERNBR, IL.ENTRYDT ) )=0 then 1 else COUNT(DISTINCT concat( il.COMPANYCD ,il.ORDERNBR, IL.ENTRYDT ) ) end
              as OFFLINE_CONVERSION_RATE
              from imsandboxpoc2.ODS_PROD.HI_INVOICELINE AS IL
              left join (
              select distinct Country, Ingram_Reseller_ID, PRODUCT_SKU
              ,case when STRPOS(PRODUCT_SKU,'_') = 3 then (split(PRODUCT_SKU, '_'))[safe_ordinal(2)] else PRODUCT_SKU end as SKU
              ,Dates
              ,b.ERP_COUNTRY_CODE
              from imsandboxpoc2.ODS_PROD.DW_ADOBE_ONLINE_SKUS as a
              left join `imsandboxpoc2.ODS_PROD.REF_ADOBE_ERP_MAPPING` as b on a.COUNTRY = b.Adobe_CountryName
              where Ingram_Reseller_ID <> ''
              and PRODUCT_SKU <> ''
              ) as same_day on IL.COMPANYCD = same_day.ERP_COUNTRY_CODE and rtrim(IL.SKU) = same_day.SKU and IL.BRANCHCUSTOMERNBR = same_day.INGRAM_RESELLER_ID and DATE(IL.ENTRYDT) = CAST(same_day.DATES AS DATE FORMAT 'MONTH DD, YYYY')
              left join (
              select distinct Country, Ingram_Reseller_ID, PRODUCT_SKU
              ,case when STRPOS(PRODUCT_SKU,'_') = 3 then (split(PRODUCT_SKU, '_'))[safe_ordinal(2)] else PRODUCT_SKU end as SKU
              ,Dates
              ,b.ERP_COUNTRY_CODE
              from imsandboxpoc2.ODS_PROD.DW_ADOBE_ONLINE_SKUS as a
              left join `imsandboxpoc2.ODS_PROD.REF_ADOBE_ERP_MAPPING` as b on a.COUNTRY = b.Adobe_CountryName
              where Ingram_Reseller_ID <> ''
              and PRODUCT_SKU <> ''
              ) as previous_day on IL.COMPANYCD = previous_day.ERP_COUNTRY_CODE and rtrim(IL.SKU) = previous_day.SKU and IL.BRANCHCUSTOMERNBR = previous_day.INGRAM_RESELLER_ID and DATE(DATE_ADD(IL.ENTRYDT, INTERVAL -1 DAY)) = CAST(previous_day.DATES AS DATE FORMAT 'MONTH DD, YYYY')
              left join (
              select distinct Country, Ingram_Reseller_ID, PRODUCT_SKU
              ,case when STRPOS(PRODUCT_SKU,'_') = 3 then (split(PRODUCT_SKU, '_'))[safe_ordinal(2)] else PRODUCT_SKU end as SKU
              ,Dates
              ,b.ERP_COUNTRY_CODE
              from imsandboxpoc2.ODS_PROD.DW_ADOBE_ONLINE_SKUS as a
              left join `imsandboxpoc2.ODS_PROD.REF_ADOBE_ERP_MAPPING` as b on a.COUNTRY = b.Adobe_CountryName
              where Ingram_Reseller_ID <> ''
              and PRODUCT_SKU <> ''
              ) as twoprevious_days on IL.COMPANYCD = twoprevious_days.ERP_COUNTRY_CODE and rtrim(IL.SKU) = twoprevious_days.SKU and IL.BRANCHCUSTOMERNBR = twoprevious_days.INGRAM_RESELLER_ID and DATE(DATE_ADD(IL.ENTRYDT, INTERVAL -2 DAY)) = CAST(twoprevious_days.DATES AS DATE FORMAT 'MONTH DD, YYYY')
              group by 1,2,3,4,5,6) AS OFF INNER JOIN
              (Select ERP_Region,Country,SUM( VISITS) as visitor, SUM(case when TRANSACTIONS >0 then VISITS else 0 end ) AS orderid,
              EXTRACT(YEAR FROM PARSE_DATE('%B %d, %Y', dates)) as YEAR,
              EXTRACT(QUARTER FROM PARSE_DATE('%B %d, %Y', dates)) as QUARTER,
              EXTRACT(MONTH FROM PARSE_DATE('%B %d, %Y', dates)) as MONTH,
              EXTRACT(WEEK FROM PARSE_DATE('%B %d, %Y', dates)) as WEEK
              from `imsandboxpoc2.ODS_PROD.DW_ADOBE_VISITS` as VISIT LEFT JOIN `imsandboxpoc2.ODS_PROD.REF_ADOBE_ERP_MAPPING` as MAPPING
              ON VISIT.COUNTRY=MAPPING.ERP_Country_Name
              group by 1,2,5,6,7,8
              ) AS ON1
              ON OFF.FISCAL_MONTH=ON1.MONTH and OFF.FISCAL_YEAR=CAST (ON1.YEAR AS STRING) and OFF.COUNTRY=ON1.COUNTRY and OFF.REGION=ON1.ERP_Region and OFF.FISCAL_QUARTER=ON1.QUARTER
              and OFF.FISCAL_WEEK=ON1.WEEK
               ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    measure: total_orders_denominator {
      type: sum
      sql: ${TABLE}.TOTAL_ORDERS_DENOMINATOR ;;
    }

    measure: orders_related_to_web_search_numerator {
      type: sum
      sql: ${TABLE}.ORDERS_RELATED_TO_WEB_SEARCH_NUMERATOR ;;
    }

    dimension: fiscal_year {
      type: string
      sql: ${TABLE}.FISCAL_YEAR ;;
    }

  dimension: fiscal_year_mm {
    type: string
    sql: concat(${fiscal_year},'-',${fiscal_month}) ;;
  }

    dimension: fiscal_month {
      type: number
      sql: ${TABLE}.FISCAL_MONTH ;;
    }

    dimension: region {
      type: string
      sql: ${TABLE}.REGION ;;
    }

    dimension: country {
      type: string
      sql: ${TABLE}.COUNTRY ;;
    }

    dimension: fiscal_week {
      type: number
      sql: ${TABLE}.FISCAL_WEEK ;;
    }

    dimension: fiscal_quarter {
      type: number
      sql: ${TABLE}.FISCAL_QUARTER ;;
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
      fields: [
        total_orders_denominator,
        orders_related_to_web_search_numerator,
        fiscal_year,
        fiscal_month,
        region,
        country,
        fiscal_week,
        fiscal_quarter,
        visitor,
        orderid
      ]
    }
  }
