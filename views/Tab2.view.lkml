view: tab2 {
  derived_table: {
    sql: WITH channel_wise as
      (
      (
      SELECT Region,
      Country,
      EXTRACT(YEAR from DATE(ENTRYDT)) as YEAR,
      concat("Q",EXTRACT(QUARTER from DATE(ENTRYDT))) as QUARTER,
      EXTRACT(MONTH from DATE(ENTRYDT)) as MONTH,
      EXTRACT(WEEK from DATE(ENTRYDT)) as WEEK,
      CASE WHEN ENTRYMETHOD = 'L' and TERMIDCD in ('WEBA','WEBO','LU6G','WEB2','HERM','WEBL')
      and BRANCHCUSTOMERNBR !='16' THEN 'WEB'
      WHEN ENTRYMETHOD = 'ZWEB' and BRANCHCUSTOMERNBR !='16' THEN 'WEB'
      WHEN TERMIDCD = 'VENP' and BRANCHCUSTOMERNBR !='16' THEN 'Vendor Portals'
      WHEN ENTRYMETHOD = 'O' and BRANCHCUSTOMERNBR !='16' THEN 'EDI'
      WHEN ENTRYMETHOD = 'L' and TERMIDCD in ('BTCH') and BRANCHCUSTOMERNBR !='16'
      THEN 'EDI'
      WHEN ENTRYMETHOD = 'ZEDI' and BRANCHCUSTOMERNBR !='16' THEN 'EDI'
      WHEN ENTRYMETHOD = 'L' and TERMIDCD in ('WEBX','LU6X') and BRANCHCUSTOMERNBR !='16'
      THEN 'XML'
      WHEN ENTRYMETHOD = 'ZXML' and BRANCHCUSTOMERNBR !='16' THEN 'XML'
      WHEN ENTRYMETHOD = 'L' and TERMIDCD in ('WEBS') and BRANCHCUSTOMERNBR !='16' THEN 'API'
      WHEN TERMIDCD = 'G360' and BRANCHCUSTOMERNBR !='16' THEN 'Manual Quote to Order'
      ELSE 'Manual Entry'
      END
      AS hi_invoiceline_sample_channel,
      COALESCE(SUM(EXTENDEDSALES * MULTIPLYBYFORUSD ), 0) AS revenue,
      count(distinct ORDERNBR) as number_of_orders,
      --count(distinct concat(COMPANYCD,MASTERBRCUSTNBR)) as num,
      count(distinct concat(COMPANYCD,ORDERNBR, ENTRYDT)) as num1,
      count(distinct concat(COMPANYCD,SKU)) as SKU,
      --count(distinct SKU) as SKU,
      count( distinct CATEGORY1) as GLOBAL_CATEGORY,
      --count( distinct VENDORKEY) as GLOBAL_VENDOR,
      count( distinct Vendor) as GLOBAL_VENDOR,
      --(SELECT COUNT(DISTINCT concat(COMPANYCD,MASTERBRCUSTNBR) ) FROM `ODS_PROD.HI_INVOICELINE`) AS TOTALCOUNT_DENOM
      FROM `ODS_PROD.HI_INVOICELINE`
      where FISYEARID = 2021
      group by 1,2,3,4,5,6,7
      )
      )
      select
      channel,
      Region,
      Country,
      YEAR,
      QUARTER,MONTH, WEEK, average_order_size,total_SKU_purchased, GLOBAL_CATEGORY,GLOBAL_VENDOR1, revenue,orders,
      num1/denom as resellers1
      from
      (



      select
      hi_invoiceline_sample_channel as channel,
      revenue as revenue,number_of_orders as orders,
      channel_wise.Region,
      Country,
      YEAR,
      QUARTER,
      MONTH,
      WEEK,
      (revenue/number_of_orders) as average_order_size, SKU as total_SKU_purchased, GLOBAL_CATEGORY as GLOBAL_CATEGORY,
      --sum(GLOBAL_VENDOR) as GLOBAL_VENDOR,
      GLOBAL_VENDOR as GLOBAL_VENDOR1, (num1) as num1,
      b.denom
      from channel_wise
      join





      (SELECT Region,COUNT(DISTINCT concat(COMPANYCD,MASTERBRCUSTNBR) ) as denom FROM `ODS_PROD.HI_INVOICELINE`
      group by 1
      having denom >0) b
      on
      channel_wise.Region = b.region





      )
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.Country ;;
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

  measure: average_order_size {
    type: average
    sql: ${TABLE}.average_order_size ;;
  }

  measure: total_sku_purchased {
    type: sum
    sql: ${TABLE}.total_SKU_purchased ;;
    html: @{big_money_format} ;;
  }

  dimension: global_category {
    type: number
    sql: ${TABLE}.GLOBAL_CATEGORY ;;
  }

  dimension: global_vendor1 {
    type: number
    sql: ${TABLE}.GLOBAL_VENDOR1 ;;
  }

  measure: revenue {
    type: sum
    sql: ${TABLE}.revenue ;;
    html: @{big_money_format};;
  }

  measure: orders {
    type: sum
    sql: ${TABLE}.orders ;;
    html: @{big_number_format};;
  }

  dimension: resellers1 {
    type: number
    sql: ${TABLE}.resellers1 ;;
  }

  set: detail {
    fields: [
      channel,
      region,
      country,
      year,
      quarter,
      month,
      week,
      average_order_size,
      total_sku_purchased,
      global_category,
      global_vendor1,
      revenue,
      orders,
      resellers1
    ]
  }
}
